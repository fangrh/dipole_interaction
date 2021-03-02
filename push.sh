pandoc Lindblad.md -t html -c night.css --katex -o Lindblad.md.html --filter pandoc-crossref
git status
git add --all
git commit -m"Edit with typora"
git push

