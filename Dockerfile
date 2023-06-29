FROM python:3.7.2-stretch

# Set the working directory to /AppPython
WORKDIR /home/4877b115/BankNoteML

COPY . /home/4877b115/BankNoteML

# Copy requirements.txt file in current folder into the container at /AppPython 
ADD requirements.txt .

# Install the dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


EXPOSE 4877:8501

# CMD: specifies the default program that will execute once the container runs. 
# To Deploy with Flask we need this Line
CMD python flask_api.py
