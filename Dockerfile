FROM python:3.7.3-stretch

#STEP1
WORKDIR /app

#STEP2
COPY . app.py /app/

#STEP3

RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
    
# STEP4
EXPOSE 80

# STEP5
CMD ["python", "app.py"]