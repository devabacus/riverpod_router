python -m venv env
.\env\Scripts\Activate.ps1


python -m pip freeze > requirements.txt
pip install -r requirements.txt
