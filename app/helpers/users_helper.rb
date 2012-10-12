module UsersHelper
  
  # Returns Gravatar for given user
  def gravatar_for(user, options = { size: 50 } )
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    
    size = options[:size]
    #If size is too large or small, reset to default of 50
    if size < 25 && size > 350 
      size = 50
    end
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    
    image_tag(gravatar_url, alt: "#{user.name}'s profile picture", class: "gravatar")
  end
end
