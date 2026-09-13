# Rotten Potatoes

Aplicação Rails para cadastro e consulta de filmes.

## Pré-requisitos

Os comandos abaixo consideram Linux baseado em Debian/Ubuntu. Instale também
Git, SQLite e as bibliotecas necessárias para compilar o Ruby e algumas gems:

```bash
sudo apt update
sudo apt install -y build-essential git curl libssl-dev zlib1g-dev \
	libyaml-dev libreadline-dev libffi-dev libgmp-dev libncurses5-dev \
	libsqlite3-dev sqlite3
```

## Instalação do Ruby e Rails

O projeto utiliza Ruby `3.4.10`. Uma forma de instalar essa versão é usando o
[rbenv](https://github.com/rbenv/rbenv):

```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init - bash)"' >> ~/.bashrc
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - bash)"

git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)/plugins/ruby-build"
rbenv install 3.4.10
rbenv local 3.4.10
```

Instale o Bundler e o Rails. A versão efetiva das gems da aplicação será
definida pelo `Gemfile.lock` quando as dependências forem instaladas:

```bash
gem install bundler
gem install rails
```

Confirme as versões:

```bash
ruby --version
rails --version
```

## Instalação das dependências

Na raiz do projeto, instale as gems com:

```bash
bundle install
```

Como alternativa, o script abaixo instala as dependências e prepara o banco:

```bash
bin/setup --skip-server
```

## Preparação do banco

O projeto usa SQLite. Para criar o banco e executar as migrações, rode:

```bash
bin/rails db:prepare
```

## Execução dos testes

Execute a suíte de testes com:

```bash
bin/rails test
```

## Inicialização do servidor

Inicie o servidor de desenvolvimento com:

```bash
bin/dev
```

A aplicação ficará disponível em <http://localhost:3000>.
