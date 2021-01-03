FROM python:3.8

# pythonのイメージ上で/var/wwwディレクトリを作成
RUN mkdir /var/www
# 作業ディレクトリとして/var/wwwを指定
WORKDIR /var/www

# ローカルにあるrequirements.txtを作業ディレクトリ(/var/www)内にコピー
COPY requirements.txt ./

# Pythonライブラリインストール
RUN pip install --upgrade pip && \
    pip install -r requirements.txt