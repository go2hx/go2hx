# Module stdgo._internal.os.exec has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:112: characters 23-53

 112 | [2m    public var once : [0m[1mstdgo._internal.sync.Sync.Once[0m[2m;[0m
     |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.sync.Sync does not define type Once

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

      229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
          |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

      239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
          |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec.hx:3: characters 26-70

   3 | [2mvar _tests : stdgo.Slice<[0m[1mstdgo._internal.testing.Testing.InternalTest[0m[2m> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(32, 32, ...[[0m
     |                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.testing.Testing does not define type InternalTest


```

