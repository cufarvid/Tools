set /p mac=<%~dp0mac.txt
btcom -b %mac% -c -s1124
btcom -b %mac% -r -s1124
