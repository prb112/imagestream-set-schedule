#!/bin/bash

echo "START TEST: $1 [$2]"
RESULT=$(cat $2 | \
    jq -r '
    [.items[] | 
        ( .spec.tags[]?.from.kind != "ImageStreamTag"
            and
            (
                [
                    .spec.tags[]? |
                        (.importPolicy.scheduled == null or .importPolicy.scheduled == false)
                ] | any
            )
        )
        and
        (
            (.metadata.labels == null)
            or
            (.metadata.labels."samples.operator.openshift.io/managed" == null)
            or
            (.metadata.labels."samples.operator.openshift.io/managed" != "true")
        )
        and
        (
            (.metadata.ownerReferences == null)
            or
            (.metadata.ownerReferences | length == 0)
            or
            (.metadata.ownerReferences?[].kind == null)
            or
            (.metadata.ownerReferences?[].kind != "ClusterVersion")
        )] | any') 

echo "GOT: ${RESULT}"
echo "EXP: ${3}"

echo "END"
echo ""