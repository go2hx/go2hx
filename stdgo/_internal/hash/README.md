# Module stdgo._internal.hash has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/hash_test/Hash_test.hx:53: characters 29-59

 53 | [2m    public var _new : () -> [0m[1mstdgo._internal.hash.Hash.Hash[0m[2m;[0m
    |                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Module stdgo._internal.hash.Hash does not define type Hash

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

     229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
         |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

     239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
         |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

[30;41m ERROR [0m stdgo/_internal/hash_test/Hash.hx:4: characters 26-70

  4 | [2mvar _tests : stdgo.Slice<[0m[1mstdgo._internal.testing.Testing.InternalTest[0m[2m> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(1, 1, ...[(new stdgo._internal.testing.Testing.InternalTest(("TestMarshalHash" : stdgo.GoString), stdgo._internal.hash_test.Hash_test.testMarshalHash) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);[0m
    |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Module stdgo._internal.testing.Testing does not define type InternalTest


```

