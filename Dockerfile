FROM gcr.io/google.com/cloudsdktool/cloud-sdk
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
COPY xlearn-0.4.4-py3-none-any.whl .
RUN pip3 install xlearn-0.4.4-py3-none-any.whl wurlitzer pandas seaborn scikit-learn tensorflow
RUN pip3 install gast==0.2.2
COPY xlearn_train .
COPY . .
ENTRYPOINT ["/bin/bash", "run.sh"]