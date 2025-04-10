simple test cases for imagestream-set-schedule JQ

No SUPPORT for this repo

```
❯ ./_tests.sh
START TEST: Kind: ImageStreamTag [0_imagestreamtag.json]
GOT: false
EXP: false
END

START TEST: Kind: DockerImage [1_dockerimage.json]
GOT: true
EXP: true
END

START TEST: empty tags [2_empty_tags.json]
GOT: false
EXP: false
END

START TEST: Docker Image Scheduled False [3_dockerimage_scheduled_false.json]
GOT: true
EXP: true
END

START TEST: Docker Image Scheduled nil [3_dockerimage_scheduled_nil.json]
GOT: true
EXP: true
END

START TEST: Docker Image Scheduled true [3_dockerimage_scheduled_true.json]
GOT: false
EXP: false
END

START TEST: Docker Image Scheduled multi first true [3_dockerimage_scheduled_multi_first.json]
GOT: true
EXP: true
END

START TEST: Docker Image Scheduled multi first none [3_dockerimage_scheduled_multi_none.json]
GOT: true
EXP: true
END

START TEST: Docker Image Scheduled multi all true [3_dockerimage_scheduled_multi_all.json]
GOT: false
EXP: false
END

START TEST: Docker Image Scheduled multi all false [3_dockerimage_scheduled_multi_false.json]
GOT: true
EXP: true
END

START TEST: Docker Image Scheduled multi last true [3_dockerimage_scheduled_multi_last.json]
GOT: true
EXP: true
END

START TEST: Sample is false [4_samp_false.json]
GOT: true
EXP: true
END

START TEST: Labels don't exist [4_samp_labels_empty.json]
GOT: true
EXP: true
END

START TEST: Sample Nil [4_samp_nil.json]
GOT: true
EXP: true
END

START TEST: Samp other [4_samp_other.json]
GOT: true
EXP: true
END

START TEST: Samp True [4_samp_true.json]
GOT: false
EXP: false
END

START TEST: OwnerReferences - Empty [5_or_empty.json]
GOT: true
EXP: true
END

START TEST: OwnerReferences - Kind Alternative [5_or_kind_alt.json]
GOT: true
EXP: true
END

START TEST: OwnerReferences - Kind Exists ClusterVersion [5_or_kind_cluster_version.json]
GOT: false
EXP: false
END

START TEST: OwnerReferences - Kind not exists [5_or_kind_not_exists.json]
GOT: true
EXP: true
END

START TEST: OwnerReferences - Kind ClusterVersion Second [5_or_kind_second.json]
GOT: false
EXP: false
END

START TEST: OwnerReferences - None [5_or_none.json]
GOT: true
EXP: true
END
```