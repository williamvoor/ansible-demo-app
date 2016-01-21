Ansible Hello World Demo Application
---

Ansible playbooks that deploys a war packaged web-app into a Tomcat server and sets up an NGINX reverse proxy to route requests via https.

The playbooks are copied into a Docker container and executed on "localhost".

Building and Running with Docker
---

```
docker build -t williamvoor/webserver .
docker run -p 80:80 -p 443:443 -ti williamvoor/webserver
```

Accessing web app
---

Landing page: http://localhost (contains link to wepapp)

Caveats
---
The Docker init scripts sleeps for sometime so that the container does not exit immediatelly after the playbooks finishes executing. This is necessary becauseboth Tomcat and NGINX are started as daemon processes, while Docker is meant to run only one process per container, in the foreground.

The -ti option is added to "docker run" so that we can interactivelly see the playbook execution logs.
