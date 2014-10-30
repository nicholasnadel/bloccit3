class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  scope :visible_to, -> (user) { user ? all : where(public: true) }
  scope :public, -> { where(public: true) }
  scope :private, -> { where(public: false) }
end
