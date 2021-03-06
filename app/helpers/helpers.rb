class Helpers

  def self.current_user(session)
    @user = User.find_by(id: session[:user_id])
  end

  def self.is_logged_in?(session)
    !!Helpers.current_user(session)
  end
end
