# SAMLProviderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  |
**authentication_flow** | **string** | Flow used for authentication when the associated application is accessed by an un-authenticated user. | [optional]
**authorization_flow** | **string** | Flow used when authorizing this provider. |
**invalidation_flow** | **string** | Flow used ending the session from a provider. |
**property_mappings** | **string[]** |  | [optional]
**acs_url** | **string** |  |
**sls_url** | **string** | Single Logout Service URL where the logout response should be sent. | [optional]
**audience** | **string** | Value of the audience restriction field of the assertion. When left empty, no audience restriction will be added. | [optional]
**issuer** | **string** | Also known as EntityID | [optional]
**assertion_valid_not_before** | **string** | Assertion valid not before current time + this value (Format: hours&#x3D;-1;minutes&#x3D;-2;seconds&#x3D;-3). | [optional]
**assertion_valid_not_on_or_after** | **string** | Assertion not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**session_valid_not_on_or_after** | **string** | Session not valid on or after current time + this value (Format: hours&#x3D;1;minutes&#x3D;2;seconds&#x3D;3). | [optional]
**name_id_mapping** | **string** | Configure how the NameID value will be created. When left empty, the NameIDPolicy of the incoming request will be considered | [optional]
**authn_context_class_ref_mapping** | **string** | Configure how the AuthnContextClassRef value will be created. When left empty, the AuthnContextClassRef will be set based on which authentication methods the user used to authenticate. | [optional]
**digest_algorithm** | [**\AuthentikApi\Old\Model\DigestAlgorithmEnum**](DigestAlgorithmEnum.md) |  | [optional]
**signature_algorithm** | [**\AuthentikApi\Old\Model\SignatureAlgorithmEnum**](SignatureAlgorithmEnum.md) |  | [optional]
**signing_kp** | **string** | Keypair used to sign outgoing Responses going to the Service Provider. | [optional]
**verification_kp** | **string** | When selected, incoming assertion&#39;s Signatures will be validated against this certificate. To allow unsigned Requests, leave on default. | [optional]
**encryption_kp** | **string** | When selected, incoming assertions are encrypted by the IdP using the public key of the encryption keypair. The assertion is decrypted by the SP using the the private key. | [optional]
**sign_assertion** | **bool** |  | [optional]
**sign_response** | **bool** |  | [optional]
**sign_logout_request** | **bool** |  | [optional]
**sp_binding** | [**\AuthentikApi\Old\Model\SAMLBindingsEnum**](SAMLBindingsEnum.md) | This determines how authentik sends the response back to the Service Provider. | [optional]
**sls_binding** | [**\AuthentikApi\Old\Model\SAMLBindingsEnum**](SAMLBindingsEnum.md) | This determines how authentik sends the logout response back to the Service Provider. | [optional]
**logout_method** | [**\AuthentikApi\Old\Model\SAMLLogoutMethods**](SAMLLogoutMethods.md) | Method to use for logout. Front-channel iframe loads all logout URLs simultaneously in hidden iframes. Front-channel native uses your active browser tab to send post requests and redirect to providers. Back-channel sends logout requests directly from the server without user interaction (requires POST SLS binding). | [optional]
**default_relay_state** | **string** | Default relay_state value for IDP-initiated logins | [optional]
**default_name_id_policy** | [**\AuthentikApi\Old\Model\SAMLNameIDPolicyEnum**](SAMLNameIDPolicyEnum.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
