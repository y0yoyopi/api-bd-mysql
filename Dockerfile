FROM python:3-slim
WORKDIR /programas/bd_api_mysql
RUN pip3 install "fastapi[standard]"
RUN pip3 install pydantic
RUN pip3 install mysql-connector-python
COPY . .
CMD ["fastapi", "run", "./main.py", "--port", "8000"]
