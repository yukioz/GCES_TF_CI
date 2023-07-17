[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/QQnsKzZE)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-718a45dd9cf7e7f842a935f5ebbe5719a5e09af4491e668f4dbf3b35d5cca122.svg)](https://classroom.github.com/online_ide?assignment_repo_id=11432078&assignment_repo_type=AssignmentRepo)
# Trabalho individual de GCES 2023-1

## Nome: Victor Yukio Cavalcanti Miki

## Matrícula: 180068229


Os conhecimentos de Gerência de Configuração de Software são fundamentais no ciclo de vida de um produto de software. As técnicas para a gestão vão desde o controle de versão, automação de build e de configuração de ambiente, testes automatizados, isolamento do ambiente até o deploy do sistema. Todos estas itens do ciclo nos dias de hoje são integradas em um pipeline de DevOps com as etapas de Integração Contínua (CI) e Deploy Contínuo (CD) implementadas e automatizada.

Para exercitar estes conhecimentos, neste trabalho, você deverá aplicar os conceitos estudados ao longo da disciplina no produto de software contido neste repositório.

A aplicação em estudo é o **Decidim** que é um framework de democracia participativa, escrito em Ruby on Rails, originalmente desenvolvido para o site de participação online e offline do governo da cidade de Barcelona.

Para executar a aplicação em sua máquina, basta seguir o passo-a-passo descritos neste [Guia de Configuração do Ambiente](./Instrucoes_de_Configuracao.md).

# Resumo da aplicação 

O **Decidim** é um framework que permite qualquer pessoa criar e configurar uma plataforma web para ser utilizada como uma rede política de participação democrática. A plataforma permite que qualquer organização (prefeitura local, associação, universidade, ONG, bairro ou cooperativa) crie processos de participação em massa para planejamento estratégico, orçamento participativo, desenho colaborativo de normativos, espaços urbanos e processos eleitorais.

Neste projeto estamos utilizando uma aplicação DecidimBR que é uma aplicação Ruby on Rails que utiliza os módulos (gems) do Decidim como base para a criação de uma versão brasileira da plataforma.

# Etapas deste Trabalho

O trabalho deve ser elaborado através de etapas. Cada uma das etapas deve ser realizada em um commit separado com o resultado funcional desta etapa.

As etapas de 1 e 2 são relacionadas ao isolamento do ambiente utilizando a ferramenta Docker e Docker Compose. Neste sentido, o tutorial abaixo cobre os conceitos fundamentais para o uso destas tecnologias.

[Tutorial de Docker](https://github.com/FGA-GCES/Workshop-Docker-Entrega-01/tree/main/tutorial_docker)

As etapas de 3 e 4 são relacionadas à configuração do pipeline de CI e CD.

[Tutorial CI - Gitlab](https://github.com/FGA-GCES/Workshop-CI-Entrega-02/tree/main/gitlab-ci_tutorial)

## 1. Containerização da Aplicação

A aplicação DecidimBR é uma aplicação Ruby on Rails que contém um conjunto de dependências e utiliza além da linguagem Ruby e o framework Ruby on Rails, o Node e Webpacker para a camada de *frontend* da aplicação. Além disso, o banco de dados Postgres é necessário para rodar a aplicação.

Esta Etapa 1 consiste na elaboração de um `Dockerfile` que seja capaz de criar um container para rodar a aplicação.

## 2. Containerização da aplicação + Banco de Dados

A Etapa 2 consiste em atualizar o arquivo `docker-compose.yml` combinando a aplicação criada no Dockerfile da Etapa 1 com o banco de dados Postgres e que já está congurado no arquivo `docker-compose.yml` além dos serviços `redis-cache` e `redis-queue`.

## 3. Integração Contínua (CI)

Para a realização desta etapa, a aplicação já deverá ter seu ambiente completamente containerizado.

Esta etapa do trabalho deverá utilizadar o ambiente de CI do Github Actions.

Requisitos da configuração da Integração Contínua (Gitlab ou Github) incluem:

3.1 Build  
3.2 Test - unitários  
3.3 Lint   

## 4. Deploy Contínuo (CD)

A etapa final do trabalho deverá ser realizada à partir do deploy automático da aplicação que deve ser realizado após passar sem erros em todas as etapas de CI.

# Avaliação

A avaliação do trabalho será feita à partir da correta implementação de cada etapa. A avaliação será feita de maneira **quantitativa** (se foi realizado a implementação + documentação), e **qualitativa** (como foi implementado, entendimento dos conceitos na prática, complexidade da solução). Para isso, faça os **commits atômicos, bem documentados, completos** a fim de facilitar o entendimento e avaliação do seu trabalho. Lembrando o trabalho é individual.

**Observações**: 
1. A data final de entrega do trabalho é o dia **17/07/2023**;
2. O trabalho deve ser desenvolvido em um **repositório PESSOAL e PRIVADO** no ambiente do Github Classroom;
3. Cada etapa do trabalho deverá ser entregue em commits progressivos (pondendo ser mais de um commit por etapa);
4. Os **commits devem estar espaçados em dias ao longo do desenvolvimento do trabalho**. Commits feitos todos juntos na data de entrega serão descontados da nota final.

| Item | Peso |
|---|---|
| 1. Containerização da Aplicação                   | 3.5 |
| 2. Containerização da Aplicação + Banco + Cache   | 1.5 |
| 3. Integração Contínua (Build, Test, Lint)        |     |
| - 3.1 Buil                                        | 1.5 |
| - 3.2 Test                                        | 1.0 |
| - 3.3 Lint                                        | 1.0 |
| 4. Deploy Contínuo                                | 1.5 |