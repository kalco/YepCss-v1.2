@echo off
 
set "result=yepcss.less"
 
>"%result%" (
for /f "delims=" %%i in ('2^>nul dir/a-d/b *.less') do @(
 if "%%i" neq "%result%" (
  <"%%i" more
 )
)
)

copy yepcss.less ..\yepcss.less

exit/b 0
