#/bin/bash
velero install \
    --provider aws \
    --plugins velero/velero-plugin-for-aws:v1.2.1 \
    --bucket velero \
    --secret-file ./credentials-velero \
    --use-volume-snapshots=false \
    --use-restic \
    --default-volumes-to-restic \
    --backup-location-config region=minio,s3ForcePathStyle="true",s3Url=http://minio.local.westermanonline.com:9000
