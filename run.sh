previewVersion=$(jq -r '.previewVersion' preview_version.json)
docker exec -it soroban-preview-${previewVersion}-dos bash
