@Menu
Scenario Outline: Acessar diferentes links e categorias pela página inicial através do menu escolhido

Given Access IdWall blog
and Choosen menu "<<menu_type>>"
When Select option "<<option>>"
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
And Type text "<<keyword>>"
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
Scenario Outline: Navegar pelos 6 artigos em destaque do painel e acessando cada um deles por diferentes origem e destinos desta lista

Given Access IdWall blog
When Select start point "<<startPosition>>"
and Select end point "<<endPosition>>"
and Read article "<<path>>"
Then article is accessed

Examples:

|startPosition|endPosition|path|
|1|3|title|
|2|5|Read More|
|4|6|title|
|5|1|Read More|
|3|4|title|
|5|3|Read More|



@ImageHolder @comments
Scenario Outline: Navegar pelos 6 artigos em destaque do painel e acessando a seção de comentários  de cada um deles por diferentes origem e destinos desta lista

Given Access IdWall blog
When Select start point "<<startPosition>>"
and Select end point "<<endPosition>>"
and Respond article 
Then article is responded

Examples:

|startPosition|endPosition|
|1|4|
|3|5|
|5|6|
|5|2|
|2|4|
|5|4|

@ImageHolder @category
Scenario Outline: Navegar pelos 6 artigos em destaque do painel e acessando uma das categorias relacionadas de cada um deles por diferentes origem e destinos desta lista

Given Access IdWall blog
When Select start point "<<startPosition>>"
and Select end point "<<endPosition>>"
and access related categories 
Then all categories are accessed

Examples:

|startPosition|endPosition|
|1|6|
|2|4|
|4|3|
|5|4|
|4|1|
|5|2|

@ImageHolder @News @Interval
Scenario Outline: Aguardar intervalo de tempo e Acessar artigo de uma determinada posição do painel de destaque

Given Access IdWall blog
When Wait for position "<<position>>"
and Read article 
Then article is accessed

Examples:

|position|
|2|
|1|
|4|
|3|
|6|
|5|

@ImageHolder @comments @Interval
Scenario Outline: Aguardar intervalo de tempo e acessar seção de comentários artigo de uma determinada posição do painel de destaque

Given Access IdWall blog
When Wait for position "<<position>>"
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


@ImageHolder @category @Interval
Scenario Outline: Aguardar intervalo de tempo e acessar categorias artigo de uma determinada posição do painel de destaque

Given Access IdWall blog
When Wait for position "<<position>>"
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
When Select category "<<category>>"
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
When select page number "<<page>>"
And select article by number "<<article>>" "<<access>>"
Then article is accessed

Examples:

|page|article|access|
|1|3|photo|
|2|4|title|
|5|6|title|

@TechUpdates @category
Scenario Outline: Acessar categorias dos artigos da seção Latest Tech Update e verificar que o redirecionamento correto acontece

Given Access IdWall blog
When select page number "<<page>>"
And select article categories by number "<<article>>"
Then categories are accessed

Examples:

|page|article|
|1|1|
|2|8|
|3|5|

@TechUpdates @authors
Scenario Outline: Acessar autores dos artigos da seção Latest Tech Update e verificar que o redirecionamento correto acontece

Given Access IdWall blog
When select page number "<<page>>"
And select article authors by number "<<article>>"
Then categories are accessed

Examples:

|page|article|
|1|3|
|2|4|
|3|1|

@TechUpdates @share
Scenario Outline:Compartilhar artigos da seção Latest Tech Update pelas redes sociais e verificar que o redirecionamento correto acontece

Given Access IdWall blog
When select page number "<<page>>"
And share article by number "<<article>>" "<<social>>"
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
When Select most read post by number "<<post>>" "<<path>>"
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
When Select featured news "<<post>>" "<<path>>"
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
When Follow IdWall "<<social>>"
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

@Newsletter @success
Scenario Outline: Assinar newsletter com sucesso

Given Access IdWall blog
When Set email address "<<email>>"
And Sign newsletter
Then Signed succesfully

Examples:

|email|
|teste@teste.com|

@Newsletter @fail 
Scenario: Assinar newsletter sem sucesso

Given Access IdWall blog
When Sign newsletter
Then Error Message

@Home
Scenario Outline: Acessar a home do blog pelo link no cabeçalho ou rodapé

Given Access IdWall blog
When Access Home <<path>>
Then Home accessed

Examples:

|path|
|header|
|footer|
