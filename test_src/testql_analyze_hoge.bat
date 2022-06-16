set CUR_DIR=%~dp0
chcp 65001
codeql\codeql.cmd database analyze qldb\testql myql --format=sarifv2.1.0 --output=qldb\testql_hoge.sarif -j 0
