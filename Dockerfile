FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN git clone https://github.com/degenerateuser/kingcrimson

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod 777 ./start.sh

RUN echo "Ready To abuse Railway"

CMD ["bash", "start.sh"]
