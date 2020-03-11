# 1) Acessar diferentes categorias pela página inicial através do cabeçalho OK
# 2) Acessar diferentes categorias pela página inicial através do rodapé OK

# 4) Buscar artigos por texto específico OK
# 5) Abrir a lupa de busca por artigos e logo em seguida fechar OK

# 5) Navegar pelos 6 artigos em destaque do painel e acessando cada um deles por diferentes origem e destinos desta lista OK
# 6) Navegar pelos 6 artigos em destaque do painel e acessando a seção de comentários  de cada um deles por diferentes origem e destinos desta lista OK
# 7) Navegar pelos 6 artigos em destaque do painel e acessando uma das categorias relacionadas de cada um deles por diferentes origem e destinos desta lista OK

# 8) Filtrar os artigos por categorias e validar que o redirecionamento de acordo com o filtro acontece OK

# 9) Acessar artigos da seção Latest Tech Update e verificar que o redirecionamento correto acontece OK
# 10) Acessar categorias dos artigos da seção Latest Tech Update e verificar que o redirecionamento correto acontece OK
# 11) Acessar autores dos artigos da seção Latest Tech Update e verificar que o redirecionamento correto acontece OK
# 12) Compartilhar artigos da seção Latest Tech Update pelas redes sociais e verificar que o redirecionamento correto acontece OK

# 14) Acessar artigos da seção Conteúdo Mais Lidos e verificar que o redirecionamento correto acontece OK
# 15) Acessar artigos da seção Publicações recentes e verificar que o redirecionamento correto acontece OK

# 16) Seguir nas reder sociais e validar que link acontece OK

# 17) Acessar logo do IdWall do cabeçalho e deve ser redirecionado para a página inicial
# 18) Acessar link do IdWall do rodapé e deve ser redirecionado para a página inicial

# 19) Clicar no Go to Top button no rodapé e verificar que você voltou ao topo da página OK

# 20) Assinar newsletter com sucesso
# 21) Assinar newsletter sem sucesso

# ============================================================

@Menu
Scenario Outline: Acessar diferentes links e categorias pela página inicial através do menu escolhido

Given Access IdWall blog
and Choosen menu <<menu_type>>
When Select option <<option>>
Then Check redirection to link

Examples:

menu_type|option|
|header|Podcast|
|header|Anti-fraude|
|header|Fintech|
|header|Background Checking|
|header|Due Diligence|
|header|Startup|
|header|Outros|
|footer|Podcast|
|footer|Anti-fraude|
|footer|Fintech|
|footer|Background Checking|
|footer|Due Diligence|
|footer|Startup|
|footer|Outros|

@Search @Confirm
Scenario Outline: Buscar artigos por texto 

Given Access IdWall blog
When Click on search icon
And Type text <<keyword>>
Then Check Redirect to search page

Examples: 

|keyword|
|big data|

@Search @Cancel
Scenario: Buscar artigos e cancelar ação

Given Access IdWall blog
When Click on search icon
And Click on cancel icon
Then Cancel icon is not visible
And search icon is visible

@ImageHolder @News
Scenario Outline: Navegar pelos artigos em destaque do painel e acessando cada um deles por diferentes origem e destinos desta lista

Given Access IdWall blog
When Select start point <<startPosition>>
and Select end point <<endPosition>>
and Read article <<path>>
Then article is accessed

Examples:

|startPosition|endPosition|path|
|1|3|title|
|2|5|Read More|
|4|6|title|
|5|1|Read More|
|3|4|title|
|5|3|Read More|


@ImageHolder @News @Interval
Scenario Outline: Aguardar intervalo de tempo e Acessar artigo de uma determinada posição do painel de destaque

Given Access IdWall blog
When Wait for position <<position>>
and Read article <<path>>
Then article is accessed

Examples:

|position|
|2|
|1|
|4|
|3|
|6|
|5|

@ImageHolder @comments
Scenario Outline: Navegar pelos 6 artigos em destaque do painel e acessando a seção de comentários  de cada um deles por diferentes origem e destinos desta lista

Given Access IdWall blog
When Select start point <<startPosition>>
and Select end point <<endPosition>>
and Respond article 
Then article is responded

Examples:

