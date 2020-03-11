Instruções para execução da Automação:

1) Instalar versão Ruby 2.7
2) instalar o Bundler: gem install bundler
3) Inicializá-lo e gerar gemfile (neste caso ele já está anexado no projeto):bundle init
4) Instalar as gems do gemfile: bundler install 
5) Filetree do cucumber: cucumber --init
6) Execução da feature: bundle exec cucumber -t @searchPost

