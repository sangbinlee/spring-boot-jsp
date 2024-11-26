# 문제 해결

### 1 실행
실행시 문제점:

* spring.profiles.active=local



### 1 실행
실행시 문제점: http://localhost:8080/college/form.jsp
"Path with "WEB-INF" or "META-INF": [WEB-INF/views/form.jsp]"

* ㅇㅇㅇㅇ
* [Spring Boo




"Path with "WEB-INF" or "META-INF": [WEB-INF/views/form.jsp]"










### Guides
The following guides illustrate how to use some features concretely:

* [Creating a Batch Service](https://spring.io/guides/gs/batch-processing/)
* [Caching Data with Spring](https://spring.io/guides/gs/caching/)

### Additional Links
These additional references should also help you:

* [Gradle Build Scans – insights for your project's build](https://scans.gradle.com#gradle)

### Docker Compose support
This project contains a Docker Compose file named `compose.yaml`.
In this file, the following services have been defined:

* mariadb: [`mariadb:latest`](https://hub.docker.com/_/mariadb)
* mysql: [`mysql:latest`](https://hub.docker.com/_/mysql)
* oracle: [`gvenzl/oracle-free:latest`](https://hub.docker.com/r/gvenzl/oracle-free)
* postgres: [`postgres:latest`](https://hub.docker.com/_/postgres)
* sqlserver: [`mcr.microsoft.com/mssql/server:latest`](https://mcr.microsoft.com/en-us/product/mssql/server/about/)

Please review the tags of the used images and set them to the same as you're running in production.

## JTE

This project has been configured to use [JTE precompiled templates](https://jte.gg/pre-compiling/).

However, to ease development, those are not enabled out of the box.
For production deployments, you should remove

```properties
gg.jte.development-mode=true
```

from the `application.properties` file and set

```properties
gg.jte.use-precompiled-templates=true
```


# spring-boot-jsp
