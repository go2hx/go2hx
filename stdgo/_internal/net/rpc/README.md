# Module stdgo._internal.net.rpc has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/reflect/Reflect_indirect.hx:3: characters 26-33

   3 | [2m        if (_v.kind() != [0m[1mpointer[0m[2m) {[0m
     |                          [31m^^^^^^^[0m
     | Unknown identifier : pointer

[30;41m ERROR [0m stdgo/_internal/reflect/Reflect_indirect.hx:2: lines 2-8

   2 | [2mfunction indirect(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value [0m[1m{[0m
   - | [2m  [...][0m
   8 | [1m    }[0m[2m[0m
     |
     | Missing return: stdgo._internal.reflect.Value

[30;41m ERROR [0m stdgo/_internal/net/rpc/Rpc_Server_static_extension.hx:257: characters 28-69

 257 | [2m        if ((!_useName && ![0m[1mstdgo._internal.go.token.Token_isExported[0m[2m.isExported(_sname?.__copy__()) : Bool)) {[0m
     |                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_isExported

[30;41m ERROR [0m stdgo/_internal/net/rpc/Rpc__isExportedOrBuiltinType.hx:6: characters 17-58

   6 | [2m        return ([0m[1mstdgo._internal.go.token.Token_isExported[0m[2m.isExported(_t.name()?.__copy__()) || (_t.pkgPath() == stdgo.Go.str()) : Bool);[0m
     |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.go.token.Token_isExported

     [30;41m -> [0m stdgo/_internal/net/rpc/Rpc__suitableMethods.hx:11: lines 11-60

      11 | [2m            [0m[1mstdgo.Go.cfor((_m < _typ.numMethod() : Bool), _m++, {[0m
       - | [2m              [...][0m
      60 | [1m            })[0m[2m;[0m
         |
         | Called from macro here

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/rpc/Rpc_Server_static_extension.hx:13: characters 64-110

  13 | [2m            _w.header().set(("Content-Type" : stdgo.GoString), [0m[1m("text/plain; charset=utf-8" : stdgo.GoString)[0m[2m);[0m
     |                                                                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | stdgo.GoString should be stdgo.Slice<stdgo.GoString>
     | For function argument 'value'


```

