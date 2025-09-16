SELECT
  -- order date (use session.date as proxy)
  s.date AS order_date,
  -- session id
  s.ga_session_id AS session_id,
  -- geography / device / browser / language from session_params
  sp.continent AS continent,
  sp.country AS country,
  sp.device AS device,
  sp.browser AS browser,
  sp.mobile_model_name AS device_model_name,
  sp.operating_system AS operating_system,
  sp.language AS browser_language,
  -- traffic fields from session_params
  sp.medium AS traffic_source_info,
  sp.channel AS traffic_channel,
  -- registered user id and account flags (LEFT JOINs keep all orders/sessions)
  acs.account_id AS registered_user_id,
  a.is_verified AS email_confirmed,
  a.is_unsubscribed AS is_unsubscribed,
  -- product fields
  p.category AS product_category,
  p.name AS product_name,
  CAST(p.price AS FLOAT64) AS price,
  p.short_description AS short_product_description
FROM `{BQ}.order` o
LEFT JOIN `{BQ}.session` s
  ON o.ga_session_id = s.ga_session_id
LEFT JOIN `{BQ}.session_params` sp
  ON s.ga_session_id = sp.ga_session_id
LEFT JOIN `{BQ}.account_session` acs
  ON s.ga_session_id = acs.ga_session_id
LEFT JOIN `{BQ}.account` a
  ON acs.account_id = a.id
LEFT JOIN `{BQ}.product` p
  ON o.item_id = p.item_id
