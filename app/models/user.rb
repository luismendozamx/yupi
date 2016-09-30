class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :email, :phone_number, :gender, :id_type, :id_number, :address_street, :address_number, :address_city, :address_zip_code, presence: true

  has_many :received_transfers, class_name:  'Transfer',
                                   foreign_key: 'receiver_id',
                                   dependent:   :destroy

  has_many :sent_transfers, class_name:  'Transfer',
                                  foreign_key: 'sender_id',
                                  dependent:   :destroy

  GENDER_OPTIONS = {
      male: "Hombre",
      female: "Mujer",
      other: "Otro"
  }

  ID_OPTIONS = {
      ife: "IFE/INE",
      passport: "Pasaporte"
  }
end
