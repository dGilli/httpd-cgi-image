# Apache CGI Scripts Testing Container

A simple Docker container for testing CGI scripts with Apache HTTP Server.

## Quick Start

Build the image:
```bash
docker build -t httpd-cgi .
```

Run the container:
```bash
docker run --rm -it -p 8080:80 httpd-cgi
```

The server will be available at `http://localhost:8080`

## What's Included

- Apache 2 with CGI module enabled
- Support for CGI scripts in `/var/www/cgi-bin/`
- Default document root at `/var/www/html/`

## Development

Place your:
- CGI scripts in `www/cgi-bin/`
- HTML files in `www/html/`

