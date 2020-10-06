find -type f -name "*.tex" > file_list.txt && \
find -type f -name "*.pdf" >> file_list.txt
xargs -a file_list.txt git add
git commit -m "modified"
git push origin master

