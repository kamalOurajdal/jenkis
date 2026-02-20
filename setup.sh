#!/bin/bash

# Local Development Setup Script for OC Microservices
# This script sets up a service for local development with oc_lib

set -e

# Create virtual environment
echo "Creating virtual environment..."
python3.10 -m venv venv
echo "Virtual environment created"
echo ""

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate
echo "Virtual environment activated"
echo ""

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip --quiet
echo "Pip upgraded"
echo ""


# Install service dependencies
echo "Installing service dependencies..."
pip install -r requirements.txt
echo "Dependencies installed"

echo ""
echo "========================================"
echo "Setup complete for OC Microservices!"
echo "========================================"
echo ""
echo "To activate the virtual environment:"
echo "  source venv/bin/activate"
echo ""
echo "To run the service:"
echo "python application.py run"
echo ""
echo "To deactivate when done:"
echo "  deactivate"
echo ""

