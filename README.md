# Application Environment Setup/Teardown Script

This repository contains a bash script for setting up and tearing down an application environment.

## File Structure

- `assist.sh`: The main script that handles the setup and teardown process.
- `lib/bootstrap.sh`: A library script that is sourced by `assist.sh`.
- `packages/brew.txt`: A list of Homebrew packages to be installed.
- `packages/casks.txt`: A list of Homebrew casks to be installed.

## Usage

1. Clone the repository.
2. Navigate to the repository directory.
3. Run the `assist.sh` script.

```bash
./assist.sh