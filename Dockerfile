FROM redis

RUN mkdir -p /data/conf \
    && mkdir -p /data/log \
    && mkdir -p /data/redisdata \
    && mkdir -p /data/sentinel/26379 \
    && mkdir -p /data/sentinel/26479 \
    && mkdir -p /data/sentinel/26579 \
    && wget -O /data/conf/redis6379.conf https://raw.githubusercontent.com/vancebs/fmp_env/1.0/redis6379.conf \
    && wget -O /data/conf/redis6380.conf https://raw.githubusercontent.com/vancebs/fmp_env/1.0/redis6380.conf \
    && wget -O /data/conf/redis6381.conf https://raw.githubusercontent.com/vancebs/fmp_env/1.0/redis6381.conf \
    && wget -O /data/conf/sentinel26379.conf https://raw.githubusercontent.com/vancebs/fmp_env/1.0/sentinel26379.conf \
    && wget -O /data/conf/sentinel26479.conf https://raw.githubusercontent.com/vancebs/fmp_env/1.0/sentinel26479.conf \
    && wget -O /data/conf/sentinel26579.conf https://raw.githubusercontent.com/vancebs/fmp_env/1.0/sentinel26579.conf

EXPOSE 6379
EXPOSE 6380
EXPOSE 6381
EXPOSE 26379
EXPOSE 26479
EXPOSE 26579

CMD [ "redis-server /data/conf/redis6379.conf" ]
CMD [ "redis-server /data/conf/redis6380.conf" ]
CMD [ "redis-server /data/conf/redis6381.conf" ]
CMD [ "redis-sentinel /data/conf/sentinel26379.conf" ]
CMD [ "redis-sentinel /data/conf/sentinel26479.conf" ]
CMD [ "redis-sentinel /data/conf/sentinel26579.conf" ]
