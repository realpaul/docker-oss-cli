FROM python:2.7.11

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y unzip \
	&& cd /tmp \
	&& wget "https://docs-aliyun.cn-hangzhou.oss.aliyun-inc.com/cn/oss/0.4.36/assets/sdk/OSS_Python_API_20151120.zip" \
	&& mkdir /tmp/oss_python \
	&& unzip -d /tmp/oss_python OSS_Python_API_20151120.zip \
	&& rm -rf OSS_Python_API_20151120.zip \
	&& mkdir -p /opt \
	&& mv /tmp/oss_python /opt

CMD ["python", "/opt/oss_python/osscmd"]