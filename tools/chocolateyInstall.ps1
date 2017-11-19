$packageName = 'nginx'
$url = 'https://www.nginx.org/download/nginx-1.12.1.zip'
$checksum = 'B1FAA6CB4DDE1AF57304BC69A1456F62BAD3BB6BDC7CDA8DE17A1833574E2725'
$checksumType = 'sha256'
$toolsDir = "C:\Program Files\nginx"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
Invoke-Expression "nssm install nginx 'C:\Program Files\nginx\nginx-1.12.1\nginx.exe'"
Start-Service nginx