FROM node:7.7-alpine

WORKDIR /mountebank

RUN npm install -g mountebank

COPY imposters.ejs /mountebank/
COPY mountebank_dnmonster_stub.ejs /mountebank/
COPY mountebank_dnmonster_response.ejs /mountebank/

# COPY mountebank_dnmonster_response_2.ejs /mountebank/
 
EXPOSE 2525
EXPOSE 8080
 
CMD ["mb", "--configfile", "/mountebank/imposters.ejs",  "--allowInjection"]

# CMD ["mb", "--allowInjection"]