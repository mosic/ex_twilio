defmodule ExTwilio.Conversations.Conversations do
  @moduledoc """
  Represents a Conversation resource in the Twilio Conversations.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/conversation-resource)

  - friendly_name Human-readable name for this conversation instance
  - messaging_service_sid The unique id of the SMS Service this conversation belongs to.
  - chat_service_sid The unique id of the Chat Service this conversation belongs to.
  - account_sid The unique id of the Account responsible for this conversation.
  """

  defstruct sid: nil,
            account_sid: nil,
            chat_service_sid: nil,
            messaging_service_sid: nil,
            friendly_name: nil,
            attributes: nil,
            date_created: nil,
            date_updated: nil,
            identities: nil,
            url: nil,
            links: nil

  use ExTwilio.Resource,
    import: [
      :stream,
      :all,
      :find,
      :create,
      :update,
      :destroy
    ]
end
