import json
import boto3

s3_client = boto3.client('s3')

def lambda_handler(event, context):
    print(event)
    s3_attr = event['Records'][0]['s3']
    bucket_name = s3_attr['bucket']['name']
    object_name = s3_attr['object']['key']
    file_name = object_name.split('/')[-1]
    print(bucket_name, object_name, '/tmp/'+file_name)
    s3_client.download_file(bucket_name, object_name, '/tmp/'+file_name)
    with open('/tmp/'+file_name, "a") as f:
        f.write("\n---This file has been changed by Lambda---\n")
    s3_client.upload_file('/tmp/'+file_name, bucket_name, object_name.replace('.txt', '.modified') )

