# Module stdgo._internal.sync has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:100: characters 21-63

 100 | [2m    public var _i : [0m[1mstdgo._internal.sync.atomic_.Atomic_.Int32[0m[2m;[0m
     |                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.sync.atomic_.Atomic_ does not define type Int32

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

[30;41m ERROR [0m stdgo/_internal/sync/atomic_test/Atomic_test.hx:60: characters 23-68

  60 | [2m    public var next : [0m[1mstdgo._internal.sync.atomic_.Atomic_.Pointer_[0m[2m<stdgo._internal.sync.atomic_test.Atomic_test.List> = ({} : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.sync.atomic_test.Atomic_test.List>);[0m
     |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Module stdgo._internal.sync.atomic_.Atomic_ does not define type Pointer_


```

