== README

# TKwaste_manifest
Tokuda &amp; Kondo waste manifest project

* Ruby version
  - 2.3.0 ~

* System dependencies
  - mysql(>=5.5.53)

* Configuration
  - language
    - default set japanese
  - time_zone
    - set JST

  - Database
    - make 'config/database.yml' yourself.  
      Then reference 'config/database.yml.org'.

  - secret_keys
    - make 'config/secrets.yml' yourself.  
      Then reference  [this](http://guides.rubyonrails.org/4_1_release_notes.html).

* Database creation

  ```bash
  $ cd [path_to_project]
  $ rake db:create # only first time.
  $ rake db:migrate # every time at the timing of pull.
  ```

* Database initialization

  ```bash
  $ cd [path_to_project]
  $ rake db:migrate:reset
  ```

* Services (job queues, cache servers, search engines, etc.)

  ```bash
  $ cd [path_to_project]
  $ rails s
  ```

* Deployment instructions

  - create user
   ```bash
   $ rails c # enter rails console mode
   irb(main):001:0> user = User.new({email: 'test@example.com', password: 'password', password_confirmation: 'password'}) # email and password are any string is ok.
   ```

  - chose language
    - If you want showing views on jap,  
      set url-params "local=ja"  
      ex) http://localhost:3000/tests?locale=ja
    - if you showing vies on english,  
      set url-params "local=en"  
      ex) http://localhost:3000/tests?locale=en

* Known problems
   - ~~DEPRECATION WARNING: Sprockets method `register_engine` is deprecated.~~

   - ~~DEPRECATION WARNING: You are using the a deprecated processor interface Less::Rails::ImportProcessor.~~

* JWNET rake タスク
  - JWNET への各要求処理を行う rakeタスク 及び crontab を開発中...

  - set up
    - secrets.yml の更新
      - secrets.yml.org 参照のこと
  - crontab 登録    
    `$ whenever -s 'environment=development' --update-crontab`

  - rake task の詳細
    - `$ rake -vT` で一覧表示できる
      - `$ rake JWNET:timer` でタイマー付きのJWNETへの送信処理を実行
        - `$ rake JWNET:send_request` で「送信要求」処理のみ実行
        - `$ rake JWNET:result_request` で「結果要求」処理のみ実行
        
