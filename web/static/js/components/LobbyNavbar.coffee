React = require 'react'
smallLogo = require '../../assets/images/logo_small.png'

LobbyNavbar = React.createClass

  propTypes:
    roomName: React.PropTypes.string.isRequired
    roomUUID: React.PropTypes.string.isRequired

  defaultProps:
    roomName: ""
    roomUUID: ""

  shouldComponentUpdate: ->
    true

  render: ->
    <nav className="lobby-navbar row center-xs middle-xs">
      <div className="container">
        <div className="simple-row middle-xs">
          <img className="logo" src={smallLogo} alt="Planning Poker"/>
          <div className="separator"></div>
          <div className="project-name">
            <span className="project">PROJECT:</span>
            <span className="name">{this.props.roomName}</span>
          </div>
          <div className="invite simple-row middle-xs">
            <span className="invite-text">INVITE PEOPLE:</span>
            <div className="invite-link simple-row">
              <span className="link">{document.URL}</span>
              <a href="#" className="addon">
                CTRL + C
              </a>
            </div>
          </div>
        </div>
      </div>
    </nav>

module.exports = LobbyNavbar
