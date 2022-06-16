set CUR_DIR=%~dp0
chcp 65001
mkdir qldb
rmdir /s /q qldb\testql
codeql\codeql.cmd database create -l=cpp -s=test_src\testql -c "msbuild /t:rebuild "%CUR_DIR%\testql\testql.sln" /p:UseSharedCompilation=false /p:configuration=Release /p:Platform="x64"" "qldb\testql" -j 0
