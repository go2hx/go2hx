# Module stdgo.crypto.subtle has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/crypto/subtle/Subtle__xorBytes.hx:12: characters 26-35

 12 | [2m            _dst = (_dst.[0m[1m__slice__[0m[2m(_done) : stdgo.Slice<stdgo.GoUInt8>);[0m
    |                          [31m^^^^^^^^^[0m
    | Array<Dynamic> has no field __slice__

[30;41m ERROR [0m stdgo/_internal/crypto/subtle/Subtle__xorBytes.hx:13: characters 22-31

 13 | [2m            _x = (_x.[0m[1m__slice__[0m[2m(_done) : stdgo.Slice<stdgo.GoUInt8>);[0m
    |                      [31m^^^^^^^^^[0m
    | Array<Dynamic> has no field __slice__

[30;41m ERROR [0m stdgo/_internal/crypto/subtle/Subtle__xorBytes.hx:14: characters 22-31

 14 | [2m            _y = (_y.[0m[1m__slice__[0m[2m(_done) : stdgo.Slice<stdgo.GoUInt8>);[0m
    |                      [31m^^^^^^^^^[0m
    | Array<Dynamic> has no field __slice__


```
