#!/usr/bin/env bash
set -e

SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/nova-lang"

echo "UNIVERSAL DRAGON - Pi5 NOVA Installer"
echo "Source: $SRC"
echo "Dest  : $DEST"

mkdir -p "$DEST/backups"

if [ -f "$DEST/nova.py" ]; then
  cp "$DEST/nova.py" "$DEST/backups/pi5_nova_before_termux_sync_$(date +%Y%m%d_%H%M%S).py"
  echo "Old Pi5 nova.py backed up."
fi

cp -r "$SRC/." "$DEST/"

cat > /tmp/nova_launcher <<'BASH'
#!/usr/bin/env bash
exec python3 "$HOME/nova-lang/nova.py" "$@"
BASH

sudo mv /tmp/nova_launcher /usr/local/bin/nova
sudo chmod +x /usr/local/bin/nova
chmod +x "$DEST/nova.py"

python3 -m py_compile "$DEST/nova.py"

echo "Pi5 NOVA installed from Termux sync pack."
nova version
nova doctor || true
