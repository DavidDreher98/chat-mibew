<h1>Mibew Messenger 3.5.7</h1>

INTRODUÇÃO
Bem vindo! Nesse repositório o Mibew está na sua versão 3.5.7 (Last version).

Nesse repositório está com as seguintes correções:
* CHAT AO INICIAR UMA CONVERSA FICA APENAS CARREGANDO;
* ERRO AO FAZER UPLOAD DE IMAGEM PARA O OPERADOR;
* ESTRUTURA SQL DO BANCO DE DADOS RESTRUTURADA (Execute o Script do arquivo "SQL Mibew.sql").

REQUISITOS

* Servidor web Apache 1.3.34 ou superior com a capacidade de usar arquivos .htaccess locais (o módulo mod_rewrite é opcional, mas recomendado);
* Banco de dados MySQL 5.0 ou superior;
* PHP 7.2.5 ou superior com extensões PDO, pdo_mysql, cURL, mbstring e gd.

INSTALAÇÃO

1. Crie uma pasta com o nome 'mibew' na raiz do seu site.
2. Faça o upload de todos os arquivos contidos neste arquivo (mantendo a estrutura do diretório) para a pasta criada. 
Certifique-se de que a pasta mibew tenha permissão chmod 0755.
3. Adicione um banco de dados MySQL com o nome 'mibew'.
4. Copie /mibew/configs/default_config.yml para /mibew/configs/config.yml.
5. Edite /mibew/configs/config.yml com as informações necessárias para se conectar ao banco de dados.
6. Usando o seu navegador, visite http://<seudominio>/mibew/install e siga a instalação passo a passo.
7. Remova o arquivo /mibew/install.php do seu servidor.
8. Faça o login como:
      usuário: admin
      senha: <sua senha>
9. Obtenha o código do botão e configure-o em seu site.
10. Configure tarefas em execução periódica configurando um processo automatizado para visitar a página http://<seudominio>/cron?cron_key=<chave>
11. A URL completa, incluindo a "chave de cron" secreta usada para proteger contra acesso não autorizado, pode ser vista na guia 'Geral' na página 'Configurações'.
12. Troque seu nome.
13. Aguarde seus visitantes na página 'Usuários pendentes'.
14. Em plataformas unix/linux, altere o proprietário das pastas /mibew/files/avatar e /mibew/cache para o usuário sob o qual o servidor web está em execução (por exemplo, www). O proprietário deve ter todos os direitos nas pastas /mibew/files/avatar e /mibew/cache (chmod 0700 /mibew/files/avatar && chmod 0700 /mibew/cache).

ATUALIZAÇÃO

1. Faça backup da sua instalação atual (ou seja, código e banco de dados).
2. Desative todos os plugins.
3. Exclua todos os itens no diretório do Mibew Messenger no servidor.
4. Descompacte o arquivo com a distribuição oficial nesse diretório.
5. Remova o arquivo install.php.
6. Restaure a configuração (diretório configs/), plugins (diretório plugins/), (talvez) estilos personalizados (se tiver algum), (talvez) idiomas adicionais (se você usar algum) e avatares (diretório files/avatar/) do backup que você fez no passo 1.
7. Visite http://<seudominio>/<caminho para o seu Mibew Messenger>/update e siga as instruções para atualizar as tabelas do banco de dados (se necessário).
8. Ative os plugins desativados.

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

INTRODUCTION
Welcome! This repository contains Mibew version 3.5.7 (Last version).

This repository contains the following fixes:
* CHAT HANGS ON LOADING WHEN STARTING A CONVERSATION;
* ERROR UPLOADING IMAGE FOR THE OPERATOR;
* SQL DATABASE STRUCTURE RESTRUCTURED (Execute the Script from the "SQL Mibew.sql" file).

REQUIREMENTS

 * Apache web server 1.3.34 or above with the ability to use local .htaccess
   files (mod_rewrite module is optional, but recommended)
 * MySQL database 5.0 or above
 * PHP 7.2.5 or above with PDO, pdo_mysql, cURL, mbstring and gd extensions

INSTALLATION

1. Create folder with name 'mibew' in the root of your website.
2. Upload all the files contained in this archive (retaining the directory
   structure) into created folder.
   Be sure to chmod the mibew folder to 0755.
3. Add a MySQL database with the name 'mibew'
4. Copy /mibew/configs/default_config.yml to /mibew/configs/config.yml
5. Edit /mibew/configs/config.yml to the information needed to connect to the database
6. Using your web browser visit http://<yourdomain>/mibew/install and
   perform step-by-step installation.
7. Remove /mibew/install.php file from your server
8. Logon as
                  user: admin
                  password: <your password>
9. Get button code and setup it on your site.
10. Configure periodically running tasks by setting up an automated
    process to visit the page http://<yourdomain>/cron?cron_key=<key>

    The full URL including the secret "cron key" used to protect against
    unauthorized access can be seen on the 'General' tab at the 'Settings' page.
11. Change your name.
12. Wait for your visitors on 'Pending users' page.

On unix/linux platforms change the owner of /mibew/files/avatar and
/mibew/cache folders to the user, under which the web server is running
(for instance, www). The owner should have all rights on the folders
/mibew/files/avatar and /mibew/cache
(chmod 0700 /mibew/files/avatar && chmod 0700 /mibew/cache).

UPDATE

1. Backup your actual installation (i.e. code and database).
2. Disable all plugins.
3. Delete all items in your Mibew Messenger directory on the server.
4. Unpack the archive with the official distrubition in that directory.
5. Remove install.php file.
6. Restore configuration (configs/ directory), plugins (plugins/ directory),
   (maybe) custom styles (if you have any), (maybe) additional
   locales (if you use any), and avatars (files/avatar/ directory) from the
   backup you've made at the step 1.
7. Visit http://<yourdomain>/<path to your Mibew Messenger>/update and follow
   the instructions to update the database tables (if needed).
8. Enable disabled plugins.
