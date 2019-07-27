# ベースとなるイメージを指定する
FROM ruby:2.5

# コンテナ上のワーキングディレクトリを指定する
WORKDIR /usr/src/

# ディレクトリやファイルをコピーする
# 左側がホストのディレクトリ、右側がコンテナ上のディレクトリ
COPY ./sample.rb /usr/src/sample.rb

# "docker build"時に実行される処理
RUN echo "building..."

# "docker run"実行時に実行される処理
CMD ruby sample.rb

