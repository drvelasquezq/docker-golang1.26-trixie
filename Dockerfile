FROM debian:trixie

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates && \
    apt-get install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

COPY ./download/go1.26.2.linux-amd64.tar.gz /tmp/

WORKDIR /tmp

RUN rm -rf /usr/local/go && \
    tar -C /usr/local -xzf go1.26.2.linux-amd64.tar.gz

ENV PATH=$PATH:/usr/local/go/bin

RUN go version

# gopls (Go Please) es el language server oficial de Go, mantenido por el equipo de Google.
# Implementa el protocolo LSP (Language Server Protocol), lo que permite a cualquier editor compatible (VS Code, Neovim, etc.) tener funcionalidades avanzadas para Go:
# Autocompletado - Sugerencias de código en tiempo real
# Go to definition - Saltar a la definición de una función/tipo
# Find references - Ver dónde se usa un símbolo
# Rename - Renombrar símbolos en todo el proyecto
# Diagnósticos - Errores y warnings sin compilar
# Hover - Documentación al pasar el cursor
# Formatting - Formatea con gofmt automáticamente
# Inlay hints - Muestra tipos inferidos inline
RUN go install golang.org/x/tools/gopls@latest

WORKDIR /projects