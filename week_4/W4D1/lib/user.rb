require "pry"

class User
  attr_accessor :email, :age
  # @@user_count = 0
  @@all_users = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save.to_s
    @age = age_to_save.to_i
    # @@user_count = @@user_count + 1
    @@all_users << self
  end

  def self.all
    @@all_users
  end

  def self.find_by_email(email)
    @@all_users.find { |user| user.email == email }
  end
  
  # def change_password(new_password)
  #   @encrypted_password = encrypt(new_password)
  # end

  # def show_itself
  #   puts self
  # end

  # def self.count
  #   return @@user_count
  # end

  private

  # def encrypt(string_to_encrypt)
  #   return "##ENCRYPTED##"
  # end

end