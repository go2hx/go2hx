# Module stdgo.path.filepath has compilation errors, please do not use:
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

[30;41m ERROR [0m stdgo/GoString.hx:22: characters 8-53

  22 | [2m  if (![0m[1mstdgo._internal.unicode.utf8.Utf8_validString[0m[2m.validString((this : GoString)))[0m
     |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.unicode.utf8.Utf8_validString

[30;41m ERROR [0m stdgo/GoString.hx:157: characters 16-60

 157 | [2m   final tmp = [0m[1mstdgo._internal.unicode.utf8.Utf8_decodeRune[0m[2m.decodeRune(bytes);[0m
     |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.unicode.utf8.Utf8_decodeRune

[30;41m ERROR [0m stdgo/_internal/path/filepath/Filepath.hx:2: character 9

   2 | [2mprivate [0m[1m[0m[2mvar __go2hxdoc__package : Bool;[0m
     |         [31m^[0m
     | stdgo._internal.path.filepath._Filepath.Filepath_Fields_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/_internal/path/filepath/Filepath.hx:31: characters 13-26

  31 | [2m        if ([0m[1m_info != null[0m[2m) this._info = _info;[0m
     |             [31m^^^^^^^^^^^^^[0m
     | Cannot compare Void

[30;41m ERROR [0m stdgo/_internal/path/filepath/Filepath.hx:2: character 9

   2 | [2mprivate [0m[1m[0m[2mvar __go2hxdoc__package : Bool;[0m
     |         [31m^[0m
     | stdgo._internal.path.filepath._Filepath.Filepath_Fields_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/_internal/internal/reflect/Reflect.hx:930: lines 930-941

 930 | [2m[0m[1mclass _Type {[0m
   - | [2m  [...][0m
 941 | [1m}[0m[2m[0m
     |
     | stdgo._internal.internal.reflect._Type is not ready to be accessed, separate your type declarations in several files

          | For function argument '__type__'


```

