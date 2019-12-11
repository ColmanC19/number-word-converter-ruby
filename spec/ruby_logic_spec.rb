require('rspec')
require('ruby_logic')

describe('#one_number') do
it("replaces a number with a word") do
  expect(one_number(4)).to(eq("four"))
end
end
describe('#one_number') do
it("replaces a number with a word") do
  expect(one_number(412)).to(eq("four hundred twelve"))
end
end

describe('#one_number') do
it("replaces a number with a word") do
  expect(one_number(1000000)).to(eq("one million"))
end
end
