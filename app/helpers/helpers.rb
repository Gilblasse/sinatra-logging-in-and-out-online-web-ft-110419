class Helpers
  def self.current_user(session)
    User.find_by(id: session[:user_id])
  end 

  def self.is_logged_in?(session)
    session[:user_id].is_a? Integer
  end 
end