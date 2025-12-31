-- Contacts table
CREATE TABLE IF NOT EXISTS contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone TEXT,
    email TEXT,
    category TEXT CHECK(category IN ('family', 'work', 'friends', 'other')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Index for faster searches
CREATE INDEX IF NOT EXISTS idx_contacts_name ON contacts(last_name, first_name);
CREATE INDEX IF NOT EXISTS idx_contacts_category ON contacts(category);