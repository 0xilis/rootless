echo generating files at $(pwd)
bzip2 -k ./Packages
xz -k ./Packages
zstd -q -c19 Packages > Packages.zst

echo building...
echo Packages MD5SUM: $(md5 ./Packages | sed "s/\MD5 (.\/Packages) = //g")
PackagesMD5Sum=$(md5 ./Packages | sed "s/\MD5 (.\/Packages) = //g")
echo Packages SHA1: $(shasum ./Packages | sed "s/\  .\/Packages//g")
PackagesSHA1=$(shasum ./Packages | sed "s/\  .\/Packages//g")
echo Packages SHA256: $(shasum -a 256 ./Packages | sed "s/\  .\/Packages//g")
PackagesSHA256=$(shasum -a 256 ./Packages | sed "s/\  .\/Packages//g")
PackagesFileSize=$(wc -c "./Packages" | awk '{print $1}')
echo Packages.bz2 MD5SUM: $(md5 ./Packages.bz2 | sed "s/\MD5 (.\/Packages.bz2) = //g")
PackagesBZ2MD5Sum=$(md5 ./Packages.bz2 | sed "s/\MD5 (.\/Packages.bz2) = //g")
echo Packages.bz2 SHA1: $(shasum ./Packages.bz2 | sed "s/\  .\/Packages.bz2//g")
PackagesBZ2SHA1=$(shasum ./Packages.bz2 | sed "s/\  .\/Packages.bz2//g")
echo Packages.bz2 SHA256: $(shasum -a 256 ./Packages.bz2 | sed "s/\  .\/Packages.bz2//g")
PackagesBZ2SHA256=$(shasum -a 256 ./Packages.bz2 | sed "s/\  .\/Packages.bz2//g")
PackagesBZ2FileSize=$(wc -c "./Packages.bz2" | awk '{print $1}')
echo Packages.xz MD5SUM: $(md5 ./Packages.xz | sed "s/\MD5 (.\/Packages.xz) = //g")
PackagesXZMD5Sum=$(md5 ./Packages.xz | sed "s/\MD5 (.\/Packages.xz) = //g")
echo Packages.xz SHA1: $(shasum ./Packages.xz | sed "s/\  .\/Packages.xz//g")
PackagesXZSHA1=$(shasum ./Packages.xz | sed "s/\  .\/Packages.xz//g")
echo Packages.xz SHA256: $(shasum -a 256 ./Packages.xz | sed "s/\  .\/Packages.xz//g")
PackagesXZSHA256=$(shasum -a 256 ./Packages.xz | sed "s/\  .\/Packages.xz//g")
PackagesXZFileSize=$(wc -c "./Packages.xz" | awk '{print $1}')
echo Packages.zst MD5SUM: $(md5 ./Packages.zst | sed "s/\MD5 (.\/Packages.zst) = //g")
PackagesZSTMD5Sum=$(md5 ./Packages.zst | sed "s/\MD5 (.\/Packages.zst) = //g")
echo Packages.zst SHA1: $(shasum ./Packages.zst | sed "s/\  .\/Packages.zst//g")
PackagesZSTSHA1=$(shasum ./Packages.zst | sed "s/\  .\/Packages.zst//g")
echo Packages.zst SHA256: $(shasum -a 256 ./Packages.zst | sed "s/\  .\/Packages.zst//g")
PackagesZSTSHA256=$(shasum -a 256 ./Packages.zst | sed "s/\  .\/Packages.zst//g")
PackagesZSTFileSize=$(wc -c "./Packages.zst" | awk '{print $1}')
echo "Origin: Snoolie's repo\nLabel: Snoolie's repo\nSuite: stable\nVersion: 1.0\nCodename: ios\nArchitectures: iphoneos-arm64\nComponents: main\nDescription: (Rootless) Repository for my tweaks\nMD5Sum:\n $PackagesMD5Sum $PackagesFileSize Packages\n $PackagesBZ2MD5Sum $PackagesBZ2FileSize Packages.bz2\n $PackagesXZMD5Sum $PackagesXZFileSize Packages.xz\n $PackagesZSTMD5Sum $PackagesZSTFileSize Packages.zst\nSHA1:\n $PackagesSHA1 $PackagesFileSize Packages\n $PackagesBZ2SHA1 $PackagesBZ2FileSize Packages.bz2\n $PackagesXZSHA1 $PackagesXZFileSize Packages.xz\n $PackagesZSTSHA1 $PackagesZSTFileSize Packages.zst\nSHA256:\n $PackagesSHA256 $PackagesFileSize Packages\n $PackagesBZ2SHA256 $PackagesBZ2FileSize Packages.bz2\n $PackagesXZSHA256 $PackagesXZFileSize Packages.xz\n $PackagesZSTSHA256 $PackagesZSTFileSize Packages.zst" >> ./Release

