# taiga

[Taiga](https://taiga.io/) is a project management platform for agile developers & designers and project managers who want a beautiful tool that makes work truly enjoyable.

Pay attention to the **TAIGA_HOST** parameter:

- Taiga image sets up a virtual host (eg: taiga.lan) and you'll need to modify your DNS or your hosts file accordingly

- if you expose your container on a different port than port 80, you need to modify TAIGA_HOST parameter accordingly ( eg: TAIGA_HOST=taiga.lan:8084 )