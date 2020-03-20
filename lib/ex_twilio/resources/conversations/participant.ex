defmodule ExTwilio.Conversations.Participant do
  @moduledoc """
  Represents a Participant resource in Twilio Conversations.

  Each participant in a Conversation represents one real
  (probably human) participant in a Conversation.

  Creating a Participant joins them with the conversation,
  and the connected person will receive all subsequent messages.

  Deleting a participant removes them from the conversation;
  they will receive no new messages after that point.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/conversation-participant-resource)

  - friendly_name Human-readable name for this conversation instance
  - conversation_sid The unique id of the Conversation for this participant.
  - identity A unique string identifier for the conversation participant as
    Chat User. This parameter is non-null if (and only if) the participant is
    using the Programmable Chat SDK to communicate. Limited to 256 characters.
  - account_sid The unique id of the Account responsible for this participant.
  - attributes An optional string metadata field you can use to store any data
    you wish. The string value must contain structurally valid JSON if
    specified. Note that if the attributes are not set "{}" will be returned.
  - messaging_binding Information about how this participant exchanges messages
    with the conversation. A JSON parameter consisting of type and address
    fields of the participant.
  """

  defstruct account_sid: nil,
            conversation_sid: nil,
            sid: nil,
            identity: nil,
            attributes: nil,
            messaging_binding_projected_address: nil,
            messaging_binding_address: nil,
            messaging_binding_proxy_address: nil,
            date_created: nil,
            date_updated: nil,
            url: nil

  use ExTwilio.Resource,
    import: [
      :stream,
      :all,
      :find,
      :create,
      :update,
      :destroy
    ]

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.Conversations, key: :conversation}
    ]
end
