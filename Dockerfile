FROM python:3.9-slim

RUN apt-get update && apt-get install -y \
    python3-tk \
    x11-apps

RUN pip install matplotlib

COPY simple1.py .

ENV DISPLAY=:0

CMD ["python", "simple1.py"]
