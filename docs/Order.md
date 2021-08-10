# Eduframe::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the order. | 
**number** | **Float** | Educator specific identifier of the order which autoincrements. | 
**status** | **String** | State of the order. | 
**number_of_students** | **Float** | Number of students in this order. | 
**origin** | **String** | Where the order originated from ex. Unknown, backend, signup. | 
**customer_comment** | **String** | Comment from the customer. | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**cost** | **String** | Decimal representing the value of the order | [optional] 
**cost_scheme** | **String** | The cost schema that the payment will follow for the specified order. | [optional] 
**catalog_variant_id** | **Float** | Unique identifier of the orders CatalogVariant. | [optional] 
**account_id** | **Float** | Unique identifier of the orders Account. | [optional] 
**planned_course_id** | **Float** | *DEPRECATED*: Use catalog_variant_id instead. Unique identifier of the order&#39;s planned course.  | [optional] 
**student_ids** | **Array&lt;String&gt;** | Array of student ids | [optional] 
**creator_id** | **Float** | Unique identifier of the orders Creator (User). | [optional] 
**payment_option_id** | **Float** | Unique identifier of the orders PaymentOption. | [optional] 
**payment_method_id** | **Float** | Unique identifier of the orders PaymentMethod. | [optional] 
**custom** | **Object** | The custom properties of the order. | [optional] 
**account** | **Object** |  | [optional] 
**catalog_product** | **Object** |  | [optional] 
**catalog_variant** | **Object** |  | [optional] 
**creator** | **Object** |  | [optional] 
**enrollments** | **Array&lt;Object&gt;** |  | [optional] 
**labels** | **Array&lt;Object&gt;** |  | [optional] 


