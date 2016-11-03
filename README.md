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

* Database creation

  ```
  $ cd [path_to_project]
  $ rake db:create
  ```

* Database initialization

  ```
  $ cd [path_to_project]
  $ rake db:migrate:reset
  ```

* Services (job queues, cache servers, search engines, etc.)

  ```
  $ cd [path_to_project]
  $ rails s
  ```

* Deployment instructions

  - chose language
    - If you want showing views on jap,  
      set url-params "local=ja"
      ex) http://localhost:3000/tests?locale=ja
    - if you showing vies on english,  
      set url-params "local=en"
      ex) http://localhost:3000/tests?locale=en
