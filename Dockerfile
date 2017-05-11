FROM redis

RUN mkdir -p /usr/local/redis/conf \
    && mkdir -p /usr/local/redis/log \
    && mkdir -p /usr/local/redis/redisdata \
    && mkdir -p /usr/local/redis/sentinel/26379 \
    && mkdir -p /usr/local/redis/sentinel/26479 \
    && mkdir -p /usr/local/redis/sentinel/26579 \
    && wget -O /usr/local/redis/conf/redis6379.conf https://raw.githubusercontent.com/vancebs/fmp_env/master/redis6379.conf \
    && wget -O /usr/local/redis/conf/redis6380.conf https://raw.githubusercontent.com/vancebs/fmp_env/master/redis6380.conf \
    && wget -O /usr/local/redis/conf/redis6381.conf https://raw.githubusercontent.com/vancebs/fmp_env/master/redis6381.conf \
    && wget -O /usr/local/redis/conf/sentinel26379.conf https://raw.githubusercontent.com/vancebs/fmp_env/master/sentinel26379.conf \
    && wget -O /usr/local/redis/conf/sentinel26479.conf https://raw.githubusercontent.com/vancebs/fmp_env/master/sentinel26479.conf \
    && wget -O /usr/local/redis/conf/sentinel26579.conf https://raw.githubusercontent.com/vancebs/fmp_env/master/sentinel26579.conf \
	&& wget -O /usr/local/bin/run.sh https://raw.githubusercontent.com/vancebs/fmp_env/master/run.sh \
	&& chmod a+x /usr/local/bin/run.sh
    

EXPOSE 6379
EXPOSE 6380
EXPOSE 6381
EXPOSE 26379
EXPOSE 26479
EXPOSE 26579

CMD [ "/usr/local/bin/run.sh" ]
