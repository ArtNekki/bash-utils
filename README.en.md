# Bash Utils

Collection of reusable bash scripts designed to streamline DevOps workflows and automate common development tasks.
## Features

This collection includes the following scripts:

- **act.sh**: Automate GitHub Actions workflows locally using Act.
- **logger.sh**: Provide colorful and informative logging for your scripts.
- **ssh-connect.sh**: Simplify SSH connections with server availability checks.

These scripts are designed to be easily understood, modified, and incorporated into your projects,
whether you're a seasoned DevOps engineer or a developer looking to automate repetitive tasks.

## Usage

### act.sh

This script allows you to run GitHub Actions workflows locally using Act.

```bash
./act.sh <WORKFLOW> <CONFIG_NAME>
```

* `<WORKFLOW>`: The name of the workflow file in `.github/workflows/`.
* `<CONFIG_NAME>`: The Doppler configuration name to use for secrets.

Example:

```bash
./act.sh main.yml prod
```

### logger.sh

This script provides a logging function with color support and icons. It can be sourced in other scripts.

```bash
source ./logger.sh
log "INFO" "This is an info message"
log "SUCCESS" "This is a success message"
log "WARNING" "This is a warning message"
log "ERROR" "This is an error message"
```

### ssh-connect.sh

This script simplifies SSH connections with server availability checks.

```bash
./ssh-connect.sh <CONFIG_NAME>
```

* `<CONFIG_NAME>`: The Doppler configuration name to use for retrieving the SSH_HOST.

Example:

```bash
./ssh-connect.sh prod
```

## Integration

You can use these scripts in your projects in several ways:

1. **Direct Copy**: Copy the needed scripts into your project.
2. **Git Submodule**: Add this repository as a submodule in your project:

   ```bash
   git submodule add https://github.com/ArtNekki/bash-utils.git scripts
   git submodule update --init --recursive
   ```

3. **Clone the Repository**: Clone the entire repository if you need all scripts:

   ```bash
   git clone https://github.com/ArtNekki/bash-utils.git
   ```

## Requirements

* Bash shell
* Doppler CLI (for act.sh and ssh-connect.sh)
* Act (for act.sh)
* SSH client (for ssh-connect.sh)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
