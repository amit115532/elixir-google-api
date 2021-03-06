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

defmodule GoogleApi.ToolResults.V1beta3.Model.ListPerfSamplesResponse do
  @moduledoc """


  ## Attributes

  - nextPageToken (String.t): Optional, returned if result size exceeds the page size specified in the request (or the default page size, 500, if unspecified). It indicates the last sample timestamp to be used as page_token in subsequent request Defaults to: `null`.
  - perfSamples ([PerfSample]):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => any(),
          :perfSamples => list(GoogleApi.ToolResults.V1beta3.Model.PerfSample.t())
        }

  field(:nextPageToken)
  field(:perfSamples, as: GoogleApi.ToolResults.V1beta3.Model.PerfSample, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.ListPerfSamplesResponse do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.ListPerfSamplesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.ListPerfSamplesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
