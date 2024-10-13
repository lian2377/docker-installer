# Docker Automatic Installation Script

This script installs Docker on any Linux distribution that uses the `apt` package manager, including both Debian and Ubuntu. It automatically detects the system type and downloads the appropriate Docker GPG key and repository.

## Prerequisites

Before running the script, ensure that your system meets the following requirements:
- You have `sudo` privileges on the machine.
- You have a stable internet connection.

## How to Use

1. **Download the script**:

    Clone the repository or copy the script to your local machine.

2. **Make the script executable**:

    ```bash
    chmod +x install_docker.sh
    ```

3. **Run the script**:

    To execute the script, run the following command:

    ```bash
    ./install_docker.sh
    ```

    The script will automatically:
    - Update the package list.
    - Install necessary dependencies (e.g., `curl`, `ca-certificates`, `gnupg`).
    - Download and add Docker's official GPG key.
    - Configure the Docker APT repository.
    - Install Docker packages, including Docker Engine, CLI, and other plugins.

4. **Verify Docker Installation**:

    After the installation is complete, you can check if Docker was installed correctly by running:

    ```bash
    sudo docker version
    ```

    You should see the installed Docker version details.

## Supported Systems

This script supports the following operating systems:
- **Debian** (all versions supported by Docker)
- **Ubuntu** (all versions supported by Docker)

## Troubleshooting

If you encounter any issues during the installation, consider checking:
- Your network connection.
- Whether you have the appropriate `sudo` permissions.
- The compatibility of your operating system with Docker.

To remove Docker, you can follow the official Docker uninstallation guide: [Docker Docs - Uninstall](https://docs.docker.com/engine/install/ubuntu/#uninstall-docker-engine).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
