
## WORK IN PROGRESS

When changing logstash pipeline configuration, remember to modify the `docker-compose.yml` file accordingly:

```yml
  logstash:
    image: opensearchproject/logstash-oss-with-opensearch-output-plugin:8.6.1
    ports:
      - 8989:8080                                                                   <<<<<<<<<<<<<<<< MAYBE CHANGE THIS <<<<<<<<<<<<<<<<
    volumes:
      - ./logstash/pipeline:/usr/share/logstash/pipeline:ro
    command: logstash -f /usr/share/logstash/pipeline/http_to_opensearch.conf       <<<<<<<<<<<<<<<< CHANGE THIS <<<<<<<<<<<<<<<<
    depends_on:
      - opensearch
```

## Logstash

### HTTP input to OpenSearch output

To test the *logstash* service you can issue the following command:

```bash
curl -XPUT -H "Content-Type: application/json" -d '{"amount": 7, "quantity": 3 }' http://127.0.0.1:8989
```

For Content-Type application/json the json codec is used, but for all other data formats, plain codec is used.

```bash
curl -XPUT -H "Content-Type: text/plain" -d 'INFO example message 09:06:23' http://127.0.0.1:8989
```

## OpenSearch

You can easily interact with OpenSearch API using *curl* ( or the web client integrated in the OpenSearch Dashboard ).


To test the *opensearch* service:

```bash
curl -X GET "https://localhost:9200" -ku admin:admin
```

By default, OpenSearch uses self-signed TLS certificates. The -k short option skips the certificate verification step so requests don't fail. The default username is `admin` and the default password is `admin`.

To create an index named "pincopallino":

```bash
curl -X PUT "https://localhost:9200/pincopallino" -ku admin:admin
```

See [OpenSearch docs](https://opensearch.org/docs/1.0/opensearch/rest-api/create-index/) for reference


## OpenSearch Dashboards

To connect to OpenSearch Dashboards, open [this link](http://localhost:5601). The default username is `admin` and the default password is `admin`.



# No security

The `docker-compose-no-security.yml` is for running OpenSearch on plain HTTP ( in stead of HTTPS ).

( see [here](https://github.com/opensearch-project/OpenSearch/issues/1598) for reference )

In the above file we added a new environment settings:

```yaml
    ...
    - plugins.security.disabled=true
    ...
    ...
    - DISABLE_SECURITY_DASHBOARDS_PLUGIN=true
    ...
```