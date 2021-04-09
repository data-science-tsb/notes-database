# Backup and Restore

## Register Snapshot
```shell
curl --location --request PUT 'https://vpc-hh-prod-es-dxysyiq5k4fz5llvsvbb6hesza.us-west-2.es.amazonaws.com/_snapshot/backups' \
--data-raw '{
  "type": "s3",
  "settings": {
    "bucket": "io.headhuntr.shared.backups/prod/es",
    "region": "us-west-2",
    "role_arn": "arn:aws:iam::327229172692:role/ESSnapshotRole"
  }
}'
```
