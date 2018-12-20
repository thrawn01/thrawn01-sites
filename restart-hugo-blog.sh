#! /bin/sh

docker stop hugo-blog && docker rm hugo-blog  && docker run -p 8181:80 --name hugo-blog -d thrawn01/hugo-blog:latest
