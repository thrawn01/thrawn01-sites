#! /bin/sh

docker stop starwars-countdown && docker rm starwars-countdown && docker run -p 1313:80 --name starwars-countdown thrawn01/starwars-countdown:latest
