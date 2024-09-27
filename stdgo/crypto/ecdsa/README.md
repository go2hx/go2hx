# Module stdgo.crypto.ecdsa has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/crypto/ecdsa/Ecdsa.hx:37: characters 82-84

 37 | [2mtypedef T_nistPoint = stdgo._internal.crypto.ecdsa.Ecdsa_T_nistPoint.T_nistPoint<[0m[1mT_[0m[2m>;[0m
    |                                                                                  [31m^^[0m
    | Type not found : T_

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Compiler.hx:229: characters 7-36

     229 | [2m      [0m[1mload("include_module", 1)(cl)[0m[2m;[0m
         |       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

     239 | [2m  Context.onAfterInitMacros(() -> [0m[1minclude(pack, rec, ignore, classPaths, strict)[0m[2m);[0m
         |                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

[30;41m ERROR [0m stdgo/crypto/ecdsa/Ecdsa.hx:3: characters 45-103

  3 | [2m    static public function scalarBaseMult(t:[0m[1mstdgo._internal.crypto.ecdsa.Ecdsa_T_nistPoint.T_nistPoint[0m[2m, _0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {[0m
    |                                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Not enough type parameters for stdgo._internal.crypto.ecdsa.T_nistPoint


```

