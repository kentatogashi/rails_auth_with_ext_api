# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions



# 外部認証サーバと連携して、認証するための検証アプリ



## 補足

- gemライブラリ、モデルを使わない

- 任意のレスポンスを返す

- 閉じられたネットワークで、使用することを前提としている



## 認証ロジック

```ruby
#https://github.com/kentatogashi/rails_auth_with_ext_api/blob/master/app/controllers/sessions_controller.rb#L21-28
#外部認証サーバにemailとpasswordを渡して、認証する処理を書く。
#認証が成功した場合は、session[:email]を保存する
#引数を変える場合は、ビューも修正する
private
  def authenticate!(email, password)
    # todo: 認証サーバとの連携処理
    if email == 'hoge@example.com' && password == '20181120'
      session[:email] = email
      return true
    end
  end
```

## セッションの有効期限

```ruby
#https://github.com/kentatogashi/rails_auth_with_ext_api/blob/master/config/initializers/session_store.rb
#セッションの有効期限は、afterで管理する
after = 1.minutes
Rails.application.config.session_store :cookie_store, key: 'email', expire_after: after
```
