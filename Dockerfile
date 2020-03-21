FROM python:3.7.3-stretch

# working directory
WORKDIR /app

# Copy source code to working directory
copy . app.py /app/

# install packages from requirements.txt file
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt