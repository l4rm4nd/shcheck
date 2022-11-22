# shcheck - Security Header Check

<p align="center">
    <img src="screenshot.png" alt="Output on Facebook" />
</p>

## Usage
```
Usage: ./shcheck.py [options] <target>

Options:
  -h, --help            show this help message and exit
  -p PORT, --port=PORT  Set a custom port to connect to
  -c COOKIE_STRING, --cookie=COOKIE_STRING
                        Set cookies for the request
  -a HEADER_STRING, --add-header=HEADER_STRING
                        Add headers for the request e.g. 'Header: value'
  -d, --disable-ssl-check
                        Disable SSL/TLS certificate validation
  -g, --use-get-method  Use GET method instead HEAD method
  -j, --json-output     Print the output in JSON format
  -i, --information     Display information headers
  -x, --caching         Display caching headers
  -k, --deprecated      Display deprecated headers
  --proxy=PROXY_URL     Set a proxy (Ex: http://127.0.0.1:8080)
  --hfile=PATH_TO_FILE  Load a list of hosts from a flat file
  --colours=COLOURS     Set up a colour profile [dark/light/none]
  --colors=COLOURS      Alias for colours for US English
```

## Docker Run Examples
````
# scan a single url
docker run --rm l4rm4nd/shcheck:latest <URL>

# scan multiple urls by using a urls.txt file (colored output)
docker run -v ${PWD}:/app/urls --rm l4rm4nd/shcheck:latest --hfile /app/urls/urls.txt

# scan multiple urls by using a urls.txt file (json output + audit)
docker run -v ${PWD}:/app/urls --rm l4rm4nd/shcheck:latest -d -g -j -k --hfile /app/urls/urls.txt
````
