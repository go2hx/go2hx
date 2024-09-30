# Module stdgo.debug.elf has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/debug/elf/Elf_Section_static_extension.hx:32: characters 98-136

 32 | [2m                    return { _0 : stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface([0m[1m_internal.internal.zstd.Zstd_newReader[0m[2m.newReader(_r))), _1 : (null : stdgo.Error) };[0m
    |                                                                                                  [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.internal.zstd.Zstd_newReader

    [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

     504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
         |          [31m^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

    [30;41m -> [0m stdgo/Go.macro.hx:305: lines 305-310

     305 | [2m  final selfType = [0m[1mContext.typeof(switch expr.expr {[0m
       - | [2m    [...][0m
     310 | [1m  })[0m[2m;[0m
         |
         | Called from here

    [30;41m -> [0m stdgo/_internal/debug/elf/Elf_Section_static_extension.hx:32: characters 77-151

      32 | [2m                    return { _0 : stdgo._internal.io.Io_nopCloser.nopCloser([0m[1mstdgo.Go.asInterface(_internal.internal.zstd.Zstd_newReader.newReader(_r))[0m[2m), _1 : (null : stdgo.Error) };[0m
         |                                                                             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
         | Called from here

         | For function argument '_r'

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


```

