# Pythonのバージョンを3.11.3として指定
FROM python:3.11.3-slim

# ソースコードをコンテナ内の/appディレクトリにコピー
WORKDIR /app
COPY . /app

# 必要なライブラリをインストール
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8501

# Streamlitの起動コマンドを指定
CMD ["streamlit", "run", "main.py"]
