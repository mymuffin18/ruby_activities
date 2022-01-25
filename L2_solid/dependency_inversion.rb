

class Account
    def initialize(authenticator)
        @authenticator = authenticator
    end

    def login
        @authenticator.authenticate
    end
end



class JWT
    def initialize(user)
        @user = user
    end

    def auth
        puts "#{@user} logged in using JWT authentication"
    end
end

class Session
    def initialize(user)
        @user = user 
    end

    def auth
        puts "#{@user} logged in using Session authentication"
    end
end


class JWTAuthentication 
    def initialize(user)
        @auth_type = JWT.new(user)
    end

    def authenticate
        @auth_type.auth
    end
end

class SessionAuthentication 
    def initialize(user)
        @auth_type = Session.new(user)
    end

    def authenticate
        @auth_type.auth
    end
end



admin = Account.new(JWTAuthentication.new('Admin'))
admin.login
user = Account.new(SessionAuthentication.new("User"))
user.login

