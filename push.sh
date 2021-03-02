pandoc Lindblad.md -t html  --katex -o Lindblad.md.html --filter pandoc-crossref -s
git status
git add --all
git commit -m"Edit with typora"
git push

