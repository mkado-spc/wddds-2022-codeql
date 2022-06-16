set CUR_DIR=%~dp0
chcp 65001
codeql\codeql.cmd database analyze qldb\testql windows_driver_mustfix.qls --format=sarifv2.1.0 --output=qldb\testql.sarif -j 0
