import jester
import db_mysql
import os

proc setup(): void = 
  # DB接続設定取得
  let localhost = getEnv("coffe_sql_host")
  let user = getEnv("coffe_sql_user")
  let pass = getEnv("coffe_sql_pass")
  let db_name = getEnv("coffe_sql_db")
  
  # DBと接続
  let db = open(localhost, user, pass, db_name)
  # クエリ実行APIが完成してないので、一旦ここでクローズ
  # TODO：実行処理が中断した際に呼ばれるプロージャに実装する
  db.close()

proc main(): void =
  setup()
  routes:
    get "/":
      resp("Hello world")
    

if isMainModule:
  main()