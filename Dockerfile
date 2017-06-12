FROM continuumio/anaconda3:4.4.0

EXPOSE 8888

RUN /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks"
COPY .jupyter /root/.jupyter

RUN pip install --upgrade jupyterthemes || :
RUN jt -t chesterish -f roboto -fs 12

RUN conda env create -f /root/.jupyter/environments/machine-learning.yml

CMD /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser
