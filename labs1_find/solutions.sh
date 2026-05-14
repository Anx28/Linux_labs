#!/bin/bash

# Task 1 — Найти все .log файлы
find ./workspace -name "*.log"

# Task 2 — Найти все обычные файлы
find ./workspace -type f

# Task 3 — Найти пустые файлы
find ./workspace -empty

# Task 4 — Найти файлы старше 7 дней
find ./workspace -type f -mtime +7

# Task 5 — Найти символические ссылки
find ./workspace -type l

# Task 6 — Найти все txt файлы
find ./workspace -name "*.txt"

# Task 7 — Найти всё кроме png файлов
find ./workspace ! -name "*.png"
