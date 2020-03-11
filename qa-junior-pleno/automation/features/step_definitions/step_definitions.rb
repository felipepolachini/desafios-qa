Quando("acesso o blog da Idwall") do
  home.load
  raise "Blog não foi acessado com sucesso." unless home.checkUrl(CONFIG['URL']) == true
  end
  
  Quando("pesquiso um post informando um título existente {string}") do |article|
    home.searchArticle(article)
  end
  
  Então("deve exibir o post pesquisado em uma página de resultados") do
    raise "Pesquisa não foi realizada com sucesso." unless searchPage.checkUrl == true
    raise "Título não foi encontrado" unless searchPage.checkTitleBar == true
    raise "Artigo não foi encontrado" unless searchPage.checkArticleTitle == true
  end
