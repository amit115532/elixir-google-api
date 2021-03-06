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

defmodule GoogleApi.Games.V1.Model.PlayerExperienceInfo do
  @moduledoc """
  This is a JSON template for 1P/3P metadata about the player&#39;s experience.

  ## Attributes

  - currentExperiencePoints (String.t): The current number of experience points for the player. Defaults to: `null`.
  - currentLevel (PlayerLevel): The current level of the player. Defaults to: `null`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#playerExperienceInfo. Defaults to: `null`.
  - lastLevelUpTimestampMillis (String.t): The timestamp when the player was leveled up, in millis since Unix epoch UTC. Defaults to: `null`.
  - nextLevel (PlayerLevel): The next level of the player. If the current level is the maximum level, this should be same as the current level. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentExperiencePoints => any(),
          :currentLevel => GoogleApi.Games.V1.Model.PlayerLevel.t(),
          :kind => any(),
          :lastLevelUpTimestampMillis => any(),
          :nextLevel => GoogleApi.Games.V1.Model.PlayerLevel.t()
        }

  field(:currentExperiencePoints)
  field(:currentLevel, as: GoogleApi.Games.V1.Model.PlayerLevel)
  field(:kind)
  field(:lastLevelUpTimestampMillis)
  field(:nextLevel, as: GoogleApi.Games.V1.Model.PlayerLevel)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.PlayerExperienceInfo do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.PlayerExperienceInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.PlayerExperienceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
