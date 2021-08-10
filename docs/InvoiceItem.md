# Eduframe::InvoiceItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the invoice item. | 
**catalog_variant_id** | **Float** | Unique identifier of the catalog variant. | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**units** | **Float** | Integer representing the number of units of the invoice item. | [optional] 
**unit_price** | **String** | Decimal representing the price of an unit. | [optional] 
**name** | **String** | The name of the invoice item. | [optional] 
**invoice_vat_id** | **Float** | Identifier of the invoice vat. | [optional] 
**_destroy** | **BOOLEAN** | Set if you want to delete this item. | [optional] 
**invoice_vat** | **Object** |  | [optional] 
**plugin_data** | **Array&lt;Object&gt;** |  | [optional] 


