# Global repository for Moodle and Opencast integration with Docker

![alt text](https://github.com/mugenulnar/docker-connection-moodle-opencast/blob/main/README/docker-moodle-opencast-elk.png?raw=true)

This is the global view of how this project will going to work.

Nginx service must be the first that starts because it have the network main definition. So the rest of the services depends on that config.