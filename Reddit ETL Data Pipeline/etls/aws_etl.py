import s3fs
import boto3
from utils.constants import AWS_ACCESS_KEY_ID, AWS_ACCESS_KEY

def connect_to_s3():
    try:
        s3 = s3fs.S3FileSystem(anon=False,
                               key = AWS_ACCESS_KEY_ID,
                               secret = AWS_ACCESS_KEY)
        return s3
    except Exception as e:
        print(e)

def create_bucket_if_not_exists(s3, bucket):
    try:
        if not s3.exists(bucket):
            s3.mkdir(bucket)
            print(f"Bucket {bucket} created successfully.")
        else:
            print(f"Bucket {bucket} already exists.")
    except Exception as e:
        print(f"Error creating bucket: {e}")

def upload_file_to_s3(file_path, bucket, s3_file_name):
    s3 = boto3.client(
        "s3",
        aws_access_key_id=AWS_ACCESS_KEY_ID,
        aws_secret_access_key=AWS_ACCESS_KEY,
        region_name="ap-south-1"
    )

    try:
        s3.upload_file(file_path, bucket, s3_file_name)
        print(f"✅ Uploaded {file_path} to s3://{bucket}/{s3_file_name}")
    except Exception as e:
        print(f"❌ Upload failed: {e}")
        raise