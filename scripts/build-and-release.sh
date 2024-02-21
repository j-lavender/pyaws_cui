#!/bin/bash
# A simple bash script to build the project. 
# Meant to be run from the root of the project directory.

# Exit on error
set -e

# Clear the dist/ directory
echo "Clearing the dist/ directory..."
rm -rf dist/*

# Ensure build dependencies are installed
echo "Installing application dependencies..."
pip install -r requirements.txt
echo "Installing development dependencies..."
pip install -r requirements_dev.txt

# Run the build
echo "Building the package..."
python3 -m build

# Show the contents of the dist/ directory
echo "Contents of the dist/ directory:"
ls -lah dist/
echo " "
echo "-----------------------------------"
echo " "

# Print the contents of the TAR file
echo "Contents of the TAR file:"
tar -tvf dist/*.tar.gz
echo " "
echo "-----------------------------------"
echo " "

# Print the contents of the WHEEL file
echo "Contents of the WHEEL file:"
unzip -l dist/*.whl
echo " "
echo "-----------------------------------"
echo " "

# Prompt the user to upload the package to test.pypi.org
read -p "Do you want to upload to TestPyPi? (y/n) " test_upload_answer

# Check the user's answer
case $test_upload_answer in
    [Yy]* ) python3 -m twine upload --repository testpypi dist/*;;
    [Nn]* ) echo "You chose not to upload.";;
    * ) echo "Invalid input.";;
esac

# # Prompt the user to upload the package to pypi.org
# read -p "Do you want to upload to PyPi? (y/n) " pypi_upload_answer

# # Check the user's answer
# case $pypi_upload_answer in
#     [Yy]* ) python3 -m twine upload dist/*;;
#     [Nn]* ) echo "You chose not to upload.";;
#     * ) echo "Invalid input.";;
# esac