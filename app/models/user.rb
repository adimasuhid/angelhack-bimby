class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :access_token, :fname, :lname, :gender
  # attr_accessible :title, :body
  #

  has_many :babies

  # for facebook authentication
  def self.find_for_facebook_oauth(auth, signed_in_resource = nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.new(provider:      auth.provider,
                      uid:           auth.uid,
                      email:         auth.info.email,
                      password:      Devise.friendly_token[0,20],
                      fname:    auth.extra.raw_info.first_name,
                      lname:     auth.extra.raw_info.last_name,
                      gender:        auth.extra.raw_info.gender.capitalize!,
                      access_token:  auth['credentials']['token'])
                      #username:      auth.info.nickname,
                      #avatar_path:   auth.info.image.gsub('type=square','width=200&height=200'),
                      #role:          'User')
      user.save
    end
    user
  end

  def full_name
    "#{self.fname} #{self.lname}"
  end

end
