class Event < ActiveRecord::Base
	include ActiveModel::Validations
	has_many :attendances
	belongs_to :teacher

	validates :module, allow_blank: true, format: {
  with: %r{\A[a-zA-Z]{2}[1-4][0-9]{2}\z},
  message: 'must be a valid module code.'  }

	validates :category, presence: true
	validates :day, inclusion: { in: %w(Monday Tuesday Wednesday Thursday Friday Saturday) }
	validates_time :time, :between => ['9:00am', '5:00pm'] #thanks to RL for this one (cs424.github.io/task2/)
end
