FROM tensorflow/tensorflow:2.17.0-gpu

RUN apt-get update && apt-get upgrade -y && apt-get -y install gosu
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python
RUN pip install --upgrade pip
RUN pip install opencv-python
RUN apt-get install -y libgl1-mesa-dev
RUN pip install matplotlib
RUN pip install colorama
RUN pip install pillow
RUN pip install scikit-learn
RUN pip install pandas
RUN pip install polars
RUN pip install plotly
RUN pip install -U "jax[cuda12]"
RUN pip install --upgrade jax jaxlib
RUN pip install flax
RUN pip install "flax[all]"

RUN mkdir /mywork

