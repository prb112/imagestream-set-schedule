#!/bin/bash

./_runner.sh "Kind: ImageStreamTag" 0_imagestreamtag.json false
./_runner.sh "Kind: DockerImage" 1_dockerimage.json true
./_runner.sh "empty tags" 2_empty_tags.json false
./_runner.sh "Docker Image Scheduled False" 3_dockerimage_scheduled_false.json true
./_runner.sh "Docker Image Scheduled nil" 3_dockerimage_scheduled_nil.json true
./_runner.sh "Docker Image Scheduled true" 3_dockerimage_scheduled_true.json false

./_runner.sh "Docker Image Scheduled multi first true" 3_dockerimage_scheduled_multi_first.json true
./_runner.sh "Docker Image Scheduled multi first none" 3_dockerimage_scheduled_multi_none.json true
./_runner.sh "Docker Image Scheduled multi all true"  3_dockerimage_scheduled_multi_all.json false
./_runner.sh "Docker Image Scheduled multi all false"  3_dockerimage_scheduled_multi_false.json true
./_runner.sh "Docker Image Scheduled multi last true" 3_dockerimage_scheduled_multi_last.json true

./_runner.sh "Sample is false" 4_samp_false.json true
./_runner.sh "Labels don't exist" 4_samp_labels_empty.json true
./_runner.sh "Sample Nil" 4_samp_nil.json true
./_runner.sh "Samp other" 4_samp_other.json true
./_runner.sh "Samp True" 4_samp_true.json false


./_runner.sh "OwnerReferences - Empty" 5_or_empty.json true
./_runner.sh "OwnerReferences - Kind Alternative" 5_or_kind_alt.json true
./_runner.sh "OwnerReferences - Kind Exists ClusterVersion" 5_or_kind_cluster_version.json false
./_runner.sh "OwnerReferences - Kind not exists" 5_or_kind_not_exists.json true
# This one should just not be supported.
./_runner.sh "OwnerReferences - Kind ClusterVersion Second" 5_or_kind_second.json true
./_runner.sh "OwnerReferences - None" 5_or_none.json true