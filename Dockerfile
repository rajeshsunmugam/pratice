FROM python:3.9  
WORKDIR /co
COPY ./requirements.txt /requirements.txt
RUN apt install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./main.jd /code/main.py
COPY ./form.html /code/form.html
COPY ./output.html /code/output
CMD ["uvicorn", "main:app", "--host", "--port", "80"]
