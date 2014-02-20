helpers do
  def em(text)
    "<em>#{text}</em>"
  end

  def loggedin?
    !!session[:id]
  end

  def author?
    @post.user.id == session[:id]
  end
end
