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

defmodule GoogleApi.CloudFunctions.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.CloudFunctions.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Invokes synchronously deployed function. To be used for testing, very limited traffic allowed.

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The name of the function to be called.
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - functions_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :body (CallFunctionRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.CallFunctionResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_projects_locations_functions_call(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudFunctions.V1.Model.CallFunctionResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudfunctions_projects_locations_functions_call(
        connection,
        projects_id,
        locations_id,
        functions_id,
        opts \\ []
      ) do
    optional_params = %{
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}:call",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "functionsId" => URI.encode_www_form(functions_id)
        }
      )
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudFunctions.V1.Model.CallFunctionResponse{})
  end

  @doc """
  Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return &#x60;ALREADY_EXISTS&#x60; error.

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;location&#x60;. The project and location in which the function should be created, specified in the format &#x60;projects/*/locations/*&#x60;
  - locations_id (String.t): Part of &#x60;location&#x60;. See documentation of &#x60;projectsId&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :body (CloudFunction): 

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_projects_locations_functions_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.CloudFunctions.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def cloudfunctions_projects_locations_functions_create(
        connection,
        projects_id,
        locations_id,
        opts \\ []
      ) do
    optional_params = %{
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/projects/{projectsId}/locations/{locationsId}/functions", %{
        "projectsId" => URI.encode_www_form(projects_id),
        "locationsId" => URI.encode_www_form(locations_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudFunctions.V1.Model.Operation{})
  end

  @doc """
  Deletes a function with the given name from the specified project. If the given function is used by some trigger, the trigger will be updated to remove this function.

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The name of the function which should be deleted.
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - functions_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_projects_locations_functions_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.CloudFunctions.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def cloudfunctions_projects_locations_functions_delete(
        connection,
        projects_id,
        locations_id,
        functions_id,
        opts \\ []
      ) do
    optional_params = %{
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url(
        "/v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "functionsId" => URI.encode_www_form(functions_id)
        }
      )
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudFunctions.V1.Model.Operation{})
  end

  @doc """
  Returns a signed URL for downloading deployed function source code. The URL is only valid for a limited period and should be used within minutes after generation. For more information about the signed URL usage see: https://cloud.google.com/storage/docs/access-control/signed-urls

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The name of function for which source code Google Cloud Storage signed URL should be generated.
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - functions_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :body (GenerateDownloadUrlRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.GenerateDownloadUrlResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_projects_locations_functions_generate_download_url(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudFunctions.V1.Model.GenerateDownloadUrlResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudfunctions_projects_locations_functions_generate_download_url(
        connection,
        projects_id,
        locations_id,
        functions_id,
        opts \\ []
      ) do
    optional_params = %{
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}:generateDownloadUrl",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "functionsId" => URI.encode_www_form(functions_id)
        }
      )
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudFunctions.V1.Model.GenerateDownloadUrlResponse{})
  end

  @doc """
  Returns a signed URL for uploading a function source code. For more information about the signed URL usage see: https://cloud.google.com/storage/docs/access-control/signed-urls. Once the function source code upload is complete, the used signed URL should be provided in CreateFunction or UpdateFunction request as a reference to the function source code.  When uploading source code to the generated signed URL, please follow these restrictions:  * Source file type should be a zip file. * Source file size should not exceed 100MB limit.  When making a HTTP PUT request, these two headers need to be specified:  * &#x60;content-type: application/zip&#x60; * &#x60;x-goog-content-length-range: 0,104857600&#x60;

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;parent&#x60;. The project and location in which the Google Cloud Storage signed URL should be generated, specified in the format &#x60;projects/*/locations/*&#x60;.
  - locations_id (String.t): Part of &#x60;parent&#x60;. See documentation of &#x60;projectsId&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :body (GenerateUploadUrlRequest): 

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.GenerateUploadUrlResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_projects_locations_functions_generate_upload_url(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudFunctions.V1.Model.GenerateUploadUrlResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudfunctions_projects_locations_functions_generate_upload_url(
        connection,
        projects_id,
        locations_id,
        opts \\ []
      ) do
    optional_params = %{
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/v1/projects/{projectsId}/locations/{locationsId}/functions:generateUploadUrl",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id)
        }
      )
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudFunctions.V1.Model.GenerateUploadUrlResponse{})
  end

  @doc """
  Returns a function with the given name from the requested project.

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The name of the function which details should be obtained.
  - locations_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - functions_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.CloudFunction{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_projects_locations_functions_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.CloudFunctions.V1.Model.CloudFunction.t()} | {:error, Tesla.Env.t()}
  def cloudfunctions_projects_locations_functions_get(
        connection,
        projects_id,
        locations_id,
        functions_id,
        opts \\ []
      ) do
    optional_params = %{
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "functionsId" => URI.encode_www_form(functions_id)
        }
      )
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudFunctions.V1.Model.CloudFunction{})
  end

  @doc """
  Returns a list of functions that belong to the requested project.

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;parent&#x60;. The project and location from which the function should be listed, specified in the format &#x60;projects/*/locations/*&#x60; If you want to list functions in all locations, use \&quot;-\&quot; in place of a location.
  - locations_id (String.t): Part of &#x60;parent&#x60;. See documentation of &#x60;projectsId&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pageToken (String.t): The value returned by the last &#x60;ListFunctionsResponse&#x60;; indicates that this is a continuation of a prior &#x60;ListFunctions&#x60; call, and that the system should return the next page of data.
    - :pageSize (integer()): Maximum number of functions to return per call.

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.ListFunctionsResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_projects_locations_functions_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudFunctions.V1.Model.ListFunctionsResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudfunctions_projects_locations_functions_list(
        connection,
        projects_id,
        locations_id,
        opts \\ []
      ) do
    optional_params = %{
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :pageToken => :query,
      :pageSize => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/projects/{projectsId}/locations/{locationsId}/functions", %{
        "projectsId" => URI.encode_www_form(projects_id),
        "locationsId" => URI.encode_www_form(locations_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudFunctions.V1.Model.ListFunctionsResponse{})
  end

  @doc """
  Updates existing function.

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;function.name&#x60;. A user-defined name of the function. Function names must be unique globally and match pattern &#x60;projects/*/locations/*/functions/*&#x60;
  - locations_id (String.t): Part of &#x60;function.name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - functions_id (String.t): Part of &#x60;function.name&#x60;. See documentation of &#x60;projectsId&#x60;.
  - opts (KeywordList): [optional] Optional parameters
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :updateMask (String.t): Required list of fields to be updated in this request.
    - :body (CloudFunction): 

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_projects_locations_functions_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.CloudFunctions.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def cloudfunctions_projects_locations_functions_patch(
        connection,
        projects_id,
        locations_id,
        functions_id,
        opts \\ []
      ) do
    optional_params = %{
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url(
        "/v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "locationsId" => URI.encode_www_form(locations_id),
          "functionsId" => URI.encode_www_form(functions_id)
        }
      )
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudFunctions.V1.Model.Operation{})
  end

  @doc """
  Lists information about the supported locations for this service.

  ## Parameters

  - connection (GoogleApi.CloudFunctions.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The resource that owns the locations collection, if applicable.
  - opts (KeywordList): [optional] Optional parameters
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :filter (String.t): The standard list filter.
    - :pageToken (String.t): The standard list page token.
    - :pageSize (integer()): The standard list page size.

  ## Returns

  {:ok, %GoogleApi.CloudFunctions.V1.Model.ListLocationsResponse{}} on success
  {:error, info} on failure
  """
  @spec cloudfunctions_projects_locations_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.CloudFunctions.V1.Model.ListLocationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudfunctions_projects_locations_list(connection, projects_id, opts \\ []) do
    optional_params = %{
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :filter => :query,
      :pageToken => :query,
      :pageSize => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/projects/{projectsId}/locations", %{
        "projectsId" => URI.encode_www_form(projects_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.CloudFunctions.V1.Model.ListLocationsResponse{})
  end
end
