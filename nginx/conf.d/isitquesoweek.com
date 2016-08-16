server {
    listen 80;
    root /usr/share/nginx/isitquesoweek.com;
    index index.html index.htm;
    server_name isitquesoweek.com www.isitquesoweek.com;

    location / {
    }
}
