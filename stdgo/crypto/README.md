# Module stdgo.crypto has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/crypto/tls/Tls_T_marshalingFunction.hx:2: characters 166-244

    2 | [2m@:named @:using(stdgo._internal.crypto.tls.Tls_T_marshalingFunction_static_extension.T_marshalingFunction_static_extension) typedef T_marshalingFunction = stdgo.Ref<[0m[1m_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder[0m[2m> -> stdgo.Error;[0m
      |                                                                                                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder

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

[30;41m ERROR [0m stdgo/crypto/tls/Tls.hx:2440: characters 33-81

 2440 | [2m    public var _key(get, set) : [0m[1m_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey[0m[2m;[0m
      |                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : _internal.crypto.ecdh.Ecdh_PrivateKey


```

