#!/sbin/sh

base="/sdcard/media/0/multirom"


mkdir -p "$base"
chown root:root "$base"
chmod 770 "$base"

mkdir "$base/roms"
chown media_rw:media_rw "$base/roms"
chmod 777 "$base/roms"

touch "$base/.nomedia"
chown media_rw:media_rw "$base/.nomedia"

rm "$base/boot.img-ubuntu"*
rm "$base/infos/"*
rm "$base/res/"*
cp -r /tmp/multirom/* "$base/"

