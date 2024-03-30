# header
cat <<EOF
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <link rel="stylesheet" href="style.css">
    <title>Subjective Immortality</title>
  </head>
  <body>
  <div class="wrapper">
EOF

# Title
cat <<EOF
    <div class="c11"></div>
    <div class="c12">
      <h1 style="color:#FFFFF4">Subjective <br> Immortality</h1>
      <p style="margin:20px; font-family: monospace; color: white;">W Harwood, <a href="mailto:harwood.will@gmail.com">harwood.will@gmail.com</a>
        <br>March, 2024. <i>Book coming, possibly</i> 
      </p>
    </div>
    <div class="c13"></div>

    <div class="c21"></div>
    <div class="c22">
EOF

# Sections
# Updates: headings, italics, paragraphs
cat subjective_immortality.md | \
    sed 's/^## \(.*\)/<h2><em>\1<\/em><\/h2>/' | \
    sed 's/^# \(.*\)/<\/div><div class="c23"><\/div><div class="c31"><\/div><div class="c32"><h1 style="color:#FFFFF4"><em>\1<\/em><\/h1><\/div><div class="c33"><\/div><div class="c21"><\/div><div class="c22">/' | \
    sed 's/^$/<p>/' | \
    sed 's/_\([^_]*\)_/<i>\1<\/i>/g'

# Footer
cat <<EOF
  </div>
  <div class="c23"></div>

  <div class="c51" style="height:100px;"></div>
  <div class="c52" style="height:100px;"></div>
  <div class="c53" style="height:100px;"></div>

  </div>
  </body>
</html>
EOF
