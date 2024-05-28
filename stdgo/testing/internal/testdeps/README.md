# Module stdgo.testing.internal.testdeps has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/testing/internal/testdeps/Testdeps.hx:54: characters 17-175

 54 | [2m                [0m[1m{ parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed }[0m[2m;[0m
    |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Object requires fields: _5, _4, _3, _2, _1, _0
    | For function argument 'x'

[30;41m ERROR [0m stdgo/testing/internal/testdeps/Testdeps.hx:65: characters 28-34

 65 | [2m            { parent : obj.[0m[1mparent[0m[2m, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
    |                            [31m^^^^^^[0m
    | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field parent

[30;41m ERROR [0m stdgo/testing/internal/testdeps/Testdeps.hx:65: characters 47-51

 65 | [2m            { parent : obj.parent, path : obj.[0m[1mpath[0m[2m, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
    |                                               [31m^^^^[0m
    | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field path

[30;41m ERROR [0m stdgo/testing/internal/testdeps/Testdeps.hx:65: characters 76-80

 65 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.[0m[1mdata[0m[2m) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
    |                                                                            [31m^^^^[0m
    | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field data

[30;41m ERROR [0m stdgo/testing/internal/testdeps/Testdeps.hx:65: characters 72-80

 65 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in [0m[1mobj.data[0m[2m) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
    |                                                                        [31m^^^^^^^^[0m
    | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/testing/internal/testdeps/Testdeps.hx:65: characters 141-147

 65 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.[0m[1mvalues[0m[2m) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
    |                                                                                                                                             [31m^^^^^^[0m
    | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field values

[30;41m ERROR [0m stdgo/testing/internal/testdeps/Testdeps.hx:65: characters 137-147

 65 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in [0m[1mobj.values[0m[2m) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
    |                                                                                                                                         [31m^^^^^^^^^^[0m
    | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/testing/internal/testdeps/Testdeps.hx:65: characters 205-215

 65 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.[0m[1mgeneration[0m[2m, isSeed : obj.isSeed };[0m
    |                                                                                                                                                                                                             [31m^^^^^^^^^^[0m
    | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field generation

[30;41m ERROR [0m stdgo/testing/internal/testdeps/Testdeps.hx:65: characters 230-236

 65 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.[0m[1misSeed[0m[2m };[0m
    |                                                                                                                                                                                                                                      [31m^^^^^^[0m
    | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field isSeed


```

