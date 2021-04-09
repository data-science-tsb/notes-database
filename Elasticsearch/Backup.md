# Backup and Restore

## Register Snapshot
```shell
curl --location --request PUT 'https://xxxx-xxxxx.us-west-2.es.amazonaws.com/_snapshot/backups' \
--data-raw '{
  "type": "s3",
  "settings": {
    "bucket": "io.headhuntr.shared.backups/prod/es",
    "region": "us-west-2",
    "role_arn": "arn:aws:iam::11111111111:role/ESSnapshotRole"
  }
}'
```
