# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  buyer           :boolean
#  email           :string
#  password_digest :string
#  seller          :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
end
