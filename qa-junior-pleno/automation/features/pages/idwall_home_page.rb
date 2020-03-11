require_relative 'home_header.rb'

class IdWallHomePage < SitePrism::Page

    def initialize
        $articleTitle = nil 
    end

    set_url '/'
    
    section :header, HomeHeader, '.container'

    def checkUrl(url)
        expect(page).to have_current_path(CONFIG['URL'], url: true)
    end    

    def searchArticle(article)
        $articleTitle = article
       
        header.searchIcon.click
        header.input.set $articleTitle
        header.input.send_keys(:enter)
    end  

end