CREATE TABLE IF NOT EXISTS leads (
    lead_id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20),
    company VARCHAR(255),
    company_size INT,
    industry VARCHAR(100),
    budget DECIMAL(12,2),
    timeline VARCHAR(50),
    source VARCHAR(100),
    status VARCHAR(50) DEFAULT 'new',
    qualification_score INT DEFAULT 0,
    qualification_level VARCHAR(20),
    assigned_rep_id VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS sales_reps (
    rep_id VARCHAR(100) PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    region VARCHAR(100),
    workload INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS conversions (
    conversion_id SERIAL PRIMARY KEY,
    lead_id VARCHAR(255),
    revenue DECIMAL(12,2),
    conversion_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (lead_id) REFERENCES leads(lead_id)
);

CREATE INDEX idx_leads_email ON leads(email);
CREATE INDEX idx_leads_status ON leads(status);
CREATE INDEX idx_conversions_lead_id ON conversions(lead_id);