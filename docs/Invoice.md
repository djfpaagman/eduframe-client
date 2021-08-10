# Eduframe::Invoice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the invoice. | 
**reference_id** | **String** | Reference id of the Invoice. Is used to find the invoice. | 
**number_int** | **Float** | The invoice number converted to an integer value. | 
**order_number** | **Float** | The order number of the invoice. | 
**status** | **String** | The status of the invoice. The initial status will always be concept. | 
**expiration_date** | **String** | The expiration date of the invoice. Is set when the invoice is set to open. | 
**opened_at** | **String** | The date when the invoice status was changed to open. | 
**description** | **String** | Human readable description of the invoice. | 
**account_name** | **String** | The name of the account that is paying. Is copied to the invoice and is thus not automatically updated if the account name changes. | 
**currency** | **String** | The currency of the invoice. | 
**total_incl** | **String** | The total cost of the invoice including VAT. | 
**total_excl** | **String** | The total cost of the invoice excluding VAT. | 
**total_open** | **String** | The open cost of the invoice including VAT. | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**pdf_url** | **String** | Url to the download path of the invoice in PDF format. | 
**xml_url** | **String** | Url to the download path of the invoice in UML format. | 
**number** | **String** | The invoice number which is unique per educator. If left empty, it autoincrements. | [optional] 
**account_id** | **Float** | Identifier of the account. | 
**invoice_set_id** | **Float** | Unique identifier of the invoice set. | [optional] 
**feature** | **String** | Some description of the invoice which is displayed on the invoice. | [optional] 
**footnote** | **String** | The note displayed at the bottom of the invoice. | [optional] 
**plugin_data** | **Array&lt;Object&gt;** |  | [optional] 
**order** | **Object** |  | [optional] 
**payments** | **Array&lt;Object&gt;** |  | [optional] 
**invoice_items** | **Array&lt;Object&gt;** |  | [optional] 


