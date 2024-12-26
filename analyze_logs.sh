#!/bin/bash

# Файл с логами
LOG_FILE="access.log"
REPORT_FILE="report.txt"

# Подсчитать общее количество запросов
total_requests=$(wc -l < "$LOG_FILE")

# Подсчитать количество уникальных IP-адресов
unique_ips=$(awk '{print $1}' "$LOG_FILE" | sort | uniq | wc -l)

# Подсчитать количество запросов по методам (GET, POST и т.д.)
methods=$(awk '{print $6}' "$LOG_FILE" | tr -d '"' | sort | uniq -c | sort -nr)

# Найти самый популярный URL и количество его упоминаний
popular_url_data=$(awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -1)
popular_url_count=$(echo "$popular_url_data" | awk '{print $1}')
popular_url=$(echo "$popular_url_data" | awk '{print $2}')

# Создать отчет
{
  echo "Анализ логов"
  echo "--------------------"
  echo "Общее количество запросов: $total_requests"
  echo "Количество уникальных IP-адресов: $unique_ips"
  echo "Количество запросов по методам:"
  echo "$methods"
  echo "Самый популярный URL: $popular_url_count $popular_url"
} > "$REPORT_FILE"

echo "Отчет успешно создан в файле $REPORT_FILE"

