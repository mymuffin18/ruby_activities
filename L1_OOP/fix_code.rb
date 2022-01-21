# Goal:
# 1. Admin should be able to login
# 2. Admin should be able to update all users profile
# 3. Admin should be able to change password
# 4. Buyer should be able to login
# 5. Buyer should be able to buy an item
# 6. Admin should be able to change password

# Expected output:

# User logged in. IP address: 127.0.0.1
# Admin updated all users profile
# Password changed!
# User logged in. IP address: 127.0.0.1
# Buyer has bought an item
# Password changed!


module AdminPermisson
    def edit_users_profile
      puts "Admin updated all users profile"
    end
  end
  
  module BuyerPermission
    def buy
      puts "Buyer has bought an item"
    end
  
  end
  
  class User
    
    def initialize(username, password, ip_address)
     @username = username
     @password = password
     @ip_address = ip_address
    end
    
    def change_password=(new_password)
        @password = new_password
        puts "Password changed!"
    end
    protected
    def login
      puts "User logged in. IP address: #{@ip_address}"
    end

  end
  
  
  class Admin < User

    def initialize(username, password, ip_address)
        super(username, password, ip_address)
    end
    include AdminPermisson


    def admin_login
        login
    end
  end
  
  
  class Buyer < User
    include BuyerPermission
    def initialize(username, password, ip_address)
        super(username, password, ip_address)
    end
    def buyer_login
        login
    end
  end
  
  
  
  ## execute
  
  my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
  my_admin.admin_login
  my_admin.edit_users_profile
  
  my_admin.change_password = 'new_password'
 
  buyer = Buyer.new('juan', 'password', '127.0.0.1')
  buyer.buyer_login
  buyer.buy
  
  buyer.change_password = 'new_password'