|startPosition|endPosition|
|1|3|
|2|5|
|4|6|
|5|1|
|3|4|
|5|3|


@ImageHolder @comments @Interval
Scenario Outline: Aguardar intervalo de tempo e acessar seção de comentários artigo de uma determinada posição do painel de destaque

Given Access IdWall blog
When Wait for position <<position>>
and Respond article 
Then article is reponded

Examples:

|position|
|2|
|1|
|4|
|3|
|6|
|5|

@ImageHolder @category
Scenario Outline: Navegar pelos 6 artigos em destaque do painel e acessando uma das categorias relacionadas de cada um deles por diferentes origem e destinos desta lista

Given Access IdWall blog
When Select start point <<startPosition>>
and Select end point <<endPosition>>
and access related categories 
Then all categories are accessed

Examples:

|startPosition|endPosition|
|1|3|
|2|5|
|4|6|
|5|1|
|3|4|
|5|3|

@ImageHolder @category @Interval
Scenario Outline: Aguardar intervalo de tempo e acessar categorias artigo de uma determinada posição do painel de destaque

Given Access IdWall blog
When Wait for position <<position>>
and access related categories 
Then all categories are accessed

Examples:

|position|
|2|
|1|
|4|
|3|
|6|
|5|

@Filter
Scenario Outline: Filtrar os artigos por categorias e validar que o redirecionamento de acordo com o filtro acontece

Given Access IdWall blog
When Select category <<category>>
Then Redirected to category

Examples:

|category|
|Economy|
|Fintech|
|Startup|
|Seguranca|
|Smartphones|
|Tech Update|
|Mercado|
|Outros|
|Anti-fraude|
|Due Diligence|
|idcast|
|idtalks|
|Background Check|
|Background Checking|


@TechUpdates @articles
Scenario Outline: Acessar artigos da seção Latest Tech Update e verificar que o redirecionamento correto acontece

Given Access IdWall blog
When select page number <<page>>
And select article by number <<article>> <<access>>
Then article is accessed

Examples:

|page|article|access|
|1|3|photo|
|2|4|title|

@TechUpdates @category
Scenario Outline: Acessar categorias dos artigos da seção Latest Tech Update e verificar que o redirecionamento correto acontece

Given Access IdWall blog
When select page number <<page>>
And select article categories by number <<article>>
Then categories are accessed

Examples:

|page|article|
|1|3|
|2|4|

@TechUpdates @authors
Scenario Outline: Acessar autores dos artigos da seção Latest Tech Update e verificar que o redirecionamento correto acontece

Given Access IdWall blog
When select page number <<page>>
And select article authors by number <<article>>
Then categories are accessed

Examples:

|page|article|
|1|3|
|2|4|

@TechUpdates @share
Scenario Outline:Compartilhar artigos da seção Latest Tech Update pelas redes sociais e verificar que o redirecionamento correto acontece

Given Access IdWall blog
When select page number <<page>>
And share article by number <<article>> <<social>>
Then categories are accessed

Examples:

|page|article|social|
|1|3|facebook|
|2|4|twitter|
|4|2|linkedin|
|3|5|email|

@MoreRead
Scenario Outline: Acessar artigos da seção Conteúdo Mais Lidos e verificar que o redirecionamento correto acontece

Given Access IdWall blog
When Select most read post by number <<post>> <<path>>
Then article is accessed

Examples:

|post|path|
|1|photo|
|2|title|
|3|photo|
|4|title|
|5|photo|
|6|title|


@FeaturedNews
Scenario Outline: Acessar artigos da seção Publicações recentes e verificar que o redirecionamento correto acontece

Given Access IdWall blog
When Select featured news <<post>> <<path>>
Then article is accessed

Examples:

|post|path|
|1|photo|
|2|title|
|3|photo|
|4|title|

@Social
Scenario Outline: Seguir nas reder sociais e validar que link acontece

Given Access IdWall blog
When Follow IdWall <<social>>
Then Check redirection

Examples:

|social|
|facebook|
|linkedin|

@GoToTop
Scenario: Clicar no Go to Top button no rodapé e verificar que você voltou ao topo da página

Given Access IdWall blog
When Scroll Page Down
And Click on Go To Up button
Then Check Scroll Up



