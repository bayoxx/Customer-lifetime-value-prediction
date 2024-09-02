-- Weekly cohort for customer segmentation and CLV
WITH
  formatted_events AS (
  SELECT
    PARSE_DATE('%Y%m%d', event_date) AS event_date_format,
    DATE_TRUNC(PARSE_DATE('%Y%m%d', event_date), WEEK) AS event_week,
    user_pseudo_id,
    event_value_in_usd,
    event_name
  FROM
    `tc-da-1.turing_data_analytics.raw_events` ),
  -- Weekly cohorts based on first visit
  registration AS (
  SELECT
    user_pseudo_id,
    DATE_TRUNC(MIN(event_date_format), WEEK) AS registration_week
  FROM
    formatted_events
  GROUP BY
    user_pseudo_id)
SELECT
  registration_week,
  count (DISTINCT registration.user_pseudo_id),
  SUM(IF (event_week = registration_week, event_value_in_usd, 0)) AS week_0,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 1 week), event_value_in_usd, 0)) AS week_1,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 2 week), event_value_in_usd, 0)) AS week_2,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 3 week), event_value_in_usd, 0)) AS week_3,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 4 week), event_value_in_usd, 0)) AS week_4,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 5 week), event_value_in_usd, 0)) AS week_5,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 6 week), event_value_in_usd, 0)) AS week_6,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 7 week), event_value_in_usd, 0)) AS week_7,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 8 week), event_value_in_usd, 0)) AS week_8,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 9 week), event_value_in_usd, 0)) AS week_9,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 10 week), event_value_in_usd, 0)) AS week_10,
  SUM(IF(event_week = DATE_ADD(registration_week, INTERVAL 11 week), event_value_in_usd, 0)) AS week_11,
  SUM(IF (event_week = DATE_ADD(registration_week, INTERVAL 12 week), event_value_in_usd, 0)) AS week_12,
FROM
  formatted_events
LEFT JOIN
  registration
ON
  formatted_events.user_pseudo_id = registration.user_pseudo_id
GROUP BY
  registration_week
ORDER BY
  registration_week;