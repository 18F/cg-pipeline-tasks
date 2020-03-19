export AWS_DEFAULT_REGION=${DEST_REGION}
aws s3 sync --source-region=${SOURCE_REGION} \
        --sse=AES256 \
        --metadata-directive=COPY \
        s3://${SOURCE_BUCKET}/${SUBDIRECTORY} \
        s3://${DEST_BUCKET}/${SUBDIRECTORY}
