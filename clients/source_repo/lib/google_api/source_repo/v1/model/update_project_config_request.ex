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

defmodule GoogleApi.SourceRepo.V1.Model.UpdateProjectConfigRequest do
  @moduledoc """
  Request for UpdateProjectConfig.

  ## Attributes

  - projectConfig (ProjectConfig): The new configuration for the project. Defaults to: `null`.
  - updateMask (String.t): A FieldMask specifying which fields of the project_config to modify. Only the fields in the mask will be modified. If no mask is provided, this request is no-op. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :projectConfig => GoogleApi.SourceRepo.V1.Model.ProjectConfig.t(),
          :updateMask => any()
        }

  field(:projectConfig, as: GoogleApi.SourceRepo.V1.Model.ProjectConfig)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.SourceRepo.V1.Model.UpdateProjectConfigRequest do
  def decode(value, options) do
    GoogleApi.SourceRepo.V1.Model.UpdateProjectConfigRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SourceRepo.V1.Model.UpdateProjectConfigRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end