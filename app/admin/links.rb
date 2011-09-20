ActiveAdmin.register Link do
  index do 
    column "Title" do |link|
      link_to link.title, link.link
    end
    default_actions
  end
end
