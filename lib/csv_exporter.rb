class CsvExporter

  require 'csv'
  require 'nkf'
  require 'kconv'

  def export_csv_shift_jis(function_number='0101',resources=nil)

    CSV.open("#{Rails.root}/public/#{function_number}.csv", "w",:row_sep => "\r\n", :force_quotes => true, :encoding => "SJIS") do |writer|
      writer << self.HD1
      writer << self.HD2
      writer << self.D01_01(function_number)
    end
  end

  def HD1
      row = [
                  "HD1",
                  "0001",
                  "要求コード",
                  "接続登録番号",
                  "接続登録番号技番",
                  "利用区分",
                  "加入者情報件数",
                  "#{Date.today.to_s.gsub('-', '')}",
                  "#{Time.now.strftime('%H%M%S')}"
                ]
    return row
  end

  def HD2
      row = [
                  "HD2",
                  "0002",
                  "加入者番号",
                  "EDI利用確認キー",
                  "処理情報レコード件数"　# 300 以下?
                ]
    return row
  end

  def D01_01(function_number='0101')
      row = [
                  "D01",
                  "#{function_number}",
                  "マニフェスト番号",
                  "簡易情報取得フラグ",
                  "EDIレコード識別番号",
                  "予約登録発行件数",
                  "引渡し日", #YYYYMMDD
# 排出事業場情報
                  "排出事業場名称",
                  "〒000-0000",
                  "都道府県",
                  "市区町村",
                  "町域",
                  "町域以降の所在地情報",
                  "電話番号",
###
                  "登録担当者",
                  "引渡し担当者",
# 廃棄物情報
                  "大分類コード",
                  "中分類コード",
                  "小分類コード",
                  "細分類コード",
                  "廃棄物の種類",
                  "廃棄物の名称",
                  "廃棄物の数量",
                  "数量単位コード",
                  "数量確定者コード",
                  "荷姿コード",
                  "荷姿の数量",
###
# 処分業者情報
                  "処分業者加入者番号",
  # 処分報告不要処分業者情報
                  "処分業者名",
                  "〒000-0000",
                  "都道府県",
                  "市区町村",
                  "町域名",
                  "町域以降の所在地情報",
                  "電話番号",
                  "FAX番号",
                  "処分業者統一許可番号",
                  "再委託先処分業者加入者番号",
  # 処分報告不要再委託処分業者情報
                  "再委託処分業者名",
                  "再委託〒000-0000",
                  "再委託都道府県",
                  "再委託市区町村",
                  "再委託町域名",
                  "再委託町域以降の所在地情報",
                  "再委託電話番号",
                  "再委託FAX番号",
                  "再委託処分業者統一許可番号",
###
                  "処分方法コード",
                  "予約登録マニフェスト修正権限コード",
                  "最終処分事業場記載フラグ",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  ""
                ]
    return row
  end

end
