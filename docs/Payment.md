# Eduframe::Payment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the payment. | 
**invoice_id** | **Float** | Unique identifier of the linked invoice. | 
**gateway_id** | **String** | The payment provider payment id. | 
**status** | **String** | The status of the payment. | 
**amount** | **String** | A number representing the total amount of the invoice. | 
**currency** | **String** | The currency used for the payment. | [optional] 
**date** | **String** | Date on which the payment was created. | [optional] 
**payment_method_id** | **Float** | Identifier of the payment method. | 
**payment_method** | **Object** |  | [optional] 
**plugin_data** | **Array&lt;Object&gt;** |  | [optional] 


