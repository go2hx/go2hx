# Module stdgo.debug.pe has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/debug/pe/Pe__readOptionalHeader.hx:6: characters 144-152

  6 | [2m        var __0:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), __1:stdgo.GoInt = stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface([0m[1m_ohMagic[0m[2m));[0m
    |                                                                                                                                                [31m^^^^^^^^[0m
    | Unknown identifier : _ohMagic

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:646: characters 11-31

     646 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
         |           [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/_internal/debug/pe/Pe__readOptionalHeader.hx:6: characters 123-153

       6 | [2m        var __0:stdgo.GoUInt16 = (0 : stdgo.GoUInt16), __1:stdgo.GoInt = stdgo._internal.encoding.binary.Binary_size.size([0m[1mstdgo.Go.toInterface(_ohMagic)[0m[2m);[0m
         |                                                                                                                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

         | For function argument '_v'

[30;41m ERROR [0m stdgo/_internal/debug/pe/Pe__readOptionalHeader.hx:22: characters 248-253

 22 | [2m                var __0:stdgo._internal.debug.pe.Pe_OptionalHeader32.OptionalHeader32 = ({} : stdgo._internal.debug.pe.Pe_OptionalHeader32.OptionalHeader32), __1:stdgo.GoInt = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface([0m[1m_oh32[0m[2m)) - stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(_oh32.dataDirectory)) : stdgo.GoInt);[0m
    |                                                                                                                                                                                                                                                        [31m^^^^^[0m
    | Unknown identifier : _oh32

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:646: characters 11-31

     646 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
         |           [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/_internal/debug/pe/Pe__readOptionalHeader.hx:22: characters 227-254

      22 | [2m                var __0:stdgo._internal.debug.pe.Pe_OptionalHeader32.OptionalHeader32 = ({} : stdgo._internal.debug.pe.Pe_OptionalHeader32.OptionalHeader32), __1:stdgo.GoInt = (stdgo._internal.encoding.binary.Binary_size.size([0m[1mstdgo.Go.toInterface(_oh32)[0m[2m) - stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(_oh32.dataDirectory)) : stdgo.GoInt);[0m
         |                                                                                                                                                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

         | For function argument '_v'

[30;41m ERROR [0m stdgo/_internal/debug/pe/Pe__readOptionalHeader.hx:38: characters 248-253

 38 | [2m                var __0:stdgo._internal.debug.pe.Pe_OptionalHeader64.OptionalHeader64 = ({} : stdgo._internal.debug.pe.Pe_OptionalHeader64.OptionalHeader64), __1:stdgo.GoInt = (stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface([0m[1m_oh64[0m[2m)) - stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(_oh64.dataDirectory)) : stdgo.GoInt);[0m
    |                                                                                                                                                                                                                                                        [31m^^^^^[0m
    | Unknown identifier : _oh64

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:646: characters 11-31

     646 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
         |           [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/_internal/debug/pe/Pe__readOptionalHeader.hx:38: characters 227-254

      38 | [2m                var __0:stdgo._internal.debug.pe.Pe_OptionalHeader64.OptionalHeader64 = ({} : stdgo._internal.debug.pe.Pe_OptionalHeader64.OptionalHeader64), __1:stdgo.GoInt = (stdgo._internal.encoding.binary.Binary_size.size([0m[1mstdgo.Go.toInterface(_oh64)[0m[2m) - stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(_oh64.dataDirectory)) : stdgo.GoInt);[0m
         |                                                                                                                                                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

         | For function argument '_v'


```

