# Module stdgo._internal.debug.elf has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/reflect/Reflect_indirect.hx:3: characters 26-33

  3 | [2m        if (_v.kind() != [0m[1mpointer[0m[2m) {[0m
    |                          [31m^^^^^^^[0m
    | Unknown identifier : pointer

    [30;41m -> [0m stdgo/_internal/debug/elf/Elf_newFile.hx:220: lines 220-289

     220 | [2m            [0m[1mstdgo.Go.cfor((_i < _shnum : Bool), _i++, {[0m
       - | [2m              [...][0m
     289 | [1m            })[0m[2m;[0m
         |
         | Called from macro here

[30;41m ERROR [0m stdgo/_internal/reflect/Reflect_indirect.hx:2: lines 2-8

  2 | [2mfunction indirect(_v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value [0m[1m{[0m
  - | [2m  [...][0m
  8 | [1m    }[0m[2m[0m
    |
    | Missing return: stdgo._internal.reflect.Value

    [30;41m -> [0m stdgo/_internal/debug/elf/Elf_newFile.hx:220: lines 220-289

     220 | [2m            [0m[1mstdgo.Go.cfor((_i < _shnum : Bool), _i++, {[0m
       - | [2m              [...][0m
     289 | [1m            })[0m[2m;[0m
         |
         | Called from macro here

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/debug/dwarf/Dwarf_T_buf_static_extension.hx:91: characters 57-72

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


```

