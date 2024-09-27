# Module stdgo.debug.dwarf has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/debug/dwarf/Dwarf_T_buf_static_extension.hx:91: characters 57-72

   91 | [2m                            _val = stdgo.Go.toInterface([0m[1m_b._dwarf._addr[0m[2m());[0m
      |                                                         [31m^^^^^^^^^^^^^^^[0m
      | stdgo.Slice<stdgo.GoUInt8> cannot be called

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

       504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
           |          [31m^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:646: characters 11-31

       646 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
           |           [31m^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

      [30;41m -> [0m stdgo/_internal/debug/dwarf/Dwarf_T_buf_static_extension.hx:91: characters 36-75

        91 | [2m                            _val = [0m[1mstdgo.Go.toInterface(_b._dwarf._addr())[0m[2m;[0m
           |                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

[30;41m ERROR [0m stdgo/_internal/debug/dwarf/Dwarf_Data_static_extension.hx:983: characters 21-36

  983 | [2m        var _val = ([0m[1m_b._dwarf._addr[0m[2m() : stdgo.GoUInt64);[0m
      |                     [31m^^^^^^^^^^^^^^^[0m
      | stdgo.Slice<stdgo.GoUInt8> cannot be called

[30;41m ERROR [0m stdgo/_internal/debug/dwarf/Dwarf_T_buf_static_extension.hx:189: characters 62-77

  189 | [2m                                _val = stdgo.Go.toInterface(([0m[1m_b._dwarf._addr[0m[2m() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset));[0m
      |                                                              [31m^^^^^^^^^^^^^^^[0m
      | stdgo.Slice<stdgo.GoUInt8> cannot be called

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

       504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
           |          [31m^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:646: characters 11-31

       646 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
           |           [31m^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

      [30;41m -> [0m stdgo/_internal/debug/dwarf/Dwarf_T_buf_static_extension.hx:189: characters 40-131

       189 | [2m                                _val = [0m[1mstdgo.Go.toInterface((_b._dwarf._addr() : stdgo._internal.debug.dwarf.Dwarf_Offset.Offset))[0m[2m;[0m
           |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/debug/dwarf/Dwarf_Data_static_extension.hx:1053: characters 29-46

 1053 | [2m                    _base = [0m[1m_buf._dwarf._addr[0m[2m();[0m
      |                             [31m^^^^^^^^^^^^^^^^^[0m
      | stdgo.Slice<stdgo.GoUInt8> cannot be called

      [30;41m -> [0m stdgo/_internal/debug/dwarf/Dwarf_Reader_static_extension.hx:9: lines 9-36

         9 | [2m            [0m[1mstdgo.Go.cfor((_i < (_r._d._unit.length) : Bool), _i++, {[0m
         - | [2m              [...][0m
        36 | [1m            })[0m[2m;[0m
           |
           | Called from macro here

           | Called from macro here

           | Called from macro here

           | Called from macro here

           | Called from macro here

           | Called from macro here

           | Called from macro here

           | Called from macro here

           | Called from macro here

           | Called from macro here


```

