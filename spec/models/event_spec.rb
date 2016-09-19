require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'conflicts' do

    let (:lunch) {
      Event.new(start_time: DateTime.new(2016,1,1,12,0,0,0),
                duration: 60,
                description: 'Lunch')
    }

    let (:snack_time) {
      Event.new(start_time: DateTime.new(2016,1,1,12,30,0,0),
                duration: 60,
                description: 'Snack time')
    }

    it 'identifies scheduling conflicts' do
      expect(snack_time.conflicts_with?(lunch)).to be(true)
    end
  end
end
