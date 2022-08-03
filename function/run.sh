#!/bin/bash

docker build -t direktiv-hello .

docker run -p 9191:8080 direktiv-hello  