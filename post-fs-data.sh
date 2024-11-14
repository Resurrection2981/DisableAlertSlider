#!/system/bin/sh

SOURCE_FILE="/my_product/etc/permissions/oplus.product.feature_multimedia_unique.xml"
DEST_FILE="${0%/*}/oplus.product.feature_multimedia_unique.xml"

mkdir -p $(dirname $DEST_FILE)
cp -f "$SOURCE_FILE" "$DEST_FILE"

sed -i '/alert_slider/ s/^/<!-- /; s/$/ -->/' "$DEST_FILE"

mount -o ro,bind "$DEST_FILE" "$SOURCE_FILE"
