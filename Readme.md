# Nginx Log Analyzer (Shell Script)

A simple command-line tool written in **Bash** to analyze **Nginx access logs** and extract useful insights such as the most active IPs, requested paths, response status codes, and user agents.

This project is designed to practice **basic shell scripting and Unix text-processing tools** like `awk`, `sort`, `uniq`, `grep`, `sed`, and `cut`.
More about this project roadmap can be found here: [Roadmap.sh Project Page](https://roadmap.sh/projects/nginx-log-analyser)

---

## 📌 Features

The script analyzes an Nginx access log file and displays:

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

---

## 📂 Project Structure

```

nginx-log-analyzer/
│
├── analyze_logs.sh        # Main shell script
├── access.log             # Nginx access log file
├── README.md              # Project documentation
└── output/                # (Optional) generated reports

```

---

## 📄 Log Format Assumption

The script assumes a **standard Nginx combined access log format**, for example:

```

45.76.135.253 - - [10/Oct/2025:13:55:36 +0000]
"GET /api/v1/users HTTP/1.1" 200 1234
"[https://example.com](https://example.com)"
"Mozilla/5.0 (Windows NT 10.0; Win64; x64)"

````

Fields analyzed include:
- IP address
- Request method and path
- HTTP status code
- User agent

---

## 🚀 Usage

### 1. Make the script executable

```bash
chmod +x analyze_logs.sh
````

### 2. Run the script

```bash
./analyze_logs.sh access.log
```

### 3. (Optional) Save output to a file

```bash
./analyze_logs.sh access.log > output/report.txt
```

---

## 🧾 Sample Output

```
Top 5 IP addresses with the most requests:
45.76.135.253 - 1000 requests
142.93.143.8 - 600 requests
178.128.94.113 - 50 requests
43.224.43.187 - 30 requests
178.128.94.113 - 20 requests

Top 5 most requested paths:
/api/v1/users - 1000 requests
/api/v1/products - 600 requests
/api/v1/orders - 50 requests
/api/v1/payments - 30 requests
/api/v1/reviews - 20 requests

Top 5 response status codes:
200 - 1000 requests
404 - 600 requests
500 - 50 requests
401 - 30 requests
304 - 20 requests
```

---

## 🛠 Tools & Commands Used

* `awk` – field extraction and text processing
* `sort` – sorting data
* `uniq` – counting unique values
* `grep` – pattern matching
* `sed` – text transformation
* `cut` – column extraction
* `head` – limiting output

---

## 🎯 Learning Objectives

* Practice Unix shell scripting
* Understand Nginx access log structure
* Gain confidence using command-line text processing tools
* Build reusable CLI utilities

---

## 🔧 Possible Enhancements

* Support custom log formats
* Add CSV or JSON output
* Filter logs by date/time range
* Add argument flags (e.g. `--ips`, `--paths`)
* Dockerize the script for portability


---

