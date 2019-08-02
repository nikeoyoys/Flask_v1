# 載入預設映像
FROM python:3.7

# 增加專案
ADD . /code
WORKDIR /code

# 安裝 flask redis
RUN pip install flask 
RUN pip install redis

# 單元測試 
RUN /bin/bash -c 'python test_flask.py'

# 運行flask
ENTRYPOINT ["python"]
CMD python app.py
