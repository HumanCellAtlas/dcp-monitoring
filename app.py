import boto3
import logging
import urllib.error
import urllib.request

logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)

cloudwatch = boto3.client('cloudwatch')


def handler(input, context):
    url = input['endpoint']
    service = input['service']
    try:
        with urllib.request.urlopen(url) as response:
            response_code = response.code
    except urllib.error.HTTPError as e:
        response_code = e.code

    cloudwatch.put_metric_data(
        MetricData=[
            {
                'MetricName': 'HEALTH_CHECK',
                'Dimensions': [
                    {
                        'Name': 'SERVICE',
                        'Value': service
                    },
                ],
                'Unit': 'None',
                'Value': 1.0 if response_code == 200 else 0.0
            }
        ],
        Namespace='DCP/HEALTH'
    )

    logger.info("%s %d" % (url, response_code))
