# Module stdgo.archive.zip has compilation errors, please do not use:
```
[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/archive/zip/Zip_Reader_static_extension.hx:168: characters 123-145

 168 | [2m            _r.file = (new stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>((0 : stdgo.GoInt).toBasic(), [0m[1m_end._directoryRecords[0m[2m) : stdgo.Slice<stdgo.Ref<stdgo._internal.archive.zip.Zip_File.File>>);[0m
     |                                                                                                                           [31m^^^^^^^^^^^^^^^^^^^^^^[0m
     | stdgo.GoUInt64 should be Int
     | For function argument 'capacity'


```

