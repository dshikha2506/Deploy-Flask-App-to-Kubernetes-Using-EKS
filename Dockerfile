# 1. Use the python:stretch image as a source image

FROM python:stretch

# 2. Set up an app directory for your code

COPY . /app
WORKDIR /app

# 3. Install needed Python requirements

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# 4. Define an entrypoint which will run the main app using the Gunicorn WSGI server
#    with the arguments as follows: gunicorn -b :8080 main:APP

ENTRYPOINT ["gunicorn"  , "-b", ":8080", "main:APP"]
