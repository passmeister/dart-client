part of swagger.api;



class PassApi {
  final ApiClient apiClient;

  PassApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// This method creates or (if the pass id already exists) updates a pass, so you don&#39;t have to track ids and creation status of your passes.
  ///
  /// This method creates or (if the pass id already exists) updates a pass, so you don&#39;t have to track ids and creation status of your passes.
  Future createOrUpdatePass(Object passTypeId, { Object passId }) async {
    Object postBody = null;

    // verify required params are set
    if(passTypeId == null) {
     throw new ApiException(400, "Missing required param: passTypeId");
    }

    // create path and map variables
    String path = "/pass".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "passTypeId", passTypeId));
    if(passId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "passId", passId));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// Delete pass by pass id.
  ///
  /// Delete pass by pass id.
  Future deletePass(Object passTypeId, Object passId) async {
    Object postBody = null;

    // verify required params are set
    if(passTypeId == null) {
     throw new ApiException(400, "Missing required param: passTypeId");
    }
    if(passId == null) {
     throw new ApiException(400, "Missing required param: passId");
    }

    // create path and map variables
    String path = "/pass".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "passTypeId", passTypeId));
      queryParams.addAll(_convertParametersForCollectionFormat("", "passId", passId));
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// Get pass information by pass id.
  ///
  /// Get pass information by pass id.
  Future getPass(Object passTypeId, Object passId) async {
    Object postBody = null;

    // verify required params are set
    if(passTypeId == null) {
     throw new ApiException(400, "Missing required param: passTypeId");
    }
    if(passId == null) {
     throw new ApiException(400, "Missing required param: passId");
    }

    // create path and map variables
    String path = "/pass".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "passTypeId", passTypeId));
      queryParams.addAll(_convertParametersForCollectionFormat("", "passId", passId));
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// Retrieve the list of active pass ids for a given pass type.
  ///
  /// Retrieve the list of active pass ids for a given pass type.
  Future passList(Object passTypeId, { Object page, Object limit }) async {
    Object postBody = null;

    // verify required params are set
    if(passTypeId == null) {
     throw new ApiException(400, "Missing required param: passTypeId");
    }

    // create path and map variables
    String path = "/pass/list".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "passTypeId", passTypeId));
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// Send updates to all active passes for a given pass type.
  ///
  /// For example: you changed the pass type layout and now you want to update all installed passes. (The API call only confirms the scheduling of the updates, actual updating of passes on your customers devices can take a while.)
  Future passSync(Object passTypeId) async {
    Object postBody = null;

    // verify required params are set
    if(passTypeId == null) {
     throw new ApiException(400, "Missing required param: passTypeId");
    }

    // create path and map variables
    String path = "/pass/sync".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "passTypeId", passTypeId));
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
}
