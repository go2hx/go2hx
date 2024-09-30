# Module stdgo._internal.mime.multipart has compilation errors, please do not use:
```
[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/mime/multipart/Multipart_FileHeader_static_extension.hx:21: characters 9-73

 21 | [2m        [0m[1mreturn stdgo._internal.os.Os_open.open(_fh._tmpfile?.__copy__())[0m[2m;[0m
    |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | error: stdgo.Ref<stdgo._internal.os.File> should be stdgo._internal.mime.multipart.File
    | have: { _0: stdgo.Ref<...> }
    | want: { _0: stdgo._internal.mime.multipart.File }


```

