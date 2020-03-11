
class SearchPage < SitePrism::Page

     set_url "/?s=#{$articleTitle}"

     def self.checkUrl
        expect(page).to have_current_path('/?s=#{$articleTitle}', url: true)
      end

     def self.checkTitleBar
        element :titleBar,:xpath, '//h1[text()= "#{$articleTitle}"]'
        has_titleBar
     end

     def self.checkArticleTitle
       element :articleTitle,:xpath, '//a[text()= "#{$articleTitle}"]'
       has_articleTitle
     end    
    
end