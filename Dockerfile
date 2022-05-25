FROM python:3.7.3-stretch

# step 1
WORKDIR /app

# step 2
COPY . app.py /app/

# step 3
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
    
# step 4
EXPOSE 80

# step 5
CMD ["python", "app.py"]