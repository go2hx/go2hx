# Module stdgo._internal.fmt has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/fmt_test/Fmt_test.hx:1847: characters 39-67

 1847 | [2m    public var _f : stdgo.GoString -> [0m[1mstdgo._internal.io.Io.Reader[0m[2m;[0m
      |                                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Module stdgo._internal.io.Io does not define type Reader

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

       229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
           |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

       239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
           |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

[30;41m ERROR [0m stdgo/_internal/fmt_test/Fmt_test.hx:1580: characters 36-74

 1580 | [2m    public var _reader : stdgo.Ref<[0m[1mstdgo._internal.strings.Strings.Reader[0m[2m> = (null : stdgo.Ref<stdgo._internal.strings.Strings.Reader>);[0m
      |                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Module stdgo._internal.strings.Strings does not define type Reader


```

