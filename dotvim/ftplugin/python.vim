let b:ale_fixers = ['ruff', 'ruff_format']
let b:ale_linters = ['mypy', 'ruff', 'vulture']

let b:ale_python_mypy_use_global = 1
let b:ale_python_vulture_options = ["--min-confidence", "80"]
