-- ============================================
-- TEST DATA FOR N8N REVENUE SYSTEM
-- ============================================

-- Insert Sales Representatives
INSERT INTO sales_reps (rep_id, name, email, region, workload) VALUES
('rep_001', 'Sarah Johnson', 'sarah@company.com', 'North America', 3),
('rep_002', 'Mike Chen', 'mike@company.com', 'Asia Pacific', 2),
('rep_003', 'Emma Rodriguez', 'emma@company.com', 'Europe', 4),
('rep_004', 'James Wilson', 'james@company.com', 'North America', 1),
('rep_005', 'Lisa Park', 'lisa@company.com', 'Asia Pacific', 5);

-- Insert Sample Leads (New)
INSERT INTO leads (lead_id, name, email, phone, company, company_size, industry, budget, timeline, source, status, qualification_score, qualification_level) VALUES
('lead_001', 'John Smith', 'john.smith@techcorp.com', '555-0101', 'TechCorp Inc', 500, 'Technology', 50000.00, 'ASAP', 'website_form', 'new', 0, NULL),
('lead_002', 'Mary Johnson', 'mary.j@finservices.com', '555-0102', 'FinServices LLC', 200, 'Finance', 25000.00, '1-3 months', 'linkedin_ads', 'new', 0, NULL),
('lead_003', 'Robert Davis', 'r.davis@healthsys.com', '555-0103', 'HealthSystems Corp', 750, 'Healthcare', 100000.00, 'ASAP', 'website_form', 'new', 0, NULL),
('lead_004', 'Jennifer Lee', 'jen.lee@retailco.com', '555-0104', 'RetailCo Group', 300, 'Retail', 15000.00, '3-6 months', 'facebook_ads', 'new', 0, NULL),
('lead_005', 'Michael Brown', 'mbrown@manufacturing.com', '555-0105', 'Manufacturing Plus', 600, 'Manufacturing', 75000.00, '1-3 months', 'website_form', 'new', 0, NULL),
('lead_006', 'Patricia White', 'pwhite@realestate.com', '555-0106', 'RealEstate Ventures', 150, 'Real Estate', 35000.00, 'ASAP', 'linkedin_ads', 'new', 0, NULL),
('lead_007', 'David Martinez', 'dmartinez@edutech.com', '555-0107', 'EduTech Solutions', 450, 'Technology', 60000.00, '1-3 months', 'website_form', 'new', 0, NULL),
('lead_008', 'Linda Garcia', 'lgarcia@logistics.com', '555-0108', 'Logistics Pro', 350, 'Logistics', 45000.00, 'ASAP', 'referral', 'new', 0, NULL),
('lead_009', 'Christopher Taylor', 'ctaylor@insurance.com', '555-0109', 'InsureNet Inc', 280, 'Insurance', 55000.00, '1-3 months', 'email_campaign', 'new', 0, NULL),
('lead_010', 'Susan Anderson', 'sanderson@pharma.com', '555-0110', 'PharmaTech Global', 520, 'Healthcare', 120000.00, 'ASAP', 'tradeshow', 'new', 0, NULL);

-- Insert Qualified Leads (HOT)
INSERT INTO leads (lead_id, name, email, phone, company, company_size, industry, budget, timeline, source, status, qualification_score, qualification_level, assigned_rep_id, assigned_at) VALUES
('lead_hot_001', 'Thomas Wilson', 'twilson@techventures.com', '555-0201', 'TechVentures Inc', 800, 'Technology', 150000.00, 'ASAP', 'website_form', 'qualified', 92, 'HOT', 'rep_001', NOW()),
('lead_hot_002', 'Amanda Foster', 'afoster@bankingsol.com', '555-0202', 'BankingSolutions Co', 450, 'Finance', 95000.00, 'ASAP', 'linkedin_ads', 'qualified', 88, 'HOT', 'rep_003', NOW()),
('lead_hot_003', 'Kevin Moore', 'kmoore@medicaltech.com', '555-0203', 'MedicalTech Systems', 600, 'Healthcare', 200000.00, 'ASAP', 'website_form', 'qualified', 95, 'HOT', 'rep_002', NOW());

-- Insert Qualified Leads (WARM)
INSERT INTO leads (lead_id, name, email, phone, company, company_size, industry, budget, timeline, source, status, qualification_score, qualification_level, assigned_rep_id, assigned_at) VALUES
('lead_warm_001', 'Rachel Green', 'rgreen@ecommerce.com', '555-0301', 'EcommerceGlobal Ltd', 350, 'Retail', 40000.00, '1-3 months', 'facebook_ads', 'qualified', 72, 'WARM', 'rep_004', NOW()),
('lead_warm_002', 'Brian Scott', 'bscott@logistics.io', '555-0302', 'LogisticsPro IO', 280, 'Logistics', 50000.00, '1-3 months', 'email_campaign', 'qualified', 65, 'WARM', 'rep_001', NOW()),
('lead_warm_003', 'Victoria King', 'vking@manufacturing.net', '555-0303', 'ManufacturingNet Plus', 420, 'Manufacturing', 60000.00, '3-6 months', 'website_form', 'qualified', 58, 'WARM', 'rep_005', NOW());

