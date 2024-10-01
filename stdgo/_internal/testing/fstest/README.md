# Module stdgo._internal.testing.fstest has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/testing/fstest_test/Fstest.hx:3: characters 26-70

 3 | [2mvar _tests : stdgo.Slice<[0m[1mstdgo._internal.testing.Testing.InternalTest[0m[2m> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(5, 5, ...[(new stdgo._internal.testing.Testing.InternalTest(("TestMapFS" : stdgo.GoString), stdgo._internal.testing.fstest.Fstest.testMapFS) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestMapFSChmodDot" : stdgo.GoString), stdgo._internal.testing.fstest.Fstest.testMapFSChmodDot) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestSymlink" : stdgo.GoString), stdgo._internal.testing.fstest.Fstest.testSymlink) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestDash" : stdgo.GoString), stdgo._internal.testing.fstest.Fstest.testDash) : stdgo._internal.testing.Testing.InternalTest), (new stdgo._internal.testing.Testing.InternalTest(("TestShuffledFS" : stdgo.GoString), stdgo._internal.testing.fstest.Fstest.testShuffledFS) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);[0m
   |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | Module stdgo._internal.testing.Testing does not define type InternalTest


```

