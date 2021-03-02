pandoc Lindblad.md -c night.css -t html  --katex -o Lindblad.md.html --filter pandoc-crossref -s
git status
git add --all
git commit -m"Edit with typora"
git push

