CREATE TABLE call_center_clean AS
SELECT DISTINCT
    call_id,
    agent_name,
    customer_name,
    call_date,
    call_time,
    COALESCE(call_duration, 0) AS call_duration,
    COALESCE(issue_type, 'Unknown') AS issue_type,
    COALESCE(call_status, 'Unresolved') AS call_status
FROM call_center_raw;
