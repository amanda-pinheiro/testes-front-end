class HomePage < SitePrism::Page

    element :userName, :xpath, "//div[@class= 't-16 t-black t-bold']"
    element :navBarHome, :xpath, '/html/body/div[5]/header/div/nav/ul/li[1]/a/span'
    element :myIcon, :id, "ember14"

    def checkLoginSuccessful
        expect(userName.text).to eql "Amanda Pinheiro"
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end
end