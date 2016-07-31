FROM elasticsearch:1.7.5

RUN echo -e 'script.groovy.sandbox.class_whitelist: java.util.LinkedHashMap\nscript.groovy.sandbox.receiver_whitelist:  java.util.Iterator, java.lang.Object, java.util.Map, java.util.Map$Entry\nnetwork.bind_host: 127.0.0.1' >> /etc/elasticsearch/elasticsearch.yml

RUN service elasticsearch restart
