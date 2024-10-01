# Module stdgo._internal.crypto.dsa has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/math/big/Big_T_nat_static_extension.hx:365: characters 16-25

 365 | [2m            _q.[0m[1m_divBasic[0m[2m(_u, _v);[0m
     |                [31m^^^^^^^^^[0m
     | stdgo.Slice<stdgo._internal.math.big.Word> has no field _divBasic

     [30;41m -> [0m stdgo/_internal/crypto/dsa/Dsa_sign.hx:14: lines 14-45

      14 | [2m            [0m[1mstdgo.Go.cfor((_attempts > (0 : stdgo.GoInt) : Bool), _attempts--, {[0m
       - | [2m              [...][0m
      45 | [1m            })[0m[2m;[0m
         |
         | Called from macro here

[30;41m ERROR [0m stdgo/_internal/math/big/Big_T_nat_static_extension.hx:367: characters 16-29

 367 | [2m            _q.[0m[1m_divRecursive[0m[2m(_u, _v);[0m
     |                [31m^^^^^^^^^^^^^[0m
     | stdgo.Slice<stdgo._internal.math.big.Word> has no field _divRecursive

     [30;41m -> [0m stdgo/_internal/crypto/dsa/Dsa_sign.hx:14: lines 14-45

      14 | [2m            [0m[1mstdgo.Go.cfor((_attempts > (0 : stdgo.GoInt) : Bool), _attempts--, {[0m
       - | [2m              [...][0m
      45 | [1m            })[0m[2m;[0m
         |
         | Called from macro here

[30;41m ERROR [0m stdgo/_internal/math/big/Big_T_nat_static_extension.hx:370: characters 17-22

 370 | [2m        _q = _q.[0m[1m_norm[0m[2m();[0m
     |                 [31m^^^^^[0m
     | stdgo.Slice<stdgo._internal.math.big.Word> has no field _norm

     [30;41m -> [0m stdgo/_internal/crypto/dsa/Dsa_sign.hx:14: lines 14-45

      14 | [2m            [0m[1mstdgo.Go.cfor((_attempts > (0 : stdgo.GoInt) : Bool), _attempts--, {[0m
       - | [2m              [...][0m
      45 | [1m            })[0m[2m;[0m
         |
         | Called from macro here

[30;41m ERROR [0m stdgo/_internal/internal/Macro.macro.hx:363: lines 363-366

 363 | [2m   [0m[1mdo {[0m
 364 | [1m    $i{exitName} = false;[0m
 365 | [1m    $switchStmt;[0m
 366 | [1m   } while ($i{selectName} != "")[0m[2m;[0m
     |
     | Missing return: stdgo.Error


```

