FROM jfloff/alpine-python:2.7

RUN set -ex \
	&& apk add --no-cache unzip \
	&& cd /tmp \
	&& wget "https://docs-aliyun.cn-hangzhou.oss.aliyun-inc.com/internal/oss/0.0.4/assets/sdk/OSS_Python_API_20160419.zip" \
	&& mkdir /tmp/oss_python \
	&& unzip -d /tmp/oss_python OSS_Python_API_20160419.zip \
	&& rm -rf OSS_Python_API_20160419.zip \
	&& mkdir -p /opt \
	&& mv /tmp/oss_python /opt

CMD ["python", "/opt/oss_python/osscmd"]