
# youtube-dl のあるフォルダ
youtube_dl=$(cd $(dirname $0); cd ../; pwd)

# ブランチを fork に戻しておく
#git checkout fork

# バージョン
version=`python ${youtube_dl}/youtube_dl/__main__.py --version`

# ハッシュ
hash=$(cd $(dirname $0); cd ../; git rev-parse --short HEAD)

# ファイル名
filename=youtube-dl-${version}-fork-${hash}

# Windows 向けビルド
# pyinstaller youtube_dl/__main__.py --onefile --name youtube-dl
python ${youtube_dl}/setup.py py2exe

# Zip にしてまとめる
7z a -mmt=on -mx=9 ${youtube_dl}/build/${filename}.zip ${youtube_dl}/build/youtube-dl/

# Linux (macOS) 向けビルド
wsl make youtube-dl

# Zip にしてまとめる
mv ${youtube_dl}/youtube-dl ${youtube_dl}/build/linux/youtube-dl/youtube-dl
7z a -mmt=on -mx=9 ${youtube_dl}/build/${filename}-linux.zip ${youtube_dl}/build/linux/youtube-dl/
