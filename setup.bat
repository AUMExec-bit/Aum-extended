@echo off 
python3.9 -m venv .aumenv 
if not defined VIRTUAL_ENV ( 
    echo Activating virtual environment... 
    call .aumenv\Scripts\activate 
) 
pip install -U pip 
pip install pip-audit 
pip-audit -r requirements.txt 
pip install -r requirements.txt 
