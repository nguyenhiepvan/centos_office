# Centos with Libreoffice and many Fonts

Example docker-compose.yml

```yaml
version: "3"
services:
  centos:
    image: hiepnguyenva/centos_office:latest
    ports:
     - "8081:9999"
    volumes:
     - ./docs/:/docs/
    entrypoint: "java"
    command: "-jar /jodconverter/jodconverter_rest.jar --server.port=9999 --jodconverter.local.port-numbers=3000,3001"
```
Now go on http://localhost:9999/swagger-ui.html to inspect the available endpoints
## Tags

- latest : Centos 7 and Libreoffice 5
