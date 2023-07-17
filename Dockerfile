# Use a base de imagem Ruby 3.0.4
FROM ruby:3.0.4

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos do projeto para o diretório de trabalho
COPY . .

# Instale as dependências do sistema
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    libssl-dev \
    zlib1g-dev \
    nodejs \
    libpq-dev

# Instale as gems do projeto
RUN gem install bundler
RUN bundle install

# Instale as dependências do Node.js
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn
RUN yarn

# Instalando o mailcatcher
RUN gem install mailcatcher --no-document

# Exponha a porta necessária pela aplicação (por exemplo, 3000)
EXPOSE 3000

# Comando para iniciar a aplicação quando o contêiner for executado
# CMD ["rails", "server", "-b", "0.0.0.0"]
