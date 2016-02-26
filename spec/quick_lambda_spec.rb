require 'spec_helper'

# TODO: Less hilariously bad tests.
describe QuickLambda do
  describe '[1, 2, 3, 4].map(& _ + 2 + 3 )' do
    it 'works' do
      [1, 2, 3, 4].map(& _ + 2 + 3 ).must_equal [6, 7, 8, 9]
    end
  end
end

