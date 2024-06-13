# CodeCommit Password Management Script

This script is designed to manage passwords for AWS CodeCommit accounts using the macOS Keychain.

## Features

- Allows users to add and delete internet passwords for AWS CodeCommit accounts.
- Supports both development and production CodeCommit accounts.
- Utilizes environment variables to store account names and passwords securely.
- Provides feedback messages upon successful addition of Keychain entries.

## Prerequisites

- macOS operating system.
- `security` command-line utility (included with macOS).
- AWS CodeCommit account credentials.
- Environment variables set:
  - `DEV_ACCOUNT_NAME`: Development CodeCommit account username.
  - `DEV_PASSWORD`: Development CodeCommit account password.
  - `PROD_ACCOUNT_NAME`: Production CodeCommit account username.
  - `PROD_PASSWORD`: Production CodeCommit account password.

## Usage

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/jeyabaskar2/code-commit.git
   ```

2. Set the environment variables with your CodeCommit account credentials:

   ```
    export DEV_ACCOUNT_NAME="dev_account_username"
    export DEV_PASSWORD="dev_account_password"
    export PROD_ACCOUNT_NAME="prod_account_username"
    export PROD_PASSWORD="prod_account_password"

   ```

3. Permission for execute the script
   ```
   $ chmod +x code-commit.sh
   ```
4. Run the script:
   ```
   $ ./manage_codecommit_passwords.sh
   
   ```
