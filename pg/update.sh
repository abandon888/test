zip -r test.zip *
wsk -i action update testPg test.zip --kind nodejs:default
wsk -i action invoke testPg --result --param action insert --param msg myValue