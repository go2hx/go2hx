# Module stdgo.sync has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/sync/atomic_/Atomic_.hx:19: characters 94-139

  19 | [2m@:structInit @:using(stdgo.sync.atomic_.Atomic_.Pointer__static_extension) abstract Pointer_([0m[1mstdgo._internal.sync.atomic_.Atomic_.Pointer_[0m[2m) from stdgo._internal.sync.atomic_.Atomic_.Pointer_ to stdgo._internal.sync.atomic_.Atomic_.Pointer_ {[0m
     |                                                                                              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Not enough type parameters for stdgo._internal.sync.atomic_.Pointer_

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

[30;41m ERROR [0m stdgo/sync/Sync.hx:783: characters 122-130

 783 | [2m    static public function onceValue<T_>(__generic__0:haxe.macro.Expr<T_>, _f:haxe.macro.Expr<() -> T_>):haxe.macro.Expr<[0m[1m() -> T_[0m[2m> {[0m
     |                                                                                                                          [31m^^^^^^^^[0m
     | Too many type parameters for haxe.macro.Expr

[30;41m ERROR [0m stdgo/sync/Sync.hx:783: characters 71-73

 783 | [2m    static public function onceValue<T_>(__generic__0:haxe.macro.Expr<[0m[1mT_[0m[2m>, _f:haxe.macro.Expr<() -> T_>):haxe.macro.Expr<() -> T_> {[0m
     |                                                                       [31m^^[0m
     | Too many type parameters for haxe.macro.Expr

[30;41m ERROR [0m stdgo/sync/Sync.hx:783: characters 95-103

 783 | [2m    static public function onceValue<T_>(__generic__0:haxe.macro.Expr<T_>, _f:haxe.macro.Expr<[0m[1m() -> T_[0m[2m>):haxe.macro.Expr<() -> T_> {[0m
     |                                                                                               [31m^^^^^^^^[0m
     | Too many type parameters for haxe.macro.Expr

[30;41m ERROR [0m stdgo/sync/Sync.hx:786: characters 188-223

 786 | [2m    static public function onceValues<T1, T2>(__generic__0:haxe.macro.Expr<T1>, __generic__1:haxe.macro.Expr<T2>, _f:haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr<[0m[1m() -> { var _0 : T1; var _1 : T2; }[0m[2m> {[0m
     |                                                                                                                                                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Too many type parameters for haxe.macro.Expr

[30;41m ERROR [0m stdgo/sync/Sync.hx:786: characters 76-78

 786 | [2m    static public function onceValues<T1, T2>(__generic__0:haxe.macro.Expr<[0m[1mT1[0m[2m>, __generic__1:haxe.macro.Expr<T2>, _f:haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }> {[0m
     |                                                                            [31m^^[0m
     | Too many type parameters for haxe.macro.Expr

[30;41m ERROR [0m stdgo/sync/Sync.hx:786: characters 110-112

 786 | [2m    static public function onceValues<T1, T2>(__generic__0:haxe.macro.Expr<T1>, __generic__1:haxe.macro.Expr<[0m[1mT2[0m[2m>, _f:haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }> {[0m
     |                                                                                                              [31m^^[0m
     | Too many type parameters for haxe.macro.Expr

[30;41m ERROR [0m stdgo/sync/Sync.hx:786: characters 134-169

 786 | [2m    static public function onceValues<T1, T2>(__generic__0:haxe.macro.Expr<T1>, __generic__1:haxe.macro.Expr<T2>, _f:haxe.macro.Expr<[0m[1m() -> { var _0 : T1; var _1 : T2; }[0m[2m>):haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }> {[0m
     |                                                                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Too many type parameters for haxe.macro.Expr

[30;41m ERROR [0m stdgo/sync/Sync.hx:404: characters 35-41

 404 | [2m    public var _state(get, set) : [0m[1mUint64[0m[2m;[0m
     |                                   [31m^^^^^^[0m
     | Type not found : Uint64


```

