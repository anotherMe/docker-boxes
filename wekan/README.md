

**NOTA** Quando si crea un nuovo utente si verifica un errore ( causato dal mancato invio della mail, non essendo configurato SMTP )


## Modifiche

Di seguito, l'elenco delle modifiche effettuate al `docker-compose.yml`.

Modificata la porta del servizio *wekan* :

```yml
      # - 80:8080
      - 3031:8080
```

Modificato il mapping dei volumi del servizio *wekan* :

```yml
      # - wekan-files:/data:rw
      - ./VOLUMES/wekan-files:/data:rw
```

Modificato il mapping dei volumi del servizio *wekandb* :

```yml
      # - wekan-db:/data/db
      # - wekan-db-dump:/dump
      - ./VOLUMES/wekan-db:/data/db
      - ./VOLUMES/wekan-db-dump:/dump
```

Modificate le policies di restart:

```yml
	# restart: always
	restart: unless-stopped
```
