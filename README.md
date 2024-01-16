# User Management Script

## Overview
This Bash script facilitates user management on a Linux system. It provides options to create users, delete users, and modify their permissions within specific user groups.

## Features
- **Create Users:** Easily create new user accounts with default read-only permissions.
- **Modify Permissions:** Option to change user permissions to either read/write/execute or read/write.
- **Delete Users:** Remove existing user accounts from the system.

## Usage
1. Run the script in a terminal: `./user_management.sh`
2. Choose an option from the menu:
   - 1: Create Users
   - 2: Delete Users
   - 3: Exit

### Creating Users
- Enter the desired username.
- By default, the user is added to the 'Visiter' group with read-only permissions.
- Choose to modify permissions or proceed with the default.

### Modifying Permissions
- Choose 'Yes' when prompted to change permissions.
- Select the desired permission level:
  - 1: Read/Write/Execute
  - 2: Read/Write

### Deleting Users
- Enter the username to delete.
- The script checks if the user exists and deletes it if found.

## Notes
- Ensure the script is executed with appropriate permissions (e.g., using `sudo`).
- Use caution when deleting users to avoid unintended data loss.

## Author
Maulik Savaliya

## License
This script is open-source and available under the [MIT License](LICENSE).
