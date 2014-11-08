require 'rails_helper'

RSpec.describe Exercise, :type => :model do
  context 'db columns' do
    %w(name cbpm intensity).map do |a|
      it { should have_db_column a }
    end
  end
end
