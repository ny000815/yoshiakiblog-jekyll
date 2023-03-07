search_text='<p>Placeholder text by <a href="http://spaceipsum.com/">Space Ipsum</a>. ' # 削除したい文章をここに指定
dir_path='./_posts/' # ファイルを検索するディレクトリのパス

# ディレクトリ内の全てのファイルを検索して、指定された文章を削除する
grep -rl "${search_text}" "${dir_path}" | xargs sed -i '' 's/'"${search_text//\//\\/}"'//g'

