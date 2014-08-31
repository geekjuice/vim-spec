# Mocha
{ expect } = require('chai')

describe 'Test', ->
  hello = 'world'
  lorem = 'ipsum'

  it 'should have correct value for hello', ->
    expect(hello).to.eql 'world'

  it 'should have correct value for lorem', ->
    expect(lorem).to.eql 'ipsum'
