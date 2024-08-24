# frozen_string_literal: true

# Userクラスは、アプリケーションのユーザーを表すモデルです。
class User < ApplicationRecord
  # ユーザーのフルネームを返すメソッド
  def full_name
    'full name'
  end

  # 'hoge'という文字列を返すメソッド
  # 注: このメソッドの具体的な用途は不明です
  def hoge
    'hoge'
  end

  # 'fuga'という文字列を返すメソッド
  # 注: このメソッドの具体的な用途は不明です
  def fuga
    'fuga'
  end
end
