cat <<EOF
<html>
  <head>
    <title> Subjective Immortality, by WH </title>
    <link rel="stylesheet" href="book.css">
  </head>
  <body>
EOF

echo "<p>Word count: "
cat book.html | wc -w
echo "</p>"

python3 generate_contents.py

cat <<EOF
  </body>
</html>
EOF
