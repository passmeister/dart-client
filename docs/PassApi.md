# swagger.api.PassApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrUpdatePass**](PassApi.md#createOrUpdatePass) | **POST** /pass | This method creates or (if the pass id already exists) updates a pass, so you don&#39;t have to track ids and creation status of your passes.
[**deletePass**](PassApi.md#deletePass) | **DELETE** /pass | Delete pass by pass id.
[**getPass**](PassApi.md#getPass) | **GET** /pass | Get pass information by pass id.
[**passList**](PassApi.md#passList) | **GET** /pass/list | Retrieve the list of active pass ids for a given pass type.
[**passSync**](PassApi.md#passSync) | **POST** /pass/sync | Send updates to all active passes for a given pass type.


# **createOrUpdatePass**
> createOrUpdatePass(passTypeId, passId)

This method creates or (if the pass id already exists) updates a pass, so you don't have to track ids and creation status of your passes.

This method creates or (if the pass id already exists) updates a pass, so you don't have to track ids and creation status of your passes.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PassApi();
var passTypeId = ; // Object | your pass type id, for example P963493 (Urban Fitness)
var passId = ; // Object | id of the pass (provided by you when creating the pass or automatically set by passmeister)

try { 
    api_instance.createOrUpdatePass(passTypeId, passId);
} catch (e) {
    print("Exception when calling PassApi->createOrUpdatePass: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passTypeId** | [**Object**](.md)| your pass type id, for example P963493 (Urban Fitness) | 
 **passId** | [**Object**](.md)| id of the pass (provided by you when creating the pass or automatically set by passmeister) | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePass**
> deletePass(passTypeId, passId)

Delete pass by pass id.

Delete pass by pass id.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PassApi();
var passTypeId = ; // Object | your pass type id, for example P963493 (Urban Fitness)
var passId = ; // Object | id of the pass

try { 
    api_instance.deletePass(passTypeId, passId);
} catch (e) {
    print("Exception when calling PassApi->deletePass: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passTypeId** | [**Object**](.md)| your pass type id, for example P963493 (Urban Fitness) | 
 **passId** | [**Object**](.md)| id of the pass | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPass**
> getPass(passTypeId, passId)

Get pass information by pass id.

Get pass information by pass id.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PassApi();
var passTypeId = ; // Object | your pass type id, for example P963493 (Urban Fitness)
var passId = ; // Object | id of the pass

try { 
    api_instance.getPass(passTypeId, passId);
} catch (e) {
    print("Exception when calling PassApi->getPass: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passTypeId** | [**Object**](.md)| your pass type id, for example P963493 (Urban Fitness) | 
 **passId** | [**Object**](.md)| id of the pass | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passList**
> passList(passTypeId, page, limit)

Retrieve the list of active pass ids for a given pass type.

Retrieve the list of active pass ids for a given pass type.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PassApi();
var passTypeId = ; // Object | your pass type id, for example P963493 (Urban Fitness)
var page = ; // Object | 
var limit = ; // Object | 

try { 
    api_instance.passList(passTypeId, page, limit);
} catch (e) {
    print("Exception when calling PassApi->passList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passTypeId** | [**Object**](.md)| your pass type id, for example P963493 (Urban Fitness) | 
 **page** | [**Object**](.md)|  | [optional] 
 **limit** | [**Object**](.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passSync**
> passSync(passTypeId)

Send updates to all active passes for a given pass type.

For example: you changed the pass type layout and now you want to update all installed passes. (The API call only confirms the scheduling of the updates, actual updating of passes on your customers devices can take a while.)

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PassApi();
var passTypeId = ; // Object | your pass type id, for example P963493 (Urban Fitness)

try { 
    api_instance.passSync(passTypeId);
} catch (e) {
    print("Exception when calling PassApi->passSync: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **passTypeId** | [**Object**](.md)| your pass type id, for example P963493 (Urban Fitness) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

