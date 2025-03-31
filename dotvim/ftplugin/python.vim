let b:ale_fixers = ['autoflake', 'black', 'isort', 'ruff', 'ruff_format']
let b:ale_linters = ['bandit', 'mypy', 'pylint', 'ruff', 'vulture']

let b:ale_python_pylint_options = '--pythonpath $(dirname %s)'
let b:ale_python_mypy_options = '--show-error-codes --python-executable $(dirname %s)/venv/bin/python'
