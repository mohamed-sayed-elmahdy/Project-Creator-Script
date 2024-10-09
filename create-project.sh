#!/bin/bash

# Check if a folder name was provided
if [ -z "$1" ]; then
  echo "يرجى إدخال اسم المشروع"
  exit 1
fi

# إنشاء مجلد باسم المشروع
mkdir "$1"
cd "$1" || exit

# إنشاء ملف index.html
cat > index.html <<EOL
<!DOCTYPE html>
<html lang="ar">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>$1</title>
</head>
<body>
  <h1>welcome to $1 project!</h1>
  <script src="main.js"></script>
</body>
</html>
EOL

# إنشاء ملف style.css
cat > style.css <<EOL
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  text-align: center;
}
EOL

# إنشاء ملف main.js
cat > main.js <<EOL
console.log("welcome to $1 project");
EOL

# تأكيد إنشاء المشروع بنجاح
echo "'$1' project has been successfully created"


# نفتح المشروع في VS Code
code .