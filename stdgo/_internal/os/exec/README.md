# Module stdgo._internal.os.exec has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1200: characters 25-71

 1200 | [2m                    if ([0m[1mstdgo._internal.os.exec.internal.fdtest.Fdtest[0m[2m.exists(_i)) {[0m
      |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.os.exec.internal.fdtest.Fdtest

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1252: characters 27-50

 1252 | [2m            var __tmp__ = [0m[1mstdgo._internal.net.Net[0m[2m.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _ln:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                           [31m^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1252: characters 123-155

 1252 | [2m            var __tmp__ = stdgo._internal.net.Net.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _ln:[0m[1mstdgo._internal.net.Net.Listener[0m[2m = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                                                                                                                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1257: characters 138-173

 1257 | [2m            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ln) : stdgo.Ref<stdgo._internal.net.Net.TCPListener>)) : stdgo.Ref<[0m[1mstdgo._internal.net.Net.TCPListener[0m[2m>).file(), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                                                                                                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1262: characters 27-50

 1262 | [2m            var __tmp__ = [0m[1mstdgo._internal.net.Net[0m[2m.fileListener(_f), _ln2:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                           [31m^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1262: characters 74-106

 1262 | [2m            var __tmp__ = stdgo._internal.net.Net.fileListener(_f), _ln2:[0m[1mstdgo._internal.net.Net.Listener[0m[2m = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1267: characters 23-65

 1267 | [2m            var _ts = [0m[1mstdgo._internal.net.http.httptest.Httptest[0m[2m.newUnstartedServer(stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http.Request>):Void {} : stdgo._internal.net.http.Http.HandlerFunc)));[0m
      |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.http.httptest.Httptest

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1272: characters 31-60

 1272 | [2m                var __tmp__ = [0m[1mstdgo._internal.net.http.Http[0m[2m.get(_ts.url?.__copy__());[0m
      |                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.http.Http

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1315: characters 34-42

 1315 | [2m                var __tmp__ = _t.[0m[1mdeadline[0m[2m(), _deadline:stdgo._internal.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;[0m
      |                                  [31m^^^^^^^^[0m
      | stdgo.Ref<stdgo._internal.testing.T_> has no field deadline

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1376: characters 19-51

 1376 | [2m        } : () -> [0m[1mstdgo._internal.net.Net.Listener[0m[2m);[0m
      |                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1377: characters 42-74

 1377 | [2m        var _listenerFile = function(_ln:[0m[1mstdgo._internal.net.Net.Listener[0m[2m):stdgo.Ref<stdgo._internal.os.Os.File> {[0m
      |                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1398: characters 40-72

 1398 | [2m                var _la = (_listen() : [0m[1mstdgo._internal.net.Net.Listener[0m[2m);[0m
      |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1401: characters 40-72

 1401 | [2m                var _lb = (_listen() : [0m[1mstdgo._internal.net.Net.Listener[0m[2m);[0m
      |                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:694: characters 23-46

  694 | [2m        var __tmp__ = [0m[1mstdgo._internal.net.Net[0m[2m.fileListener(_f), _ln:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                       [31m^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:694: characters 69-101

  694 | [2m        var __tmp__ = stdgo._internal.net.Net.fileListener(_f), _ln:[0m[1mstdgo._internal.net.Net.Listener[0m[2m = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1761: characters 13-45

 1761 | [2m            [0m[1mstdgo._internal.os.signal.Signal[0m[2m.notify(_c, stdgo._internal.os.Os.interrupt);[0m
      |             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.os.signal.Signal

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1771: characters 13-45

 1771 | [2m            [0m[1mstdgo._internal.os.signal.Signal[0m[2m.ignore(stdgo._internal.os.Os.interrupt);[0m
      |             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.os.signal.Signal

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1776: characters 17-49

 1776 | [2m                [0m[1mstdgo._internal.os.signal.Signal[0m[2m.ignore(_pipeSignal);[0m
      |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.os.signal.Signal

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec.hx:42: characters 80-104

   42 | [2m        Sys.exit((stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface([0m[1mstdgo.Go.asInterface(_m)[0m[2m)).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.GoInt));[0m
      |                                                                                [31m^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Module stdgo._internal.testing.Testing does not define type M_asInterface

        42 | [2m        Sys.exit((stdgo._internal.reflect.Reflect.valueOf([0m[1mstdgo.Go.toInterface(stdgo.Go.asInterface(_m))[0m[2m).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.GoInt));[0m
           |                                                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:640: characters 11-31

       640 | [2m  var t = [0m[1mContext.typeof(expr)[0m[2m;[0m
           |           [31m^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:504: characters 10-30

       504 | [2m  return [0m[1mload("typeof", 1)(e)[0m[2m;[0m
           |          [31m^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

           | Called from here

      [30;41m -> [0m stdgo/Go.macro.hx:459: characters 10-15

       459 | [2m  return [0m[1mrun()[0m[2m;[0m
           |          [31m^^^^^[0m
           | Called from here

       433 | [2m     [0m[1mf(ct, params)[0m[2m;[0m
           |      [31m^^^^^^^^^^^^^[0m
           | Called from here

       346 | [2m   final t = [0m[1mContext.getType(printer.printTypePath(p))[0m[2m;[0m
           |              [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

      [30;41m -> [0m /home/runner/haxe/versions/a97dc16/std/haxe/macro/Context.hx:329: characters 10-35

       329 | [2m  return [0m[1mload("get_type", 1)(name)[0m[2m;[0m
           |          [31m^^^^^^^^^^^^^^^^^^^^^^^^^[0m
           | Called from here

           | For function argument '_i'

[30;41m ERROR [0m [31m(macro) [0m(unknown position)

      | Module stdgo._internal.encoding.json.Json does not define type Array

           | For function argument 'args'


```

