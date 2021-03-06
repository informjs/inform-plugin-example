{Plugin} = require '../src'

sinon = require 'sinon'
{expect} = require 'chai'

exampleData =
  options: {
    example: 'options',
    go: [
      'here, ',
      'here, ',
      'or here'
    ]
  }

describe 'Plugin', ->
  it 'should define #receive', ->
    expect(Plugin.prototype.receive).to.not.equal undefined

  describe '#constructor', ->
    it 'should set options to the first provided argument', sinon.test ->
      plugin = new Plugin exampleData.options

      expect(plugin.options).to.deep.equal exampleData.options

