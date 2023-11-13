FROM python:3.10.12

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt
RUN pip install -r requirements_api.txt
RUN pip install -r requirements_webui.txt

EXPOSE 8000

CMD ["python", "app.py", "-a"]