# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage do
  @moduledoc """
  Corresponds to the &#x60;Response&#x60; field in the Dialogflow console.

  ## Attributes

  - basicCard (GoogleCloudDialogflowV2beta1IntentMessageBasicCard): Displays a basic card for Actions on Google. Defaults to: `null`.
  - card (GoogleCloudDialogflowV2beta1IntentMessageCard): Displays a card. Defaults to: `null`.
  - carouselSelect (GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect): Displays a carousel card for Actions on Google. Defaults to: `null`.
  - image (GoogleCloudDialogflowV2beta1IntentMessageImage): Displays an image. Defaults to: `null`.
  - linkOutSuggestion (GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion): Displays a link out suggestion chip for Actions on Google. Defaults to: `null`.
  - listSelect (GoogleCloudDialogflowV2beta1IntentMessageListSelect): Displays a list card for Actions on Google. Defaults to: `null`.
  - payload (%{optional(String.t) &#x3D;&gt; String.t}): Returns a response containing a custom, platform-specific payload. See the Intent.Message.Platform type for a description of the structure that may be required for your platform. Defaults to: `null`.
  - platform (String.t): Optional. The platform that this message is intended for. Defaults to: `null`.
    - Enum - one of [PLATFORM_UNSPECIFIED, FACEBOOK, SLACK, TELEGRAM, KIK, SKYPE, LINE, VIBER, ACTIONS_ON_GOOGLE]
  - quickReplies (GoogleCloudDialogflowV2beta1IntentMessageQuickReplies): Displays quick replies. Defaults to: `null`.
  - simpleResponses (GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses): Returns a voice or text-only response for Actions on Google. Defaults to: `null`.
  - suggestions (GoogleCloudDialogflowV2beta1IntentMessageSuggestions): Displays suggestion chips for Actions on Google. Defaults to: `null`.
  - text (GoogleCloudDialogflowV2beta1IntentMessageText): Returns a text response. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basicCard =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBasicCard.t(),
          :card => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCard.t(),
          :carouselSelect =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.t(),
          :image =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage.t(),
          :linkOutSuggestion =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.t(),
          :listSelect =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageListSelect.t(),
          :payload => map(),
          :platform => any(),
          :quickReplies =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.t(),
          :simpleResponses =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.t(),
          :suggestions =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSuggestions.t(),
          :text => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageText.t()
        }

  field(
    :basicCard,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBasicCard
  )

  field(:card, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCard)

  field(
    :carouselSelect,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
  )

  field(:image, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage)

  field(
    :linkOutSuggestion,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
  )

  field(
    :listSelect,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageListSelect
  )

  field(:payload, type: :map)
  field(:platform)

  field(
    :quickReplies,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
  )

  field(
    :simpleResponses,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
  )

  field(
    :suggestions,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSuggestions
  )

  field(:text, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageText)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
