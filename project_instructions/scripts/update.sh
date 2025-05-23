#!/bin/bash

# Instructor Project Update Script
# This script downloads the latest version of the project from GitHub
# and updates the current directory without requiring git
#
# Usage:
#   curl -sSL https://raw.githubusercontent.com/PadsterH2012/Instructors/main/project_instructions/scripts/update.sh | bash
#   or
#   bash <(curl -sSL https://raw.githubusercontent.com/PadsterH2012/Instructors/main/project_instructions/scripts/update.sh)

set -e  # Exit on any error

# Configuration
REPO_URL="https://github.com/PadsterH2012/Instructors"
BRANCH="main"
TEMP_DIR="/tmp/instructor_update_$$"
BACKUP_DIR="./backup_$(date +%Y%m%d_%H%M%S)"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to cleanup temporary files
cleanup() {
    if [ -d "$TEMP_DIR" ]; then
        print_status "Cleaning up temporary files..."
        rm -rf "$TEMP_DIR"
    fi
}

# Set trap to cleanup on exit
trap cleanup EXIT

# Check if required tools are available
check_dependencies() {
    print_status "Checking dependencies..."
    
    if ! command -v curl &> /dev/null; then
        print_error "curl is required but not installed. Please install curl and try again."
        exit 1
    fi
    
    if ! command -v unzip &> /dev/null; then
        print_error "unzip is required but not installed. Please install unzip and try again."
        exit 1
    fi
    
    print_success "All dependencies are available."
}

# Create backup of existing files
create_backup() {
    if [ -f "project_instructions/README.md" ] || [ -d "project_instructions" ]; then
        print_status "Creating backup of existing files..."
        mkdir -p "$BACKUP_DIR"
        
        # Copy existing project files to backup
        if [ -d "project_instructions" ]; then
            cp -r project_instructions "$BACKUP_DIR/" 2>/dev/null || true
        fi
        
        print_success "Backup created at: $BACKUP_DIR"
    else
        print_status "No existing project files found, skipping backup."
    fi
}

# Download and extract the latest version
download_and_extract() {
    print_status "Downloading latest version from GitHub..."
    
    # Create temporary directory
    mkdir -p "$TEMP_DIR"
    
    # Download the repository as ZIP
    ZIP_URL="${REPO_URL}/archive/refs/heads/${BRANCH}.zip"
    print_status "Downloading from: $ZIP_URL"
    
    if ! curl -sSL "$ZIP_URL" -o "$TEMP_DIR/repo.zip"; then
        print_error "Failed to download repository from GitHub."
        exit 1
    fi
    
    print_success "Download completed."
    
    # Extract the ZIP file
    print_status "Extracting files..."
    cd "$TEMP_DIR"
    
    if ! unzip -q repo.zip; then
        print_error "Failed to extract downloaded files."
        exit 1
    fi
    
    # Find the extracted directory (should be Instructors-main)
    EXTRACTED_DIR=$(find . -maxdepth 1 -type d -name "Instructors-*" | head -n 1)
    
    if [ -z "$EXTRACTED_DIR" ]; then
        print_error "Could not find extracted repository directory."
        exit 1
    fi
    
    print_success "Files extracted successfully."
    
    # Return to original directory
    cd - > /dev/null
    
    # Copy files to current directory
    print_status "Updating project files..."
    
    # Copy all files from the extracted directory to current directory
    cp -r "$TEMP_DIR/$EXTRACTED_DIR"/* . 2>/dev/null || true
    cp -r "$TEMP_DIR/$EXTRACTED_DIR"/.[^.]* . 2>/dev/null || true
    
    print_success "Project files updated successfully."
}

# Verify the update
verify_update() {
    print_status "Verifying update..."
    
    if [ -f "project_instructions/README.md" ]; then
        print_success "Update verification passed - project_instructions/README.md found."
    else
        print_warning "Update verification failed - project_instructions/README.md not found."
        return 1
    fi
    
    if [ -f "project_instructions/scripts/update.sh" ]; then
        print_success "Update script is available for future updates."
    fi
}

# Main execution
main() {
    print_status "Starting Instructor Project Update..."
    print_status "Repository: $REPO_URL"
    print_status "Branch: $BRANCH"
    print_status "Target directory: $(pwd)"
    echo
    
    check_dependencies
    create_backup
    download_and_extract
    verify_update
    
    echo
    print_success "Update completed successfully!"
    
    if [ -d "$BACKUP_DIR" ]; then
        print_status "Your previous files have been backed up to: $BACKUP_DIR"
    fi
    
    print_status "You can now use the updated project files."
    echo
    print_status "To update again in the future, run:"
    echo "  curl -sSL https://raw.githubusercontent.com/PadsterH2012/Instructors/main/project_instructions/scripts/update.sh | bash"
}

# Run main function
main "$@"
