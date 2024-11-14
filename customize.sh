if [ -e /my_product/etc/permissions/oplus.product.feature_multimedia_unique.xml ]; then
    ui_print "found $source"
else
    abort "File not found!"
fi

chmod 755 $MODPATH/post-fs-data.sh
