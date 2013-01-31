export ARCH=arm
export SUBARCH=arm

rm zip_template/kernel/zImage
rm zip_template/supernatural.zip
cp arch/arm/boot/zImage zip_template/kernel/
rm -fr zip_template/system/lib/modules/*
find . -name "*\.ko" -exec cp {} zip_template/system/lib/modules/ \;

cd zip_template
zip -r9 supernatural.zip *
cd ..
echo "zip_template/supernatural.zip created"
