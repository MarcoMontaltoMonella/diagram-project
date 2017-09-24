FROM alpine:3.6

ENV BASE_PATH /usr/local/diagram

# Create app directory
RUN mkdir -p $BASE_PATH
WORKDIR $BASE_PATH

# Copy files and install dependencies
COPY . $BASE_PATH

# Execute python script
CMD ["python", "./setup.py"]
