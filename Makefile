docker-build:
	docker build . -t heinrichhartmann/jupyter-caql

docker-run:
	docker run -it --rm \
		-p 9999:9999 -p 9998:9998 \
		-v $$(pwd):/home/jovyan/work \
		-v $$HOME:/home/jovyan/host/home \
		-v /:/home/jovyan/host/root \
		heinrichhartmann/jupyter-caql
