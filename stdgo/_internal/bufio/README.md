# Module stdgo._internal.bufio has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/bufio_test/Bufio_test.hx:330: characters 21-49

 330 | [2m    public var _r : [0m[1mstdgo._internal.io.Io.Reader[0m[2m;[0m
     |                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.io.Io does not define type Reader

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

      229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
          |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

      239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
          |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/_internal/bufio_test/Bufio_test.hx:269: characters 23-51

 269 | [2m    public var _buf : [0m[1mstdgo._internal.io.Io.Reader[0m[2m = (null : stdgo._internal.io.Io.Reader);[0m
     |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.io.Io does not define type Reader


```

