@echo off

REM Script to download and install Imperial's safe_dataset_checker from
REM https://github.com/ImperialCollegeLondon/safe_dataset_checker

REM This should work as long as conda is installed. To see if this is the case,
REM start a command prompt and write "conda". If you get an error message
REM instead of a help display, it's not installed properly.

call conda env create --file georgie_dataset_env.yaml

call activate dataset_checker

git clone https://github.com/ImperialCollegeLondon/safe_dataset_checker

echo safe_dataset_checker is now downloaded and its requirements satisfied. To try it out, open a command prompt in the new directory just created within this one, then type "python ./safe_dataset_checker.py -h". You should get a friendly message. 

pause