FROM continuumio/anaconda3

EXPOSE 8888

RUN /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks"
COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

CMD /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser
