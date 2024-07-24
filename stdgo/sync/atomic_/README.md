# Module stdgo.sync.atomic_ has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/sync/atomic_/Atomic_.hx:19: characters 94-139

  19 | [2m@:structInit @:using(stdgo.sync.atomic_.Atomic_.Pointer__static_extension) abstract Pointer_([0m[1mstdgo._internal.sync.atomic_.Atomic_.Pointer_[0m[2m) from stdgo._internal.sync.atomic_.Atomic_.Pointer_ to stdgo._internal.sync.atomic_.Atomic_.Pointer_ {[0m
     |                                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Not enough type parameters for stdgo._internal.sync.atomic_.Pointer_

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

      229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
          |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

      239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
          |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
          | Called from here

[30;41m ERROR [0m stdgo/sync/atomic_/Atomic_.hx:139: lines 139-143

 139 | [2m@:structInit @:private @:using(stdgo.sync.atomic_.Atomic_.T_noCopy_static_extension) [0m[1mabstract T_noCopy(stdgo._internal.sync.atomic_.Atomic_.T_noCopy) from stdgo._internal.sync.atomic_.Atomic_.T_noCopy to stdgo._internal.sync.atomic_.Atomic_.T_noCopy {[0m
   - | [2m  [...][0m
 143 | [1m}[0m[2m[0m
     |
     | stdgo.sync.atomic_._Atomic_.T_noCopy_Impl_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/sync/atomic_/Atomic_.hx:139: lines 139-143

 139 | [2m@:structInit @:private @:using(stdgo.sync.atomic_.Atomic_.T_noCopy_static_extension) [0m[1mabstract T_noCopy(stdgo._internal.sync.atomic_.Atomic_.T_noCopy) from stdgo._internal.sync.atomic_.Atomic_.T_noCopy to stdgo._internal.sync.atomic_.Atomic_.T_noCopy {[0m
   - | [2m  [...][0m
 143 | [1m}[0m[2m[0m
     |
     | stdgo.sync.atomic_._Atomic_.T_noCopy_Impl_ is not ready to be accessed, separate your type declarations in several files

[30;41m ERROR [0m stdgo/sync/atomic_/Atomic_.hx:139: lines 139-143

 139 | [2m@:structInit @:private @:using(stdgo.sync.atomic_.Atomic_.T_noCopy_static_extension) [0m[1mabstract T_noCopy(stdgo._internal.sync.atomic_.Atomic_.T_noCopy) from stdgo._internal.sync.atomic_.Atomic_.T_noCopy to stdgo._internal.sync.atomic_.Atomic_.T_noCopy {[0m
   - | [2m  [...][0m
 143 | [1m}[0m[2m[0m
     |
     | stdgo.sync.atomic_._Atomic_.T_noCopy_Impl_ is not ready to be accessed, separate your type declarations in several files

          | For optional function argument '__2'


```

