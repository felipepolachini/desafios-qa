Quando("acesso o blog da Idwall") do
  home.load
  home.checkUrl(CONFIG['URL'])
  end
  
  Quando("pesquiso um post informando um título existente {string}") do |article|
    home.searchArticle(article)
  end
  
  Então("deve exibir o post pesquisado em uma página de resultados") do
    searchPage.checkUrl
    searchPage.checkTitleBar
    searchPage.checkArticleTitle
  end