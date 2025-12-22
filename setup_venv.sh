#!/usr/bin/env bash
set -e

# ---- Configuration ----
PYTHON_BIN=python3.9
VENV_NAME=.venv-d4m

# ---- Sanity check ----
if ! command -v $PYTHON_BIN >/dev/null 2>&1; then
  echo "ERROR: $PYTHON_BIN not found."
  echo "Install Python 3.9 first (e.g. via pyenv or brew)."
  exit 1
fi

# ---- Create venv ----
echo "Creating virtual environment: $VENV_NAME"
$PYTHON_BIN -m venv $VENV_NAME

# ---- Activate ----
source $VENV_NAME/bin/activate

# ---- Upgrade tooling ----
pip install --upgrade pip setuptools wheel

# ---- Install dependencies ----
if [ -f pyproject.toml ]; then
  pip install .
elif [ -f requirements.txt ]; then
  pip install -r requirements.txt
else
  echo "No pyproject.toml or requirements.txt found."
fi

# ---- Editable install (recommended for fork work) ----
pip install -e .

echo
echo "Virtual environment ready."
echo "Activate with:"
echo "  source $VENV_NAME/bin/activate"
