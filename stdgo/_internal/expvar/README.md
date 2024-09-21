# Module stdgo._internal.expvar has compilation errors, please do not use:
```
[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/expvar/Expvar__expvarHandler.hx:3: characters 60-112

 3 | [2m        _w.header().set(("Content-Type" : stdgo.GoString), [0m[1m("application/json; charset=utf-8" : stdgo.GoString)[0m[2m);[0m
   |                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | stdgo.GoString should be stdgo.Slice<stdgo.GoString>
   | For function argument 'value'


```

