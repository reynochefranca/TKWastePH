require "open3"

namespace :JWNET do

  desc "timer to JWNET"
  task :timer => :environment do

    if File.new(__FILE__).flock(File::LOCK_EX | File::LOCK_NB) == false
      puts '他のプロセスが実行中です'
      exit 1
    end

    Rake::Task["JWNET:send_request"].execute
    sleep(360)
    Rake::Task["JWNET:result_request"].execute
  end

  desc "send 'send_request' to JWNET"
  task :send_request => :environment do

    # 送信要求 csv 作成処理 ......
    # request_history_details から 送信候補のレコードを取得。
    # request_history_detail に紐付いている manifest を参照し、
    # csv ファイル書き出し & 書き出したcsvファイルの内容をrequest_history_detailsに同期。
    # request_history 作成かつ、上記制限を持った request_history_details と 紐付ける。
    # 上記までした前提

    # secrets.yml からパラメータ展開
    jwnet_params_send_request = Rails.application.secrets.jwnet_params["send_request"]

    will_send_request_history = RequestHistory.next_send_request

    # パラメータファイルの書き出し
    File.open("public/csv/send/#{will_send_request_history.id}.txt", "w") do |file|
      jwnet_params_send_request.each{|key, value|
        if key == 'LOCAL_FILE'
          file.print("#{key}=#{will_send_request_history.csv_file_path}\n")
        else
          file.print("#{key}=#{value}\n")
        end
      }
    end

    will_send_request_history.prmfile_path = "#{Rails.root}/public/csv/send/#{will_send_request_history.id}.txt"
    will_send_request_history.save

    Open3.popen3('/usr/local/zhostd/zclient.sh',"public/csv/send/#{will_send_request_history.id}.txt") do |stdin, stdout, stderr, wait_thr|

      stdin.close

      #標準出力
      stdout.each do |line|
        p line
      end

      #標準エラー
      stderr.each do |line|
        p line
      end

      p wait_thr.value

    end

    # if zclientステータス上エラーなし
    will_send_request_history.result_status = 1

    will_send_request_history.request_history_details.each do |request_history_detail|
      request_history_detail.send_request_flg = 1
      request_history_detail.save
    end
    # else
    #    will_send_request_history.result_status = 2
    #    will_send_request_history.request_history_details.each do |request_history_detail|
    #      request_history_detail.send_request_flg = 2
    #      request_history_detail.save
    #    end
    # end

    will_send_request_history.save

    # zclient エラーコード 一覧
      # “001” パラメータファイル無し
      # “002” パラメータファイル読み込みエラー
      # “003” パラメータファイル ID エラー
      # “004” 送受信ファイルオープンエラー
      # “005” TTC 区分エラー
      # “006” 相手センター確認コード設定エラー
      # “007” 当方センター確認コード設定エラー
      # “008” 接続先アドレス未設定
      # “009” TCP ポート番号設定エラー
      # “010” 転送モード設定エラー
      # “011” テキスト長設定エラー
      # “012” レコード長設定エラー
      # “013” 送信ファイルが存在しない
      # “014” 送信ファイルにデータが存在しない
      # “100” TCP/IP ソケット作成エラー
      # “101” 接続先アドレス変換エラー
      # “102” TCP/IP ソケットのディスクリプタエラー
      # “103” TCP/IP ソケットが既に進行中
      # “104” タイムアウトが発生した
      # “105” 接続が拒否された
      # “106” TCP/IP ソケットが、シャットダウンされた
      # “107” TCP/IP の、その他エラー
      # “201” 受信テキスト長エラー
      # “202” TTC 接続形態区分不一致
      # “203” TTC シーケンスエラー
      # “204” TTC レングスエラー
      # “205” 通信制御電文の電文区分エラー
      # “206” 相手センター確認コードエラー
      # “207” 当方センター確認コードエラー
      # “208” サービス時間帯エラー
      # “209” パスワードエラー
      # “210” アプリケーション ID エラー
      # “211” モードエラー
      # “212” モード変換エラー
      # “213” 通信制御電文のその他エラー
      # “214” 相手センター確認コード不一致
      # “215” 当方センター確認コード不一致
      # “216” パスワード不一致
      # “217” アプリケーション ID 不一致
      # “218” 転送モード不一致
      # “219” 通信制御電文拡張エリア不一致
      # “220” ファイル制御電文の電文区分エラー
      # “221” 全銀ファイル名エラー
      # “222” ファイルアクセスキーエラー
      # “223” テキスト数エラー
      # “224” レコード数エラー
      # “225” レコード長エラー
      # “226” 二重ファイル転送エラー
      # “227” センター側ファイル無しエラー
      # “228” レコード ID エラー
      # “229” データ圧縮エラー
      # “230” ファイル制御電文のその他エラー
      # “231” 全銀ファイル名不一致
      # “232” ファイルアクセスキー不一致
      # “233” テキスト件数不一致
      # “234” レコード件数不一致
      # “235” レコード ID 不一致
      # “236” レコード長不一致
      # “237” 再送指定区分不一致
      # “238” データ圧縮 ID 不一致
      # “239” ファイル補助情報不一致
      # “240” ファイル制御電文拡張エリア不一致
      # “241” データ圧縮・復元エラー
      # “242” 最大テキスト長オーバ
      # “243” 通信年月日時分秒エラー
      # “245” 規定外の電文区分コードを受信した
      # “246” TTC 電文区分エラー
      # “900” 送受信ファイルオープンエラー
      # “901” 送受信ファイルが他のプロセスで使用中
      # “902” 送信ファイル読込エラー
      # “903” 受信ファイル書き込みエラー
      # “904” 送受信ファイルの排他制御エラー
      # “998” 子プロセスの生成エラー
      # “999” フェーズエラー(プログラム内部エラー)

  end

  desc "send 'result_request' to JWNET"
  task :result_request => :environment do

    # 結果要求 csv 作成処理 ......
    # request_history_details から 送信候補のレコードを取得。
    # request_history_detail に紐付いている manifest を参照し、
    # csv ファイル書き出し & 書き出したcsvファイルの内容をrequest_history_detailsに同期。
    # request_history 作成かつ、上記制限を持った request_history_details と 紐付ける。
    # 上記までした前提

    # secrets.yml からパラメータ展開
    jwnet_params_send_request = Rails.application.secrets.jwnet_params["result_request"]

    will_send_request_history = RequestHistory.next_result_request

    # パラメータファイルの書き出し
    File.open("public/csv/result/#{will_send_request_history.id}.txt", "w") do |file|
      jwnet_params_send_request.each{|key, value|
        if key == 'LOCAL_FILE'
          file.print("#{key}=#{will_send_request_history.csv_file_path}\n")
        else
          file.print("#{key}=#{value}\n")
        end
      }
    end

    will_send_request_history.prmfile_path = "#{Rails.root}/public/csv/result/#{will_send_request_history.id}.txt"
    will_send_request_history.save

    Open3.popen3('/usr/local/zhostd/zclient.sh',"public/csv/send/#{will_send_request_history.id}.txt") do |stdin, stdout, stderr, wait_thr|

      stdin.close

      #標準出力
      stdout.each do |line|
        p line
      end

      #標準エラー
      stderr.each do |line|
        p line
      end

      p wait_thr.value

    end

    # if zclientステータス上エラーなし
    will_send_request_history.result_status = 1

    will_send_request_history.request_history_details.each do |request_history_detail|
      request_history_detail.send_request_flg = 1
      request_history_detail.save
    end
    # else
    #    will_send_request_history.result_status = 2
    #    will_send_request_history.request_history_details.each do |request_history_detail|
    #      request_history_detail.send_request_flg = 2
    #      request_history_detail.save
    #    end
    # end

    will_send_request_history.save

    # zclient エラーコード 一覧
      # “001” パラメータファイル無し
      # “002” パラメータファイル読み込みエラー
      # “003” パラメータファイル ID エラー
      # “004” 送受信ファイルオープンエラー
      # “005” TTC 区分エラー
      # “006” 相手センター確認コード設定エラー
      # “007” 当方センター確認コード設定エラー
      # “008” 接続先アドレス未設定
      # “009” TCP ポート番号設定エラー
      # “010” 転送モード設定エラー
      # “011” テキスト長設定エラー
      # “012” レコード長設定エラー
      # “013” 送信ファイルが存在しない
      # “014” 送信ファイルにデータが存在しない
      # “100” TCP/IP ソケット作成エラー
      # “101” 接続先アドレス変換エラー
      # “102” TCP/IP ソケットのディスクリプタエラー
      # “103” TCP/IP ソケットが既に進行中
      # “104” タイムアウトが発生した
      # “105” 接続が拒否された
      # “106” TCP/IP ソケットが、シャットダウンされた
      # “107” TCP/IP の、その他エラー
      # “201” 受信テキスト長エラー
      # “202” TTC 接続形態区分不一致
      # “203” TTC シーケンスエラー
      # “204” TTC レングスエラー
      # “205” 通信制御電文の電文区分エラー
      # “206” 相手センター確認コードエラー
      # “207” 当方センター確認コードエラー
      # “208” サービス時間帯エラー
      # “209” パスワードエラー
      # “210” アプリケーション ID エラー
      # “211” モードエラー
      # “212” モード変換エラー
      # “213” 通信制御電文のその他エラー
      # “214” 相手センター確認コード不一致
      # “215” 当方センター確認コード不一致
      # “216” パスワード不一致
      # “217” アプリケーション ID 不一致
      # “218” 転送モード不一致
      # “219” 通信制御電文拡張エリア不一致
      # “220” ファイル制御電文の電文区分エラー
      # “221” 全銀ファイル名エラー
      # “222” ファイルアクセスキーエラー
      # “223” テキスト数エラー
      # “224” レコード数エラー
      # “225” レコード長エラー
      # “226” 二重ファイル転送エラー
      # “227” センター側ファイル無しエラー
      # “228” レコード ID エラー
      # “229” データ圧縮エラー
      # “230” ファイル制御電文のその他エラー
      # “231” 全銀ファイル名不一致
      # “232” ファイルアクセスキー不一致
      # “233” テキスト件数不一致
      # “234” レコード件数不一致
      # “235” レコード ID 不一致
      # “236” レコード長不一致
      # “237” 再送指定区分不一致
      # “238” データ圧縮 ID 不一致
      # “239” ファイル補助情報不一致
      # “240” ファイル制御電文拡張エリア不一致
      # “241” データ圧縮・復元エラー
      # “242” 最大テキスト長オーバ
      # “243” 通信年月日時分秒エラー
      # “245” 規定外の電文区分コードを受信した
      # “246” TTC 電文区分エラー
      # “900” 送受信ファイルオープンエラー
      # “901” 送受信ファイルが他のプロセスで使用中
      # “902” 送信ファイル読込エラー
      # “903” 受信ファイル書き込みエラー
      # “904” 送受信ファイルの排他制御エラー
      # “998” 子プロセスの生成エラー
      # “999” フェーズエラー(プログラム内部エラー)

  end

end
