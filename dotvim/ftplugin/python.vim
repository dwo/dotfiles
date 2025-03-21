let b:ale_fixers = ['autoflake', 'black', 'isort', 'ruff', 'ruff_format']
let b:ale_linters = ['bandit', 'mypy', 'pylint', 'ruff', 'vulture']

let b:ale_python_pylint_options = '--pythonpath $(dirname %s)'
