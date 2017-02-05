class User < ApplicationRecord
  has_secure_password

  before_save :downcase_user_inputs

  validates :name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
                    #message: { "Must be a valid email address." }

  #VALID_PASSWORD_REGEX = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}$/

  validates :password, presence: true,
                        length: { minimum: 8}
                        #format: {with: VALID_PASSWORD_REGEX}
                        #message: {'Password must contain 8 characters with a least 1 uppercase letter, 1 lowercase letter, 1 number and 1 special character'}

  validates :user_name, presence: true,
                        uniqueness: {case_sensitive: false},
                        length: { minimum: 5,
                                  maximum: 10}

  def downcase_user_inputs
    self.email.downcase!
    self.user_name.downcase!
  end

end
