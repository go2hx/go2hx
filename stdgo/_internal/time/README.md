# Module stdgo._internal.time has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/time_test/Time_test.hx:7: characters 8-42

 7 | [2mimport [0m[1mstdgo._internal.time.tzdata.Tzdata[0m[2m;[0m
   |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | Type not found : stdgo._internal.time.tzdata.Tzdata

   [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

    229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
        |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
        | Called from here

    239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
        |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
        | Called from here

[30;41m ERROR [0m stdgo/_internal/time_test/Time.hx:5: characters 90-125

 5 | [2m(new stdgo._internal.testing.Testing.InternalTest(("TestNextStdChunk" : stdgo.GoString), [0m[1mstdgo._internal.time_test.Time_test[0m[2m.testNextStdChunk) : stdgo._internal.testing.Testing.InternalTest),[0m
   |                                                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
   | Module stdgo._internal.time_test.Time_test does not define type Time_test

        | For optional function argument 'f'


```

