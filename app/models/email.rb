class Email < ActiveRecord::Base
  belongs_to :app
  has_many :attachments

  validates_presence_of :from, :to, :text_part, :app_id
end
