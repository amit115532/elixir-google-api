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

defmodule GoogleApi.DeploymentManager.V2.Model.GlobalSetPolicyRequest do
  @moduledoc """


  ## Attributes

  - bindings ([Binding]): Flatten Policy to create a backwacd compatible wire-format. Deprecated. Use &#39;policy&#39; to specify bindings. Defaults to: `null`.
  - etag (binary()): Flatten Policy to create a backward compatible wire-format. Deprecated. Use &#39;policy&#39; to specify the etag. Defaults to: `null`.
  - policy (Policy): REQUIRED: The complete policy to be applied to the &#39;resource&#39;. The size of the policy is limited to a few 10s of KB. An empty policy is in general a valid policy but certain services (like Projects) might reject them. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bindings => list(GoogleApi.DeploymentManager.V2.Model.Binding.t()),
          :etag => any(),
          :policy => GoogleApi.DeploymentManager.V2.Model.Policy.t()
        }

  field(:bindings, as: GoogleApi.DeploymentManager.V2.Model.Binding, type: :list)
  field(:etag)
  field(:policy, as: GoogleApi.DeploymentManager.V2.Model.Policy)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.GlobalSetPolicyRequest do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.GlobalSetPolicyRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.GlobalSetPolicyRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
