# Module stdgo._internal.time has compilation errors, please do not use:
```
[30;41m ERROR [0m (unknown position)

     | Uncaught exception Stack overflow

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

      229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
          |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

      231 | [2m      [0m[1minclude(prefix + file, true, ignore, classPaths)[0m[2m;[0m
          |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

      239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
          |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/_internal/time_test/Time_test.hx:895: characters 22-52

 895 | [2m    public var _in : [0m[1mstdgo._internal.time.Time.Time[0m[2m;[0m
     |                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.time.Time does not define type Time

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

      229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
          |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

      239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
          |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/_internal/time_test/Time_test.hx:793: characters 24-55

 793 | [2m    public var month : [0m[1mstdgo._internal.time.Time.Month[0m[2m = ((0 : stdgo.GoInt) : stdgo._internal.time.Time.Month);[0m
     |                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.time.Time does not define type Month


```

