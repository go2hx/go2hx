# Module stdgo.crypto.cipher has compilation errors, please do not use:
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

[30;41m ERROR [0m stdgo/crypto/cipher/Cipher.hx:325: characters 138-146

 325 | [2m        stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension._auth(_g, _out, _ciphertext, _additionalData, [0m[1m_tagMask[0m[2m);[0m
     |                                                                                                                                          [31m^^^^^^^^[0m
     | haxe.ds.Vector<UInt> should be stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>
     | For function argument '_tagMask'

[30;41m ERROR [0m stdgo/crypto/cipher/Cipher.hx:329: characters 111-119

 329 | [2m        stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension._deriveCounter(_g, [0m[1m_counter[0m[2m, _nonce);[0m
     |                                                                                                               [31m^^^^^^^^[0m
     | haxe.ds.Vector<UInt> should be stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>
     | For function argument '_counter'

[30;41m ERROR [0m stdgo/crypto/cipher/Cipher.hx:334: characters 121-129

 334 | [2m        stdgo._internal.crypto.cipher.Cipher_T_gcm_static_extension.T_gcm_static_extension._counterCrypt(_g, _out, _in, [0m[1m_counter[0m[2m);[0m
     |                                                                                                                         [31m^^^^^^^^[0m
     | haxe.ds.Vector<UInt> should be stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>
     | For function argument '_counter'


```

