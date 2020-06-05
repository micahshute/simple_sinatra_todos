class User < ActiveRecord::Base

    has_secure_password
    validates :username, uniqueness: true
    validates :username, presence: true
    has_many :todos


    # def password=(pw)
    #     self.password_digest = Digest::SHA2.hexdigest(pw)
    # end

    # def authenticate(pw)
    #     Digest::SHA2.hexdigest(pw) == self.password_digest
    # end


end

