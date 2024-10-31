# Module stdgo._internal.crypto.dsa has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/math/big/Big_T_nat_static_extension.hx:365: characters 16-25

 365 | [2m            _q.[0m[1m_divBasic[0m[2m(_u, _v);[0m
     |                [31m^^^^^^^^^[0m
     | stdgo.Slice<stdgo._internal.math.big.Word> has no field _divBasic

     [30;41m -> [0m stdgo/_internal/crypto/dsa/Dsa_generateParameters.hx:3: lines 3-85

       3 | [2m        [0m[1mstdgo._internal.internal.Macro.controlFlow({[0m
       - | [2m          [...][0m
      85 | [1m        })[0m[2m;[0m
         |
         | Called from macro here

[30;41m ERROR [0m stdgo/_internal/math/big/Big_T_nat_static_extension.hx:367: characters 16-29

 367 | [2m            _q.[0m[1m_divRecursive[0m[2m(_u, _v);[0m
     |                [31m^^^^^^^^^^^^^[0m
     | stdgo.Slice<stdgo._internal.math.big.Word> has no field _divRecursive

     [30;41m -> [0m stdgo/_internal/crypto/dsa/Dsa_generateParameters.hx:3: lines 3-85

       3 | [2m        [0m[1mstdgo._internal.internal.Macro.controlFlow({[0m
       - | [2m          [...][0m
      85 | [1m        })[0m[2m;[0m
         |
         | Called from macro here

[30;41m ERROR [0m stdgo/_internal/math/big/Big_T_nat_static_extension.hx:370: characters 17-22

 370 | [2m        _q = _q.[0m[1m_norm[0m[2m();[0m
     |                 [31m^^^^^[0m
     | stdgo.Slice<stdgo._internal.math.big.Word> has no field _norm

     [30;41m -> [0m stdgo/_internal/crypto/dsa/Dsa_generateParameters.hx:3: lines 3-85

       3 | [2m        [0m[1mstdgo._internal.internal.Macro.controlFlow({[0m
       - | [2m          [...][0m
      85 | [1m        })[0m[2m;[0m
         |
         | Called from macro here

[30;41m ERROR [0m stdgo/_internal/crypto/dsa/Dsa_generateParameters.hx:3: lines 3-85

   3 | [2m        [0m[1mstdgo._internal.internal.Macro.controlFlow({[0m
   - | [2m          [...][0m
  85 | [1m        })[0m[2m;[0m
     |
     | Missing return: stdgo.Error


```

