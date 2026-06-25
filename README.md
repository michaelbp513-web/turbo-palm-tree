# N8N Revenue Generation System 🚀💰

A complete, production-ready n8n workflow automation system designed to generate revenue through intelligent lead generation, qualification, and sales funnel management.

## 📊 System Overview

```
Captures Leads → Qualifies Them → Syncs to CRM → Assigns to Sales → 
Sends Follow-ups → Tracks Conversions → Reports Revenue
```

## 🎯 Key Features

### 1. **Multi-Channel Lead Capture**
- Website form submissions via webhooks
- Automatic duplicate detection
- Data enrichment

### 2. **Intelligent Lead Qualification**
- Automated lead scoring (0-100 points)
- 3-tier classification: HOT, WARM, COLD

### 3. **Multi-CRM Synchronization**
- HubSpot integration
- Salesforce integration
- Airtable support
- Pipedrive integration

### 4. **Intelligent Sales Assignment**
- Auto-assigns to sales reps
- Workload balancing
- Slack notifications

### 5. **Automated Email Sequences**
- 5-email nurture campaigns
- Day 0, 1, 3, 7, 14 follow-ups
- SendGrid & Mailgun integration

### 6. **Conversion & Revenue Tracking**
- Real-time deal tracking
- ROI analysis by source
- Revenue dashboards

## 🚀 Quick Start

### Prerequisites
- Docker & Docker Compose installed
- Git

### Run the System

```bash
# Clone the repo
git clone https://github.com/michaelbp513-web/turbo-palm-tree.git
cd turbo-palm-tree

# Start the system
docker-compose up -d

# Check status
docker-compose ps
```

### Access Points

- **N8N Workflow Editor**: http://localhost:5678
- **Database Admin (PgAdmin)**: http://localhost:5050
  - Email: admin@example.com
  - Password: admin
- **PostgreSQL**: localhost:5432

### Configuration

1. **Copy environment template**
```bash
cp config/.env.example .env
```

2. **Edit `.env`** with your API keys:
   - HUBSPOT_API_KEY
   - SENDGRID_API_KEY
   - SLACK_BOT_TOKEN
   - Other integrations

3. **Restart N8N**
```bash
docker-compose restart n8n
```

## 📈 Revenue Potential

**Conservative Estimates:**
- 100 leads/month captured
- 2-5% conversion rate
- $5,000-$50,000 average deal
- **$10,000-$250,000+ monthly revenue potential**

## 🔧 Workflows Included

| Workflow | Purpose |
|----------|----------|
| 01-lead-capture.json | Capture leads from multiple sources |
| 02-lead-qualification.json | Score and qualify leads |
| 03-crm-sync.json | Sync to CRM platforms |
| 04-sales-assignment.json | Assign to sales reps |
| 05-automated-followup.json | Send email sequences |
| 06-conversion-tracking.json | Track deals and revenue |

## 💾 Database Schema

**Tables:**
- `leads` - Lead information and qualification
- `sales_reps` - Sales team members
- `conversions` - Closed deals and revenue

## 📊 Analytics

Use included SQL queries to generate:
- Revenue dashboards
- Sales performance metrics
- Lead funnel analysis
- Email campaign effectiveness

## 🛑 Stop the System

```bash
docker-compose down
```

## 📞 Support

- [N8N Documentation](https://docs.n8n.io/)
- [N8N Community](https://community.n8n.io/)
- [GitHub Issues](https://github.com/michaelbp513-web/turbo-palm-tree/issues)

---

**Ready to automate your revenue generation?** 🚀

Start by importing the workflows into N8N and configuring your integrations!