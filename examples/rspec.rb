# RSpec
describe 'Test' do
  hello = 'world'
  lorem = 'ipsum'

  it 'should have correct value for hello' do
    expect(hello).to eql 'world'
  end
  it 'should have correct value for lorem' do
    expect(lorem).to eql 'ipsum'
  end
end
