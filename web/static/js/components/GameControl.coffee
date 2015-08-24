React = require 'react'
Reflux = require 'reflux'

Store = require '../stores/SocketConnectionStore'
Actions = Store.Actions

GameControl = React.createClass
  mixins: [
    Reflux.connect(Store)
  ]

  onStartVotingClick: ->
    Actions.startVoting()

  render: ->
    <table className="tickets-list full-width">
      <tbody>
        { if @state.voting.currentTicketIndex != null
            <tr>
              <td>
                <table className="full-width">
                  <tr>
                    <td className="index-column">
                      { @state.game.tickets[@state.voting.currentTicketIndex].id }
                    </td>
                    <td className="name-column">
                      { @state.game.tickets[@state.voting.currentTicketIndex].name }
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
        }
      </tbody>
    </table>

module.exports = GameControl

