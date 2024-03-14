#!/usr/bin/env bash

jq '[.dst[] | {type, name, id, source, target, text, number} | with_entries(select(.value != null))] | {dst: .}' "$1"