-- Insert Converted Leads (Won Deals)
INSERT INTO leads (lead_id, name, email, phone, company, company_size, industry, budget, timeline, source, status, qualification_score, qualification_level, assigned_rep_id, assigned_at, converted_at, deal_value) VALUES
('lead_won_001', 'Nicholas Hall', 'nhall@softwaretech.com', '555-0401', 'SoftwareTech Corp', 550, 'Technology', 85000.00, 'ASAP', 'website_form', 'converted', 89, 'HOT', 'rep_001', NOW() - INTERVAL '30 days', NOW() - INTERVAL '5 days', 85000.00),
('lead_won_002', 'Samantha Price', 'sprice@finantech.com', '555-0402', 'FinanTech Solutions', 380, 'Finance', 65000.00, '1-3 months', 'linkedin_ads', 'converted', 81, 'HOT', 'rep_003', NOW() - INTERVAL '35 days', NOW() - INTERVAL '10 days', 72500.00),
('lead_won_003', 'Gregory Adams', 'gadams@healthtech.com', '555-0403', 'HealthTech Innovations', 720, 'Healthcare', 150000.00, 'ASAP', 'website_form', 'converted', 94, 'HOT', 'rep_002', NOW() - INTERVAL '28 days', NOW() - INTERVAL '3 days', 150000.00),
('lead_won_004', 'Elizabeth Bell', 'ebell@retail.co', '555-0404', 'RetailPro Systems', 310, 'Retail', 48000.00, '1-3 months', 'facebook_ads', 'converted', 68, 'WARM', 'rep_004', NOW() - INTERVAL '42 days', NOW() - INTERVAL '15 days', 48000.00),
('lead_won_005', 'Marcus Johnson', 'mjohnson@manufacturing.io', '555-0405', 'ManufacturingIO Smart', 490, 'Manufacturing', 95000.00, '1-3 months', 'email_campaign', 'converted', 76, 'WARM', 'rep_005', NOW() - INTERVAL '45 days', NOW() - INTERVAL '20 days', 95000.00);

-- Insert Conversion Records (Revenue Tracking)
INSERT INTO conversions (lead_id, revenue, conversion_date, days_to_conversion) VALUES
('lead_won_001', 85000.00, NOW() - INTERVAL '5 days', 25),
('lead_won_002', 72500.00, NOW() - INTERVAL '10 days', 25),
('lead_won_003', 150000.00, NOW() - INTERVAL '3 days', 25),
('lead_won_004', 48000.00, NOW() - INTERVAL '15 days', 27),
('lead_won_005', 95000.00, NOW() - INTERVAL '20 days', 25);

-- Insert Email Sequences
INSERT INTO email_sequences (name, day_number, subject_line, email_body, template_type) VALUES
('Welcome Email', 0, 'Welcome to Our Platform - Get Started Today!', 
'Hi {{name}},\n\nThank you for your interest in our revenue generation platform!\n\nWe are excited to help {{company}} achieve unprecedented growth.\n\nBest regards,\nThe Revenue Team', 'welcome'),

('Product Information', 1, 'How {{company_type}} Companies Are Increasing Revenue 300%',
'Hi {{name}},\n\nWe wanted to share how companies like {{company}} are using our platform to:\n- Automate lead capture\n- Qualify prospects faster\n- Close deals 40% quicker\n\nLearn more: [LINK]\n\nBest regards', 'product_info'),

('Social Proof', 3, '{{company}} - See What Others Are Achieving',
'Hi {{name}},\n\nHere''s a case study from {{similar_company}}, a leader in {{industry}}, on how they:\n- Generated {{X}} new leads in 30 days\n- Increased close rate to 45%\n- Grew revenue to ${{revenue}}+\n\nView Case Study: [LINK]\n\nBest regards', 'case_study'),

('Limited Offer', 7, '⏰ EXCLUSIVE: Early Adopter Discount - Ends Friday',
'Hi {{name}},\n\n🎉 Special Offer for {{company}}\n\nAs an early adopter, we''re offering:\n✅ 40% off annual subscription\n✅ Free implementation (normally $10K)\n✅ Dedicated success manager\n\nThis exclusive deal expires Friday!\n\nClaim Your Discount: [LINK]\n\nBest regards', 'limited_offer'),

('Final Follow-up', 14, '{{name}}, Let''s Schedule a 15-Minute Demo',
'Hi {{name}},\n\nI wanted to reach out one more time.\n\nBased on your interest in {{product_interest}}, I think we can help {{company}} achieve {{goal}}.\n\nLet''s schedule a quick 15-minute call to discuss your specific needs.\n\nAvailable Times: [LINK TO CALENDAR]\n\nLooking forward to connecting!\n\nBest regards,\nThe Team', 'final_followup');

-- Display Summary
SELECT 'SEED DATA COMPLETE!' as status;
SELECT COUNT(*) as total_leads FROM leads;
SELECT COUNT(*) as total_sales_reps FROM sales_reps;
SELECT COUNT(*) as total_conversions FROM conversions;
SELECT SUM(revenue) as total_revenue_generated FROM conversions;
