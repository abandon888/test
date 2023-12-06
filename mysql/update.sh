#!/bin/bash
zip -r test.zip *
wsk -i action update testDb test.zip --kind nodejs:default
wsk -i action invoke testDb --result --param action insert --param msg myValue