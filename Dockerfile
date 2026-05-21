FROM python:3.11-slim

WORKDIR /app

# Copy dependency definition file
COPY pyproject.toml .

# Install dependencies directly from the toml file
RUN pip install --no-cache-dir .

# Copy the rest of your application code
COPY . .

EXPOSE 8080

CMD ["python", "server.py"]
