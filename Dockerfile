# Dockerfile
FROM ruby:3.2.2-bullseye

# 必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim lsof

# 作業ディレクトリを設定
WORKDIR /myapp

# GemfileとGemfile.lockをコピー
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# Gemをインストール
RUN gem install bundler -v 2.3.22 && bundle install

# アプリケーションのソースコードをコピー
COPY . /myapp

# endpoint.shをコピーして実行権限を付与
COPY entrypoint.sh /myapp/entrypoint.sh
RUN chmod 755 /myapp/entrypoint.sh

# ENTRYPOINTを設定
# ENTRYPOINT ["/myapp/entrypoint.sh"]

# サーバーを起動
# CMD ["rails", "server", "-b", "0.0.0.0"]
