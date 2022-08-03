.PHONY: build-function
build-function:
	cd service && docker build -t direktiv-hello .

.PHONY: run-function
run-function:
	docker run -p 9191:8080 direktiv-hello  

.PHONY: test-function
test-function:
	docker run --network=host -v `pwd`/service/tests/:/tests direktiv/karate java -DtestURL=http://localhost:9191 -jar /karate.jar /tests/karate.feature ${*:1}
