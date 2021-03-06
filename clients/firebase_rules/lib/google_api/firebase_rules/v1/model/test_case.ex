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

defmodule GoogleApi.FirebaseRules.V1.Model.TestCase do
  @moduledoc """
  &#x60;TestCase&#x60; messages provide the request context and an expectation as to whether the given context will be allowed or denied. Test cases may specify the &#x60;request&#x60;, &#x60;resource&#x60;, and &#x60;function_mocks&#x60; to mock a function call to a service-provided function.  The &#x60;request&#x60; object represents context present at request-time.  The &#x60;resource&#x60; is the value of the target resource as it appears in persistent storage before the request is executed.

  ## Attributes

  - expectation (String.t): Test expectation. Defaults to: `null`.
    - Enum - one of [EXPECTATION_UNSPECIFIED, ALLOW, DENY]
  - functionMocks ([FunctionMock]): Optional function mocks for service-defined functions. If not set, any service defined function is expected to return an error, which may or may not influence the test outcome. Defaults to: `null`.
  - request (String.t): Request context.  The exact format of the request context is service-dependent. See the appropriate service documentation for information about the supported fields and types on the request. Minimally, all services support the following fields and types:  Request field  | Type ---------------|----------------- auth.uid       | &#x60;string&#x60; auth.token     | &#x60;map&lt;string, string&gt;&#x60; headers        | &#x60;map&lt;string, string&gt;&#x60; method         | &#x60;string&#x60; params         | &#x60;map&lt;string, string&gt;&#x60; path           | &#x60;string&#x60; time           | &#x60;google.protobuf.Timestamp&#x60;  If the request value is not well-formed for the service, the request will be rejected as an invalid argument. Defaults to: `null`.
  - resource (String.t): Optional resource value as it appears in persistent storage before the request is fulfilled.  The resource type depends on the &#x60;request.path&#x60; value. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expectation => any(),
          :functionMocks => list(GoogleApi.FirebaseRules.V1.Model.FunctionMock.t()),
          :request => any(),
          :resource => any()
        }

  field(:expectation)
  field(:functionMocks, as: GoogleApi.FirebaseRules.V1.Model.FunctionMock, type: :list)
  field(:request)
  field(:resource)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.TestCase do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.TestCase.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.TestCase do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
