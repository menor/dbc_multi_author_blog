helpers do
  def em(text)
    "<em>#{text}</em>"
  end

  def loggedin?
    !!session[:id]
  end

  def user?
    @author.id == session[:id]
  end
end
