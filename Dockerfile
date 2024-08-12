FROM python:3.12.5
COPY . /opt
WORKDIR /opt
RUN ["pip", "install", "--trusted-host", "pypi.python.org", "-r", "requirements.txt"]
CMD ["uvicorn", "src.server:app"]
