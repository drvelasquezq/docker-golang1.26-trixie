# puede visualizarse en ejecución en

<a href="https://go.drvelasquezq.dev" target="_blank">https://go.drvelasquezq.dev</a>
<br>
se ejecuta proyecto de ejemplo descrito más abajo en la sección de uso

## Descripción

Este proyecto da los pasos para usar y/o crear imagen de docker que ejecuta go/golang en Debian para usarse en editor de código como VS Code para programar proyectos

<ul>
<li>Go: 1.26</li>
<li>Debian: Trixie</li>
</ul>

## Docker hub
[https://hub.docker.com/r/drvelasquezq/golang1.26-trixie](https://hub.docker.com/r/drvelasquezq/golang1.26-trixie)

# Uso

```bash
# clonar proyecto
git clone https://github.com/drvelasquezq/docker-golang1.26-trixie.git

# ingresar al proyecto
cd docker-golang1.26-trixie

# crear contenedor
docker compose up -d
```

en la carpeta projects se pueden crear los proyectos de go y acceder a ellos desde el contenedor, por ejemplo con VS Code usando la extensión de Dev Containers 

<a href="https://code.visualstudio.com/docs/devcontainers/containers" target="_blank">https://code.visualstudio.com/docs/devcontainers/containers</a>
<br>
<a href="https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers" target="_blank">https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers</a>

## proyecto de ejemplo

<a href="https://github.com/drvelasquezq/golang1.26-echo5-hello-world.git" target="_blank">https://github.com/drvelasquezq/golang1.26-echo5-hello-world.git</a>

se usa el web framework Echo en su versión 5 para mostrar un mensaje de Hola Mundo!

```bash
# ingresar al contenedor
docker exec -ti container-golang1.26-trixie bash

# clonar proyecto
git clone https://github.com/drvelasquezq/golang1.26-echo5-hello-world.git

# ingresar al proyecto
cd golang1.26-echo5-hello-world

# instalar dependencias
go mod vendor 

# ejecutar proyecto
go run main.go
```

luego podrá acceder a: <a href="http://localhost:1323" target="_blank">http://localhost:1323</a>

# Creación

```bash
# construir la imagen
docker build --tag drvelasquezq/golang1.26-trixie:latest .
```

## ejemplos de referencia

<a href="https://reference.drvelasquezq.dev" target="_blank">https://reference.drvelasquezq.dev</a>