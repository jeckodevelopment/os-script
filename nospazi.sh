#!/bin/bash
for i in *; do mv "$i" ${i/Nome con spazio/NomeSenzaSpazio}; done