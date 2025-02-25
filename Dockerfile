# Usando a imagem base Playwright
FROM mcr.microsoft.com/playwright:v1.50.1-noble

# Instalando dependencias e o Open JDK 21
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    openjdk-21-jdk \
    && apt-get clean

# Configurando a variavel de ambiente JAVA_HONE
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV PATH="${JAVA_HOME}/bin:${PATH}"