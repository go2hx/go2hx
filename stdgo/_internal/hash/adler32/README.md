# Module stdgo._internal.hash.adler32 has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/internal/reflect/Reflect.hx:7: characters 33-76

  7 | [2m@:follow private typedef Type = [0m[1mstdgo._internal.reflect.Reflect_Type_.Type_[0m[2m;[0m
    |                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.reflect.Reflect_Type_

[30;41m ERROR [0m stdgo/_internal/hash/adler32/Adler32.hx:57: characters 78-82

 57 | [2m    public function __underlying__() return new stdgo.AnyInterface((__type__.[0m[1mkind[0m[2m() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);[0m
    |                                                                              [31m^^^^[0m
    | stdgo._internal.internal.reflect._Type has no field kind

[30;41m ERROR [0m stdgo/_internal/hash/adler32/Adler32.hx:57: characters 138-145

 57 | [2m    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.[0m[1mpointer[0m[2m && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);[0m
    |                                                                                                                                          [31m^^^^^^^[0m
    | Abstract<stdgo._internal.internal.reflect.KindType> has no field pointer

[30;41m ERROR [0m stdgo/_internal/hash/adler32/Adler32.hx:57: characters 150-190

 57 | [2m    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && ![0m[1mstdgo._internal.internal.reflect.Reflect[0m[2m.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);[0m
    |                                                                                                                                                      [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Module stdgo._internal.internal.reflect.Reflect does not define type Reflect

        | For function argument 'value'

[30;41m ERROR [0m [31m(macro) [0mstdgo/GoString.hx:22: characters 8-53

 22 | [2m  if (![0m[1mstdgo._internal.unicode.utf8.Utf8_validString[0m[2m.validString((this : GoString)))[0m
    |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : stdgo._internal.unicode.utf8.Utf8_validString


```

