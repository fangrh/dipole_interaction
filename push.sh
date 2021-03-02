pandoc -s Lindblad.md -t html -H night.css --katex -o Lindblad.md.html --filter pandoc-crossref
git status
git add --all
git commit -m"Edit with typora"
git push

