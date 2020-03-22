defmodule ExTwilio.Conversations.Message do
  @moduledoc """
  Represents a Message resource in Twilio Conversations.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/conversation-resource)

  - media An array of objects that describe the Message's media, if the message
    contains media. Each object contains these fields: content_type with the
    MIME type of the media, filename with the name of the media, sid with the
    SID of the Media resource, and size with the media object's file size in
    bytes. If the Message has no media, this value is null.
  - conversation_sid The unique id of the Conversation for this participant.
  - participant_sid A unique string identifier for the conversation participant as
    Chat User. This parameter is non-null if (and only if) the participant is
    using the Programmable Chat SDK to communicate. Limited to 256 characters.
  - account_sid The unique id of the Account responsible for this message.
  - attributes An optional string metadata field you can use to store any data
    you wish. The string value must contain structurally valid JSON if
    specified. Note that if the attributes are not set "{}" will be returned.
  - index The index of the message within the Conversation.
  - author The channel specific identifier of the message's author. Defaults to
    system.
  """

  defstruct account_sid: nil,
            conversation_sid: nil,
            participant_sid: nil,
            sid: nil,
            body: nil,
            media: nil,
            author: nil,
            attributes: nil,
            index: nil,
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
