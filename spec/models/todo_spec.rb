require 'rails_helper'

#Test suite for this model
RSpec.describe Todo, type: :model do
  #Association test
  #ensure Todo model has 1:m relationship with item model
  it {should have_many(:items).dependent(:destroy)}
  #Validation test
  #ensure columns: title and created_by are present before saving
  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:created_by)}
end
