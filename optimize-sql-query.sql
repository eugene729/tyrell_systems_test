SELECT 
    J.id AS Jobs__id,
    J.name AS Jobs__name,
    J.media_id AS Jobs__media_id,
    J.job_category_id AS Jobs__job_category_id,
    J.job_type_id AS Jobs__job_type_id,
    J.description AS Jobs__description,
    J.sort_order AS Jobs__sort_order,
    J.publish_status AS Jobs__publish_status,
    J.version AS Jobs__version,
    J.created_by AS Jobs__created_by,
    J.created AS Jobs__created,
    J.modified AS Jobs__modified,
    J.deleted AS Jobs__deleted,
    JC.id AS JobCategories__id,
    JC.name AS JobCategories__name,
    JC.sort_order AS JobCategories__sort_order,
    JT.id AS JobTypes__id,
    JT.name AS JobTypes__name,
    JT.job_category_id AS JobTypes__job_category_id,
    JT.sort_order AS JobTypes__sort_order
FROM jobs J
LEFT JOIN job_categories JC ON J.job_category_id = JC.id
LEFT JOIN job_types JT ON J.job_type_id = JT.id
WHERE (
    JC.name LIKE '%キャビンアテンダント%'
    OR JT.name LIKE '%キャビンアテンダント%'
    OR J.name LIKE '%キャビンアテンダント%'
    OR J.description LIKE '%キャビンアテンダント%'
)
AND J.publish_status = 1
AND J.deleted IS NULL
ORDER BY J.sort_order DESC, J.id DESC
LIMIT 50 OFFSET 0;
