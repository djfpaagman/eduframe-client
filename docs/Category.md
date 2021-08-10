# Eduframe::Category

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Float** | Unique identifier of the category. | 
**position** | **Float** | Sorting position of the category. Lower is higher. | 
**avatar** | **String** | URL to the original avatar image file. | 
**avatar_url** | **String** | URL to a resized avatar image (300x200^). | 
**products_count** | **Float** | Number of products directly linked to this category. | 
**courses_count** | **Float** | Number of courses directly linked to this category. | 
**children_count** | **Float** | Number of children categories directly linked to this category. | 
**created_at** | **String** | Timestamp of creation. | 
**updated_at** | **String** | Timestamp of last update. | 
**name** | **String** | Title of the category. | 
**slug** | **String** | Friendly identifier of a category. | [optional] 
**description** | **String** | The description of the category. | [optional] 
**is_published** | **BOOLEAN** | Boolean if the category is published on the website. | [optional] 
**meta_title** | **String** | The meta title of the category, used for SEO (Search Engine Optimisation) purposes. | [optional] 
**meta_description** | **String** | The meta description of the category, used for SEO (Search Engine Optimisation) purposes. | [optional] 
**parent_id** | **Float** | Unique identifier of the parent category | [optional] 


