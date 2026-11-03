#!/bin/bash

set -euo pipefail

# Получение параметров, значений по умолчанию
SITE_NAME="${1:-mysite}"
SITE_VERSION="${2:-1.0.0}"
OUTPUT="/var/www/html/index.html"

# Убедитесь, что каталог существует
mkdir -p "$(dirname "$OUTPUT")"

# Генерация HTML
cat > "$OUTPUT" <<EOF
<!DOCTYPE html>
<html>
<head><title>$SITE_NAME</title></head>
<body>
    <h1>Site: $SITE_NAME, Version: $SITE_VERSION</h1>
    <p>Generated on: $(date -u '+%Y-%m-%d %H:%M:%S UTC')</p>
</body>
</html>
EOF

echo "Site generated successfully at $OUTPUT"
