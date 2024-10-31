# Module stdgo._internal.mime.multipart has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/mime/multipart/Multipart_Writer_static_extension.hx:40: characters 58-268

 40 | [2m        _h.set(("Content-Disposition" : stdgo.GoString), [0m[1mstdgo._internal.fmt.Fmt_sprintf.sprintf(("form-data; name=\"%s\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.mime.multipart.Multipart__escapeQuotes._escapeQuotes(_fieldname?.__copy__())))?.__copy__[0m[2m());[0m
    |                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.GoString> should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/mime/multipart/Multipart_Writer_static_extension.hx:52: characters 58-400

 52 | [2m        _h.set(("Content-Disposition" : stdgo.GoString), [0m[1mstdgo._internal.fmt.Fmt_sprintf.sprintf(("form-data; name=\"%s\"; filename=\"%s\"" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.mime.multipart.Multipart__escapeQuotes._escapeQuotes(_fieldname?.__copy__())), stdgo.Go.toInterface(stdgo._internal.mime.multipart.Multipart__escapeQuotes._escapeQuotes(_filename?.__copy__())))?.__copy__[0m[2m());[0m
    |                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.GoString> should be stdgo.Slice<stdgo.GoString>
    | For function argument 'value'


```

