# Module stdgo.testing has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/testing/Testing.hx:105: characters 17-175

 105 | [2m                [0m[1m{ parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed }[0m[2m;[0m
     |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Object requires fields: _5, _4, _3, _2, _1, _0
     | For function argument 'x'

[30;41m ERROR [0m stdgo/testing/Testing.hx:116: characters 28-34

 116 | [2m            { parent : obj.[0m[1mparent[0m[2m, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                            [31m^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field parent

[30;41m ERROR [0m stdgo/testing/Testing.hx:116: characters 47-51

 116 | [2m            { parent : obj.parent, path : obj.[0m[1mpath[0m[2m, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                               [31m^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field path

[30;41m ERROR [0m stdgo/testing/Testing.hx:116: characters 76-80

 116 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.[0m[1mdata[0m[2m) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                            [31m^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field data

[30;41m ERROR [0m stdgo/testing/Testing.hx:116: characters 72-80

 116 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in [0m[1mobj.data[0m[2m) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                        [31m^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/testing/Testing.hx:116: characters 141-147

 116 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.[0m[1mvalues[0m[2m) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                                                                                             [31m^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field values

[30;41m ERROR [0m stdgo/testing/Testing.hx:116: characters 137-147

 116 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in [0m[1mobj.values[0m[2m) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                                                                                         [31m^^^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/testing/Testing.hx:116: characters 205-215

 116 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.[0m[1mgeneration[0m[2m, isSeed : obj.isSeed };[0m
     |                                                                                                                                                                                                             [31m^^^^^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field generation

[30;41m ERROR [0m stdgo/testing/Testing.hx:116: characters 230-236

 116 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.[0m[1misSeed[0m[2m };[0m
     |                                                                                                                                                                                                                                      [31m^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field isSeed

[30;41m ERROR [0m stdgo/testing/Testing.hx:564: characters 9-167

 564 | [2m        [0m[1m{ parent : obj.parent, path : obj.path, data : [for (i in obj.data) i], values : [for (i in obj.values) i], generation : obj.generation, isSeed : obj.isSeed }[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Object requires fields: _5, _4, _3, _2, _1, _0
     | For function argument 'x'

[30;41m ERROR [0m stdgo/testing/Testing.hx:569: characters 28-34

 569 | [2m            { parent : obj.[0m[1mparent[0m[2m, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                            [31m^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field parent

[30;41m ERROR [0m stdgo/testing/Testing.hx:569: characters 47-51

 569 | [2m            { parent : obj.parent, path : obj.[0m[1mpath[0m[2m, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                               [31m^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field path

[30;41m ERROR [0m stdgo/testing/Testing.hx:569: characters 76-80

 569 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.[0m[1mdata[0m[2m) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                            [31m^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field data

[30;41m ERROR [0m stdgo/testing/Testing.hx:569: characters 72-80

 569 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in [0m[1mobj.data[0m[2m) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                        [31m^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/testing/Testing.hx:569: characters 141-147

 569 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.[0m[1mvalues[0m[2m) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                                                                                             [31m^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field values

[30;41m ERROR [0m stdgo/testing/Testing.hx:569: characters 137-147

 569 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in [0m[1mobj.values[0m[2m) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                                                                                         [31m^^^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/testing/Testing.hx:569: characters 205-215

 569 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.[0m[1mgeneration[0m[2m, isSeed : obj.isSeed };[0m
     |                                                                                                                                                                                                             [31m^^^^^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field generation

[30;41m ERROR [0m stdgo/testing/Testing.hx:569: characters 230-236

 569 | [2m            { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.[0m[1misSeed[0m[2m };[0m
     |                                                                                                                                                                                                                                      [31m^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field isSeed

[30;41m ERROR [0m stdgo/testing/Testing.hx:587: characters 24-30

 587 | [2m        { parent : obj.[0m[1mparent[0m[2m, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                        [31m^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field parent

[30;41m ERROR [0m stdgo/testing/Testing.hx:587: characters 43-47

 587 | [2m        { parent : obj.parent, path : obj.[0m[1mpath[0m[2m, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                           [31m^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field path

[30;41m ERROR [0m stdgo/testing/Testing.hx:587: characters 72-76

 587 | [2m        { parent : obj.parent, path : obj.path, data : ([for (i in obj.[0m[1mdata[0m[2m) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                        [31m^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field data

[30;41m ERROR [0m stdgo/testing/Testing.hx:587: characters 68-76

 587 | [2m        { parent : obj.parent, path : obj.path, data : ([for (i in [0m[1mobj.data[0m[2m) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                    [31m^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/testing/Testing.hx:587: characters 137-143

 587 | [2m        { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.[0m[1mvalues[0m[2m) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                                                                                         [31m^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field values

[30;41m ERROR [0m stdgo/testing/Testing.hx:587: characters 133-143

 587 | [2m        { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in [0m[1mobj.values[0m[2m) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.isSeed };[0m
     |                                                                                                                                     [31m^^^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/testing/Testing.hx:587: characters 201-211

 587 | [2m        { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.[0m[1mgeneration[0m[2m, isSeed : obj.isSeed };[0m
     |                                                                                                                                                                                                         [31m^^^^^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field generation

[30;41m ERROR [0m stdgo/testing/Testing.hx:587: characters 226-232

 587 | [2m        { parent : obj.parent, path : obj.path, data : ([for (i in obj.data) i] : stdgo.Slice<stdgo.GoUInt8>), values : ([for (i in obj.values) i] : stdgo.Slice<stdgo.AnyInterface>), generation : obj.generation, isSeed : obj.[0m[1misSeed[0m[2m };[0m
     |                                                                                                                                                                                                                                  [31m^^^^^^[0m
     | stdgo.Tuple6<String, String, Array<UInt>, Array<stdgo.AnyInterface>, Int, Bool> has no field isSeed

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

