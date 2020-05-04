#!/bin/bash

curl \
"localhost:9000"\
"/api/measures/component_tree?"\
"component=bisq&"\
"strategy=leaves&"\
"metricKeys=cognitive_complexity&"\
"s=metric&"\
"metricSort=cognitive_complexity&"\
"asc=false&"\
"ps=500" \
| jq "[.components[] | {path: .path, cognitive_complexity: .measures[0].value}]"
