# AV Events Agency — Book

`book.html` is the source; `AV_Events_Agency_Book.pdf` is the printed result (A4, 13 pages).

## Adding photos
- New season: save as `img/season/1.jpg` … `6.jpg`

Empty slots stay as beige placeholders until the file exists.

## Rebuilding the PDF
```sh
/opt/pw-browsers/chromium --headless --no-sandbox --no-pdf-header-footer \
  --virtual-time-budget=5000 --print-to-pdf=AV_Events_Agency_Book.pdf "file://$PWD/book.html"
```
