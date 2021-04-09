# Backup and Restore

## Pre-requisite
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "s3:ListBucket"
            ],
            "Effect": "Allow",
            "Resource": [
                "arn:aws:s3:::io.headhuntr.shared.backups"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:DeleteObject"
            ],
            "Resource": "arn:aws:s3:::io.headhuntr.shared.backups/*"
        }
    ]
}
```

## Register Snapshot
```shell
curl --location --request PUT 'https://xxxx-xxxxx.us-west-2.es.amazonaws.com/_snapshot/backups' \
--data-raw '{
  "type": "s3",
  "settings": {
    "bucket": "io.headhuntr.shared.backups",
    "region": "us-west-2",
    "role_arn": "arn:aws:iam::11111111111:role/ESSnapshotRole"
  }
}'
```
