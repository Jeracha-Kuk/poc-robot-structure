# poc-robot-structure
To poc the structure robot framework

========== Install python ==========

Install PIP
- Open the `Terminal` app via the Launchpad menu.
- In the Terminal window, type `brew install python` and press `Enter`.
- Check pip installed in your machine type `pip3 --version` and press `Enter`.
(should be python 3.xx)

Install virtual env each project
- python3 -m venv ${env} (`${env}` is folder that you prefer to set env to)
    for the example `python3 -m venv virtual_env/${project_name}` 
    Your virtual environment will be setup as intended. `${current_directory}/env/${project_name}`

========== Activating a virtual environment ==========

- In the Terminal window, type `source ${virtual_env_directory}/bin/activate` and press `Enter`.
- Checking the location of your Python interpreter `which python`

========== Installing packages ==========
- In the Terminal window, type `python3 -m pip install -r requirements.txt` and press `Enter`.

========== Command run robot ==========
- Run using a specific test scenario `robot -L trace -t "*TC_001*" test_cases/`
- Run a file test `robot -L trace test_cases/example.robot`
- Run by tags `robot -L trace -i ${tag_name} test_cases/`
- Run by without tags `robot -L trace -e ${tag_name} test_cases/`


========== Deactivating a virtual environment ==========
- In the Terminal window, type `deactivate` and press `Enter`.


========== Update python version ==========
Update PIP on a Mac
- Open the `Terminal` app.
- In the Terminal, type `python3 -m pip install –upgrade pip` and press `Enter`.
- Wait for the command to complete. If the latest version is installed, PIP will return a `requirement already satisfied` message.
- To check if the update was successful, type `pip –version` and press `Enter`.
- If the PIP version hasn’t changed, repeat the steps above.


========== Run test case parallel ========== 
- Install parallel library `pip install robotframework-pabot`
- Command to run parallel `pabot --testlevelsplit ${test_case_file_directory}`
    More information https://github.com/mkorpela/pabot/blob/main/README.md

