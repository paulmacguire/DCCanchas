# frozen_string_literal: true

class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  scope :active_users, -> { where(active: true) }
  scope :inactive_users, -> { where(active: false) }
  validates :nombre, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: Devise.email_regexp }
  validates :tipo_usuario, presence: true
  validates :imagen_perfil, format: {with: URI::DEFAULT_PARSER.make_regexp}
  validates :telefono,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 9, :maximum => 9 }


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_messageable

  def mailboxer_email(_object)
    nil
  end
  has_many :resenas, dependent: :delete_all
  has_many :reservas, dependent: :delete_all
end
