class Post < ActiveRecord::Base
  PASSWORD_SALT = 'ab'
  
  belongs_to :post_thread
  validates_presence_of :post_thread, :subject, :comment
  
  def self.crypt_password(password)
    password.crypt(PASSWORD_SALT)
  end
  
  # Write only
  def author_password
    nil
  end
  
  # Attributing a password generate and affect author_tripcode
  def author_password=(password)
    write_attribute(:author_tripcode, self.class.crypt_password(password)) unless password.empty?
    password
  end
  
end
