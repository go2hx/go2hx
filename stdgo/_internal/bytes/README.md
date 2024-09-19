# Module stdgo._internal.bytes has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/internal/reflect/Reflect.hx:7: characters 33-76

   7 | [2m@:follow private typedef Type = [0m[1mstdgo._internal.reflect.Reflect_Type_.Type_[0m[2m;[0m
     |                                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.reflect.Reflect_Type_

[30;41m ERROR [0m stdgo/GoString.hx:22: characters 8-53

  22 | [2m  if (![0m[1mstdgo._internal.unicode.utf8.Utf8_validString[0m[2m.validString((this : GoString)))[0m
     |        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.unicode.utf8.Utf8_validString

[30;41m ERROR [0m stdgo/GoString.hx:157: characters 16-60

 157 | [2m   final tmp = [0m[1mstdgo._internal.unicode.utf8.Utf8_decodeRune[0m[2m.decodeRune(bytes);[0m
     |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : stdgo._internal.unicode.utf8.Utf8_decodeRune

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/errors/Errors.hx:70: characters 16-228

  70 | [2m        return [0m[1mstdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.errors.Errors.T_errorString(_text?.__copy__()) : stdgo._internal.errors.Errors.T_errorString)) : stdgo.Ref<stdgo._internal.errors.Errors.T_errorString>))[0m[2m;[0m
     |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Uncaught exception Type not found 'stdgo._internal.errors.Errors_asInterface.T_errorString_asInterface'

     [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:329: characters 10-35

       329 | [2m  return [0m[1mload("get_type", 1)(name)[0m[2m;[0m
           |          [31m^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

     [30;41m -> [0m stdgo/Go.macro.hx:352: characters 14-55

       352 | [2m   final t = [0m[1mContext.getType(printer.printTypePath(p))[0m[2m;[0m
           |              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

       439 | [2m     [0m[1mf(ct, params)[0m[2m;[0m
           |      [31m^^^^^^^^^^^^^[0m
           | Called from here

       431 | [2m      return [0m[1mrun()[0m[2m;[0m
           |              [31m^^^^^[0m
           | Called from here

       465 | [2m  return [0m[1mrun()[0m[2m;[0m
           |          [31m^^^^^[0m
           | Called from here

           | Called from here

     [30;41m -> [0m stdgo/Go.macro.hx:1289: characters 29-32

      1289 | [2m               field.type = [0m[1mf()[0m[2m;[0m
           |                             [31m^^^[0m
           | Called from here

       688 | [2m  var ty = [0m[1mgtDecode(t, expr, [])[0m[2m;[0m
           |            [31m^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

     [30;41m -> [0m stdgo/_internal/bytes/Bytes.hx:35: characters 45-71

        35 | [2m    public function __underlying__() return [0m[1mstdgo.Go.toInterface(this)[0m[2m;[0m
           |                                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here


```

