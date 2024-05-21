# Module stdgo._internal.hash has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/hash_test/Hash_test.hx:8: characters 16-48

  8 | [2m        return [0m[1mstdgo._internal.hash.crc32.Crc32[0m[2m.newIEEE();[0m
    |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.hash.crc32.Crc32

       | For function argument 'args'

[30;41m ERROR [0m stdgo/_internal/hash_test/Hash_test.hx:58: characters 53-89

 58 | [2m        var _first:stdgo._internal.hash.Hash.Hash = [0m[1mstdgo._internal.crypto.sha256.Sha256[0m[2m.new_();[0m
    |                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.crypto.sha256.Sha256

[30;41m ERROR [0m stdgo/_internal/hash_test/Hash_test.hx:72: characters 54-90

 72 | [2m        var _second:stdgo._internal.hash.Hash.Hash = [0m[1mstdgo._internal.crypto.sha256.Sha256[0m[2m.new_();[0m
    |                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.crypto.sha256.Sha256

stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,368

```

