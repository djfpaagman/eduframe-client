# Eduframe::Product

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the catalog product. | 
**name** | **String** | Name of the product. | 
**cost_scheme** | **String** | How should the product be paid by default. | 
**cost** | **String** | Cost of the product. | 
**currency** | **String** | The currency of the cost. | 
**productable_type** | **String** | Type of the productable. | 
**productable_id** | **Float** | Unique identifier of the productable. | 
**avatar** | **String** | URL to the original avatar image file. | 
**position** | **Float** | Sorting position of the element. Lower is higher. | 
**conditions_or_default** | **String** | Conditions for this product with a fallback to the default course conditions of the educator. | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**category_id** | **Float** | Identifier of the category of the course. | [optional] 
**is_published** | **BOOLEAN** | Boolean showing if the product is published or not. | [optional] 
**custom** | **Object** | The custom properties of the product. | [optional] 
**labels** | **Array&lt;Object&gt;** |  | [optional] 
**course_tab_contents** | **Array&lt;Object&gt;** |  | [optional] 
**plugin_data** | **Array&lt;Object&gt;** |  | [optional] 


