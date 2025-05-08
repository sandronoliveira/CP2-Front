#!/bin/bash

echo "--- Upgrading pip, setuptools, wheel, cython ---"
pip install --upgrade pip setuptools wheel cython

echo "--- Installing PyCaret explicitly with dependencies ---"
# Attempt to install PyCaret and its core dependencies.
# Using --no-cache-dir to ensure fresh downloads/builds.
# Using --use-pep517 for modern build systems if applicable.
pip install --no-cache-dir --use-pep517 pycaret==3.0.0

echo "--- Installing/Verifying all dependencies from requirements.txt ---"
# This will ensure all other dependencies are met and versions are as specified.
pip install --no-cache-dir -r requirements.txt

echo "--- Setup script finished ---" 