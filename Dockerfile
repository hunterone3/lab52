FROM python

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python ./test.py

CMD [ "python3", "./lab2_Poyner.py" ]
