FROM ubuntu:latest

RUN apt-get update && apt-get -y install cron

# Copy hello-cron file to the cron.d directory
COPY hello-cron /etc/cron.d/hello-cron
 
# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/hello-cron
 
# Run the command on container startup with follow
CMD ["cron", "-f"]