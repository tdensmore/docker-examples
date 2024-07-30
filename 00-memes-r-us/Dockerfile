# A base stage that installs all of the base dependencies
FROM python:3.9-buster AS base
WORKDIR /usr/local/app
COPY app/requirements.txt .
RUN pip install -r requirements.txt


# A stage used for local development
FROM base AS dev

# Install watchdog to support file watching and automatic restarts
# We're currently redoing the pip install to allow for new dependencies to
# be defined and installed by only restarting the container, as dev envs
# currently don't have a "refresh" or "rebuild" mechanism in place
RUN pip install watchdog
ENV FLASK_ENV=development
CMD ["sh", "-c", "pip install -r requirements.txt && flask run --host=0.0.0.0 --debug"]



# A stage used for deployment
FROM base AS prod
COPY app .
EXPOSE 5000
STOPSIGNAL SIGINT
CMD ["flask", "run", "--host=0.0.0.0"]
