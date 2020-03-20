defmodule ExTwilio.Conversations.Webhook do
  @moduledoc """
  Represents a Webhook resource in Twilio Conversations.

  - [Twilio docs](https://www.twilio.com/docs/conversations/api/conversation-resource)

  - filters The list of webhook event triggers that are enabled for this
    Service: onMessageAdded, onMessageUpdated, onMessageRemoved,
    onConversationUpdated, onConversationRemoved, onParticipantAdded,
    onParticipantUpdated, onParticipantRemoved
  - target The routing target of the webhook. Can be ordinary or route
    internally to Flex
  - account_sid The unique id of the Account responsible for this message.
  - method The HTTP method to be used when sending a webhook request.
  """

  defstruct account_sid: nil,
            pre_webhook_url: nil,
            post_webhook_url: nil,
            method: nil,
            filters: nil,
            target: nil,
            url: nil

  use ExTwilio.Resource,
    import: [
      :find,
      :update
    ]

  def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.Conversations.Conversation, key: :conversation}
    ]
end
