FROM python:3.8
WORKDIR /main
COPY . /main/
RUN pip install --upgrade pip && pip install -r requirements.txt
EXPOSE 3000
CMD ["python3", "app.py"]