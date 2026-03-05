#!/bin/bash
echo "🚀 Jupyter対応のセットアップを開始します..."

# 1. 仮想環境の作成
python3 -m venv .venv
source .venv/bin/activate

# 2. pipの更新とライブラリのインストール
pip install --upgrade pip
pip install -r requirements.txt

# 3. Jupyterにこの仮想環境を登録する (名前を 'venv' に設定)
python -m ipykernel install --user --name=venv --display-name "Python (.venv)"

# 4. .envの準備
if [ -f ".env.example" ]; then
    cp .env.example .env
fi

echo "✅ 完了しました！"
echo "💡 Cursor/VS Codeで .ipynb ファイルを開き、右上から 'Python (.venv)' を選択してください。"
