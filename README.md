# Country list

List of countries


## How to build documentation

cmd + shift + ctrl + D build the documentation file
choose the export option to receive the .docarchieve file

Generate static html for hosting 

```
$(xcrun --find docc) process-archive transform-for-static-hosting ./CountryListKit.doccarchive --output-path ./htmldoc
```

goto 'https://nitanta.github.io' to see the sample documentation
