React = require 'react'
Reflux = require 'reflux'
smallLogo = require '../../assets/images/logo_small.png'

Store = require '../stores/SocketConnectionStore'
Actions = Store.Actions


GameNavBar = React.createClass
  mixins: [
    Reflux.connect(Store)
  ]

  selectAllInput: (e) ->
    e.target.setSelectionRange(0, e.target.value.length)

  render: ->
    <nav className="navbar navbar-default navbar-static-top">
      <div className="container">
        <div className="navbar-header">
          <img className="small-logo" src={smallLogo} alt="Planning Poker"/>
        </div>
        <div className="nav navbar-nav">
          <span className="head">SESSION NAME:</span>
          <span className="name">{@state.game.name}</span>
        </div>
        <div className="nav navbar-nav navbar-right">
          <span>INVITE PEOPLE:</span>
          <input name="game_url" onClick={@selectAllInput} value={document.URL} disabled/>
        </div>
      </div>
    </nav>

module.exports = GameNavBar

