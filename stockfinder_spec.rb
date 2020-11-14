require './stockpicker.rb'

describe StockPicker do
    subject {StockPicker.new }
    it 'finds biggest stock' do
        expect(subject.stock_picker([1,4,32,5,6,3,23,3])).to eql([0,2])
    end
    it 'no good day to sell' do
        expect(subject.stock_picker([5,4,3,2,1])).to eql([-1,-1])
    end
    it 'finds biggest stock' do
        expect(subject.stock_picker([89,3,5,6,2,4,23,1])).to eql([4,6])
    end
    
end