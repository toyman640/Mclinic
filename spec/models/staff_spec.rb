require 'rails_helper'

RSpec.describe Staff, type: :model do
  it 'should not save user without data' do
    staff = Staff.new
    expect(staff.valid?).to eq false
  end

  it 'should save user with valid attributes' do
    staff = Staff.new(username: 'toyman', password: 'toyman123',
                      password_confirmation: 'toyman123', role: 'doctor')
    expect(staff.valid?).to eq true
  end
end
