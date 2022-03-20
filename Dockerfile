FROM node:14-slim

LABEL version="1.0.0"
LABEL "repository"="http://github.com/farmerau/gatsby-cli-github-action"
LABEL "homepage"="http://github.com/farmerau"
LABEL "maintainer"="Austin Farmer"

LABEL "com.github.actions.name"="Github Action for Gatsby CLI"
LABEL "com.github.actions.description"="Wraps the Gatsby CLI to enable common Gatsby commands. Forked from http://github.com/jzweifel/gatsby-cli-github-action."
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

RUN npm install -g gatsby-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["help"]
