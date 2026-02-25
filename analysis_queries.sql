-- Total calls handled
SELECT COUNT(*) AS total_calls
FROM call_center_clean;

-- Calls handled by each agent
SELECT agent_name,
       COUNT(*) AS total_calls
FROM call_center_clean
GROUP BY agent_name;

-- Average call duration per agent
SELECT agent_name,
       AVG(call_duration) AS avg_duration
FROM call_center_clean
GROUP BY agent_name;

-- Resolved vs Unresolved calls
SELECT call_status,
       COUNT(*) AS count_calls
FROM call_center_clean
GROUP BY call_status;

-- Most common issue type
SELECT issue_type,
       COUNT(*) AS issue_count
FROM call_center_clean
GROUP BY issue_type
ORDER BY issue_count DESC;
