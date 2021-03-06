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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType do
  @moduledoc """
  Represents an entity type. Entity types serve as a tool for extracting parameter values from natural language queries.

  ## Attributes

  - autoExpansionMode (String.t): Optional. Indicates whether the entity type can be automatically expanded. Defaults to: `null`.
    - Enum - one of [AUTO_EXPANSION_MODE_UNSPECIFIED, AUTO_EXPANSION_MODE_DEFAULT]
  - displayName (String.t): Required. The name of the entity. Defaults to: `null`.
  - entities ([GoogleCloudDialogflowV2beta1EntityTypeEntity]): Optional. The collection of entities associated with the entity type. Defaults to: `null`.
  - kind (String.t): Required. Indicates the kind of entity type. Defaults to: `null`.
    - Enum - one of [KIND_UNSPECIFIED, KIND_MAP, KIND_LIST]
  - name (String.t): Required for all methods except &#x60;create&#x60; (&#x60;create&#x60; populates the name automatically. The unique identifier of the entity type. Format: &#x60;projects/&lt;Project ID&gt;/agent/entityTypes/&lt;Entity Type ID&gt;&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoExpansionMode => any(),
          :displayName => any(),
          :entities =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity.t()),
          :kind => any(),
          :name => any()
        }

  field(:autoExpansionMode)
  field(:displayName)

  field(
    :entities,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity,
    type: :list
  )

  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
