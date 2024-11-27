# 문제 해결

### 1 실행
실행시 문제점:

* spring.profiles.active=local



### 1 실행
실행시 문제점: http://localhost:8080/college/form.jsp


* case 1  - 문제 없어짐

		"Path with "WEB-INF" or "META-INF": [WEB-INF/views/form.jsp]"

* case 2

		Whitelabel Error Page
		This application has no explicit mapping for /error, so you are seeing this as a fallback.
		Thu Nov 28 01:15:22 KST 2024
		There was an unexpected error (type=Not Found, status=404).
		JSP file [/college/form.jsp] not found












### Guides
@GetMapping에 jsp로 끝나면 호출이 안됨:

	@GetMapping("/form.jsp")// 호출 안됨
	@GetMapping("/form.jsps")// 호출 됨 :





### jsp 직접 호출하기
* /src/main/webapp 폴더와 하위 폴더는 url로 직접 접근 가능함(jsp, html, css):
* /src/main/webapp/WEB-INF 폴더는 url로 직접 접근 불가:


	└─webapp
	    │  common.css
	    │  index.html
	    │  index.jsp
	    │  test.jsp
	    │
	    ├─sub1
	    │      sub.css
	    │      sub.html
	    │      sub.jsp

	http://localhost:8080/common.css
	http://localhost:8080/index.html
	http://localhost:8080/index.jsp
	http://localhost:8080/sub1/sub.css
	http://localhost:8080/sub1/sub.html
	http://localhost:8080/sub1/sub.jsp


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
