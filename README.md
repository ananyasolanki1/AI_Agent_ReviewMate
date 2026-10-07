# ReviewMate

AI-powered customer review analysis and mobile phone recommendation system using **LangChain, Groq, Gradio, and MySQL**. It analyzes reviews for sentiment and emotion, then recommends two similarly priced phones for potential exchange or replacement.

## Live Demo

[ReviewMate Web App](https://aiagentreviewmate-production.up.railway.app/)

## How It Works

1. The user selects a phone and submits a review.
2. A **LangChain AI agent** processes the review using two tools:
   - `analyze_mood` — analyzes sentiment and emotion using the Groq LLM.
   - `recommend_products` — retrieves similar-priced phones from MySQL and uses the LLM to select two recommendations.
3. The review, analysis, and recommendations are stored in MySQL.
4. The results are displayed through the Gradio interface.

## Setup

### 1. Clone the repository

```bash
git clone <repository-url>
cd MOODMATE
```

### 2. Install dependencies

Make sure Python and MySQL are installed.

```bash
pip install -r requirements.txt
```

### 3. Configure environment variables

Create a `.env` file in the project root:

```env
GROQ_API_KEY=your_groq_api_key
MYSQLHOST=localhost
MYSQLPORT=3306
MYSQLUSER=root
MYSQLPASSWORD=your_mysql_password
MYSQLDATABASE=moodmate
```

### 4. Set up the database

```bash
mysql -u root -p < schema.sql
```

### 5. Load the mobile phone data

```bash
python data/load_products.py
```

### 6. Run ReviewMate

```bash
python app.py
```

The Gradio interface will open in your browser.

## Tech Stack

- **Python**
- **LangChain** — AI agent and tool orchestration
- **Groq** — LLM inference
- **Gradio** — Web interface
- **MySQL** — Product and review data
- **Pandas** — Data processing

## Deployment

Deployed on **Railway** with a Railway MySQL database.

## Security

Never commit `.env` or expose API keys and database credentials.
