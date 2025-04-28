# RooFlow justfile
# Run tasks with: just <task-name>

# Install RooFlow from a specified repository path
install repo_path:
    #!/usr/bin/env bash
    echo "Installing RooFlow from: {{repo_path}}"
    if [ ! -d "{{repo_path}}" ]; then
        echo "Error: Repository path does not exist or is not a directory"
        exit 1
    fi
    
    # Copy configuration files
    cp -r "{{repo_path}}/config" ./
    
    # Run the variables script based on platform
    if [[ "$OSTYPE" == "darwin"* || "$OSTYPE" == "linux"* ]]; then
        ./config/insert-variables.sh
    elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "win"* ]]; then
        ./config/insert-variables.cmd
    else
        echo "Unknown platform, please run the appropriate script manually:"
        echo "./config/insert-variables.sh (Linux/Mac)"
        echo "./config/insert-variables.cmd (Windows)"
    fi
    
    echo "RooFlow installed successfully"