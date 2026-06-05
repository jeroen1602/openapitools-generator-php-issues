# OAuth2ProviderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**authentication_flow** | **string** | Flow used for authentication when the associated application is accessed by an un-authenticated user. | [optional]
**authorization_flow** | **string** | Flow used when authorizing this provider. |
**invalidation_flow** | **string** | Flow used ending the session from a provider. |
**property_mappings** | **string[]** |  | [optional]
**client_type** | [**\AuthentikApi\Old\Model\ClientTypeEnum**](ClientTypeEnum.md) | Confidential clients are capable of maintaining the confidentiality of their credentials. Public clients are incapable | [optional]
**client_id** | **string** |  | [optional]
**client_secret** | **string** |  | [optional]
**access_code_validity** | **string** | Access codes not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**access_token_validity** | **string** | Tokens not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**refresh_token_validity** | **string** | Tokens not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**refresh_token_threshold** | **string** | When refreshing a token, if the refresh token is valid for less than this duration, it will be renewed. When set to seconds&#x3D;0, token will always be renewed. (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**include_claims_in_id_token** | **bool** | Include User claims from scopes in the id_token, for applications that don&#39;t access the userinfo endpoint. | [optional]
**signing_key** | **string** | Key used to sign the tokens. | [optional]
**encryption_key** | **string** | Key used to encrypt the tokens. When set, tokens will be encrypted and returned as JWEs. | [optional]
**redirect_uris** | [**\AuthentikApi\Old\Model\RedirectURIRequest[]**](RedirectURIRequest.md) |  |
**logout_uri** | **string** |  | [optional]
**logout_method** | [**\AuthentikApi\Old\Model\OAuth2ProviderLogoutMethodEnum**](OAuth2ProviderLogoutMethodEnum.md) | Backchannel logs out with server to server calls. Frontchannel uses iframes in your browser | [optional]
**sub_mode** | [**\AuthentikApi\Old\Model\SubModeEnum**](SubModeEnum.md) | Configure what data should be used as unique User Identifier. For most cases, the default should be fine. | [optional]
**issuer_mode** | [**\AuthentikApi\Old\Model\IssuerModeEnum**](IssuerModeEnum.md) | Configure how the issuer field of the ID Token should be filled. | [optional]
**jwt_federation_sources** | **string[]** |  | [optional]
**jwt_federation_providers** | **int[]** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
