# Eduframe::Course

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the course | 
**position** | **Float** | Sorting position of the course. Lower is higher. | 
**starting_price** | **String** | Lowest price of all of its planned courses. | 
**signup_url** | **String** | URL to the signup page for this course. | 
**slug** | **String** | Human readable identifier, unique per educator. | 
**slug_history** | **Array&lt;String&gt;** | List of old slugs, old calls will be redirected. | 
**avatar** | **String** | URL to the original avatar image file. | 
**avatar_url** | **String** | URL to a resized avatar image (300x200^). | 
**avatar_thumb_url** | **String** | URL to a resized avatar image (748x296^). | 
**conditions_or_default** | **String** | Conditions for this course with a fallback to the default course conditions of the educator. | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**website_url** | **String** | Expected URL of the course on the educator website. | 
**certificate_template_id** | **Float** | Identifier of the optionally linked certificate template. | 
**category_id** | **Float** | Identifier of the category of the course. | 
**name** | **String** | The name of the course. | 
**code** | **String** | The code of the course. | 
**duration** | **String** | The duration of the course. | [optional] 
**level** | **String** | A string indicating the level of the course. | [optional] 
**meta_title** | **String** | Meta title of the course for SEO purposes. | [optional] 
**meta_description** | **String** | Meta description of the course for SEO purposes. | [optional] 
**result** | **String** | The result of the course | [optional] 
**cost** | **String** | The price to be paid for this course. | [optional] 
**cost_scheme** | **String** | How should the course be paid by default. | [optional] 
**is_published** | **BOOLEAN** | Boolean representing the publishable status of the course. | [optional] 
**custom** | **Object** | The custom properties of the program. | [optional] 
**category** | **Object** |  | [optional] 
**course_tab_contents** | **Array&lt;Object&gt;** |  | [optional] 
**credit_definitions** | **Array&lt;Object&gt;** |  | [optional] 
**labels** | **Array&lt;Object&gt;** |  | [optional] 
**course_tab_contents_attributes** | **Array&lt;Object&gt;** |  | [optional] 


