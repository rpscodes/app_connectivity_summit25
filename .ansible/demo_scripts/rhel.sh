export SKUPPER_PLATFORM=podman
skupper site create rhel


skupper connector create mysqldb 3306 --host 127.0.0.1 -r appconn

