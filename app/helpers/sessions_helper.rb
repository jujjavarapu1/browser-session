module SessionsHelper
  def get_cookie
    if cookies.signed[:token]==nil
      set_cookie
    end
    @token = cookies.signed[:token]
  end

  def set_cookie
    cookies.permanent.signed[:token] = SecureRandom.urlsafe_base64
  end
end
