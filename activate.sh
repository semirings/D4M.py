#!/usr/bin/env bash

# ---- Configuration ----
VENV_DIR=".venv-d4m"

# ---- Helper ----
echo_active() {
  echo "Activated virtual environment:"
  echo "  VIRTUAL_ENV=$VIRTUAL_ENV"
  echo "  PYTHON=$(which python)"
  echo "  PYTHON_VERSION=$(python --version)"
}

# ---- Check if venv exists ----
if [ ! -d "$VENV_DIR" ]; then
  echo "ERROR: Virtual environment '$VENV_DIR' not found."
  echo "Run setup_venv.sh first."
  return 1 2>/dev/null || exit 1
fi

# ---- Check if already active ----
if [ -n "$VIRTUAL_ENV" ]; then
  if [[ "$VIRTUAL_ENV" == *"$VENV_DIR" ]]; then
    echo "Virtual environment already active."
    echo_active
    return 0 2>/dev/null || exit 0
  else
    echo "WARNING: A different virtual environment is active:"
    echo "  VIRTUAL_ENV=$VIRTUAL_ENV"
    echo "Deactivate it first if this is unintended."
    return 1 2>/dev/null || exit 1
  fi
fi

# ---- Activate ----
# shellcheck disable=SC1090
source "$VENV_DIR/bin/activate"

echo "Virtual environment activated."
echo_active
