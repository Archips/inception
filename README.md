# Inception

This project involves setting up a comprehensive infrastructure within a virtual machine using Docker Compose. It encompasses several services, each running in dedicated containers, and adheres to specific guidelines for performance and security. The core components include NGINX with TLSv1.2 or TLSv1.3, WordPress with php-fpm, MariaDB, and the necessary volumes and networks to support these services.

Here is the exepected architecture:  

![architecture-inception](https://github.com/Archips/inception_42/blob/main/inception_architecture.png)

## Highlights

- **Virtual Machine Environment:** The project is designed to be executed within a virtual machine, ensuring isolation and control over the development environment.

- **Docker Compose:** Docker Compose is utilized to orchestrate the deployment of various services, simplifying the setup and management of containers.

- **Custom Docker Images:** You are required to create custom Docker images for each service using your own Dockerfiles, avoiding the use of pre-built images from DockerHub (except for Alpine/Debian).

- **Containerized Services:** Each service operates in its own container, enhancing isolation and maintainability.

- **Performance Optimization:** Containers should be built using either Alpine or Debian, focusing on performance and efficiency.

- **NGINX with TLS:** NGINX is configured to work with either TLSv1.2 or TLSv1.3 exclusively, ensuring secure communication.

- **WordPress and MariaDB:** The project includes WordPress with php-fpm and MariaDB, forming a functional web application stack.

- **Volume Management:** Volumes are used to store the WordPress database and website files, making data persist across container restarts.

- **Network Configuration:** Docker networks are established to facilitate communication between containers.

- **Automatic Container Restarts:** Containers are configured to automatically restart in case of a crash, ensuring high availability.

- **User Management:** The WordPress database must have two users, with restrictions on the administrator's username for security reasons.

- **Domain Configuration:** The domain name "login.42.fr" is configured to point to the local IP address, simplifying access to the web application.

- **Security Best Practices:** The project adheres to security best practices, including no presence of passwords in Dockerfiles and the use of environment variables for configuration.

## Usage

1. Clone the project repository to your local machine.
2. Ensure you have a virtual machine environment set up.
3. Place all the configuration files in the "srcs" folder.
4. Create a ".env" file in the root of the "srcs" directory to store environment variables.
5. Use the provided Makefile to build and configure the Docker containers.
6. Access the web application via the NGINX container, which serves as the entry point, using port 443 and TLSv1.2 or TLSv1.3 protocol.
7. Make sure to adhere to the project guidelines for username restrictions and other requirements.

By following these steps, you can deploy a secure and efficient infrastructure for hosting a WordPress web application within a virtual machine environment using Docker containers.

## Complete tutorial

[Yet another inception](https://cute-balance-43f.notion.site/Yet-another-inception-7cf30420f7374f11adbe9f2b6d0dfe07)

## Author

[Archibald Thirion](https://github.com/Archips)
