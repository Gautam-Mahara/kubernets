FROM python:3

# Set the working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Specify the command to run the application
CMD ["python", "./main.py"]
