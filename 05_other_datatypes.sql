DROP TABLE IF EXISTS basics.app_events;

CREATE TABLE basics.app_events(
    -- UUID - a sertain format of Unique ID
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    event_name TEXT NOT NULL,
    metadata JSONB DEFAULT '{}'::jsonb,
    created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO basics.app_events(event_name,metadata)
VALUES(
    'sign_up',
    '{"browser":"chrome"}'
);

SELECT * FROM basics.app_events;


select 
    event_name,
    metadata ->> 'browser' AS browser
FROM basics.app_events
WHERE metadata ? 'browser';