@echo off

REM Script to download and install Imperial's safe_dataset_checker from
REM https://github.com/ImperialCollegeLondon/safe_dataset_checker

REM This should work as long as conda is installed. To see if this is the case,
REM start a command prompt and write "conda". If you get an error message
REM instead of a help display, it's not installed properly.

REM See if it's already working
call activate dataset_checker
if errorlevel 1 (

call conda env create --file georgie_dataset_env.yaml

call activate dataset_checker

git clone https://github.com/ImperialCollegeLondon/safe_dataset_checker

echo.
echo.
echo "safe_dataset_checker" is now downloaded and its requirements satisfied. To try it out, open a command prompt in the new directory just created within this one, then type:
echo.
echo activate dataset_checker
echo python ./safe_dataset_checker.py -h
echo.
echo You should get a friendly message if it worked. 

) else (

echo Seems like it's already installed. If you're having trouble, run
echo.
echo conda env remove --name dataset_checker
echo.
echo Then run this file again

)

echo.
echo.
pause