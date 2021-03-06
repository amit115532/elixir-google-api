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

defmodule GoogleApi.Genomics.V1.Model.ImportReadGroupSetsRequest do
  @moduledoc """
  The read group set import request.

  ## Attributes

  - datasetId (String.t): Required. The ID of the dataset these read group sets will belong to. The caller must have WRITE permissions to this dataset. Defaults to: `null`.
  - partitionStrategy (String.t): The partition strategy describes how read groups are partitioned into read group sets. Defaults to: `null`.
    - Enum - one of [PARTITION_STRATEGY_UNSPECIFIED, PER_FILE_PER_SAMPLE, MERGE_ALL]
  - referenceSetId (String.t): The reference set to which the imported read group sets are aligned to, if any. The reference names of this reference set must be a superset of those found in the imported file headers. If no reference set id is provided, a best effort is made to associate with a matching reference set. Defaults to: `null`.
  - sourceUris ([String.t]): A list of URIs pointing at [BAM files](https://samtools.github.io/hts-specs/SAMv1.pdf) in Google Cloud Storage. Those URIs can include wildcards (*), but do not add or remove matching files before import has completed.  Note that Google Cloud Storage object listing is only eventually consistent: files added may be not be immediately visible to everyone. Thus, if using a wildcard it is preferable not to start the import immediately after the files are created. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datasetId => any(),
          :partitionStrategy => any(),
          :referenceSetId => any(),
          :sourceUris => list(any())
        }

  field(:datasetId)
  field(:partitionStrategy)
  field(:referenceSetId)
  field(:sourceUris, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.ImportReadGroupSetsRequest do
  def decode(value, options) do
    GoogleApi.Genomics.V1.Model.ImportReadGroupSetsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.ImportReadGroupSetsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
