# Module stdgo._internal.crypto.ed25519 has compilation errors, please do not use:
```
[30;41m ERROR [0m _internal/crypto/internal/edwards25519/Edwards25519_Point_static_extension.hx:222: characters 84-89

 222 | [2m            (_v : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point).[0m[1m__294[0m[2m = __tmp__.__294;[0m
     |                                                                                    [31m^^^^^[0m
     | _internal.crypto.internal.edwards25519.Point has no field __294

[30;41m ERROR [0m _internal/crypto/internal/edwards25519/Edwards25519_Point_static_extension.hx:222: characters 100-105

 222 | [2m            (_v : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point).__294 = __tmp__.[0m[1m__294[0m[2m;[0m
     |                                                                                                    [31m^^^^^[0m
     | Null<_internal.crypto.internal.edwards25519.Point> has no field __294

[30;41m ERROR [0m _internal/crypto/internal/edwards25519/Edwards25519__generator.hx:2: characters 18-79

   2 | [2mvar _generator = [0m[1m_internal.crypto.internal.edwards25519.Edwards25519___tmp__15[0m[2m.__tmp__15._0;[0m
     |                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.crypto.internal.edwards25519.Edwards25519___tmp__15


```
