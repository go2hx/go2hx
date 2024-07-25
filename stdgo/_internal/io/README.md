# Module stdgo._internal.io has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/io/fs_test/Fs_test.hx:226: characters 9-11

   226 | [2m        [0m[1mfs[0m[2m.walkDir(_fileSystem, ("." : stdgo.GoString), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs.DirEntry, _err:stdgo.Error):stdgo.Error {[0m
       |         [31m^^[0m
       | Unknown identifier : fs

[30;41m ERROR [0m stdgo/_internal/io/fs_test/Fs_test.hx:364: characters 36-65

   364 | [2m                var __tmp__ = stat([0m[1mstdgo.Go.asInterface(_testFs)[0m[2m, _test._path?.__copy__()), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
       |                                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
       | Module haxe.Constraints does not define type IMap_asInterface

       [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:329: characters 10-35

         329 | [2m  return [0m[1mload("get_type", 1)(name)[0m[2m;[0m
             |          [31m^^^^^^^^^^^^^^^^^^^^^^^^^[0m
             | Called from here

       [30;41m -> [0m stdgo/Go.macro.hx:346: characters 14-55

         346 | [2m   final t = [0m[1mContext.getType(printer.printTypePath(p))[0m[2m;[0m
             |              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
             | Called from here

         433 | [2m     [0m[1mf(ct, params)[0m[2m;[0m
             |      [31m^^^^^^^^^^^^^[0m
             | Called from here

         445 | [2m     return [0m[1mrun()[0m[2m;[0m
             |             [31m^^^^^[0m
             | Called from here

         459 | [2m  return [0m[1mrun()[0m[2m;[0m
             |          [31m^^^^^[0m
             | Called from here

             | Called from here

             | For function argument '_fsys'

             | For function argument 'f'

[30;41m ERROR [0m stdgo/_internal/io/fs_test/Fs_test.hx:506: characters 16-43

   506 | [2m        return [0m[1mstdgo.Go.asInterface(_fsys)[0m[2m;[0m
       |                [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
       | Module haxe.Constraints does not define type IMap_asInterface

       [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:329: characters 10-35

         329 | [2m  return [0m[1mload("get_type", 1)(name)[0m[2m;[0m
             |          [31m^^^^^^^^^^^^^^^^^^^^^^^^^[0m
             | Called from here

       [30;41m -> [0m stdgo/Go.macro.hx:346: characters 14-55

         346 | [2m   final t = [0m[1mContext.getType(printer.printTypePath(p))[0m[2m;[0m
             |              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
             | Called from here

         433 | [2m     [0m[1mf(ct, params)[0m[2m;[0m
             |      [31m^^^^^^^^^^^^^[0m
             | Called from here

         445 | [2m     return [0m[1mrun()[0m[2m;[0m
             |             [31m^^^^^[0m
             | Called from here

         459 | [2m  return [0m[1mrun()[0m[2m;[0m
             |          [31m^^^^^[0m
             | Called from here

             | Called from here

[30;41m ERROR [0m stdgo/_internal/io_test/Io_test.hx:1740: characters 32-38

  1740 | [2m        stdgo.Go.routine(() -> [0m[1mreader[0m[2m(_t, stdgo.Go.asInterface(_r), _c));[0m
       |                                [31m^^^^^^[0m
       | Unknown identifier : reader

             | For function argument 'func'

[30;41m ERROR [0m stdgo/_internal/io_test/Io_test.hx:1780: characters 32-38

  1780 | [2m        stdgo.Go.routine(() -> [0m[1mwriter[0m[2m(stdgo.Go.asInterface(_w), _wdat, _c));[0m
       |                                [31m^^^^^^[0m
       | Unknown identifier : writer

             | For function argument 'func'

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/math/big/Big.hx:16163: characters 16-25

 16163 | [2m            _q.[0m[1m_divBasic[0m[2m(_u, _v);[0m
       |                [31m^^^^^^^^^[0m
       | stdgo.Slice<stdgo._internal.math.big.Word> has no field _divBasic


```

