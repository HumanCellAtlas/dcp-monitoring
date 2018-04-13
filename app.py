import logging
import sys
import urllib.error
import urllib.request

logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)

ch = logging.StreamHandler(stream=sys.stdout)
ch.setLevel(logging.DEBUG)
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
ch.setFormatter(formatter)
logger.addHandler(ch)


def handler(input, context):
    url = input['endpoint']
    try:
        with urllib.request.urlopen(url) as response:
            response_code = response.code
    except urllib.error.HTTPError as e:
        response_code = e.code

    logger.info("%s -> %d".format(url, response_code))
