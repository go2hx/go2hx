# Module stdgo._internal.math.rand has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/internal/reflect/Reflect.hx:7: characters 33-76

  7 | [2m@:follow private typedef Type = [0m[1mstdgo._internal.reflect.Reflect_Type_.Type_[0m[2m;[0m
    |                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.reflect.Reflect_Type_

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

     229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
         |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

     239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
         |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

[30;41m ERROR [0m [31m(macro) [0mstdgo/GoString.hx:22: characters 8-53

 22 | [2m  if (![0m[1mstdgo._internal.unicode.utf8.Utf8_validString[0m[2m.validString((this : GoString)))[0m
    |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.unicode.utf8.Utf8_validString


```

