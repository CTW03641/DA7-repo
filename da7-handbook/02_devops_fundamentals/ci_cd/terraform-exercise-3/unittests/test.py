import sys
from unittest.mock import patch, MagicMock

sys.path.append('02_devops_fundamentals/ci_cd/terraform-exercise-3/code')
from function import upload_to_aws


@patch('function.boto3.client')
def test_upload_successful(mock_boto3_client):
    mock_s3_client = MagicMock()
    mock_boto3_client.return_value = mock_s3_client

    local_file = 'local_file.parquet'
    bucket = 'test_bucket'
    s3_file = 'test_file.parquet'

    result = upload_to_aws(local_file, bucket, s3_file)

    mock_s3_client.upload_file.assert_called_once_with(local_file, bucket, s3_file)
    assert result is True
