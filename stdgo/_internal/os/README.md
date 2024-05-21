# Module stdgo._internal.os has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1196: characters 25-71

 1196 | [2m                    if ([0m[1mstdgo._internal.os.exec.internal.fdtest.Fdtest[0m[2m.exists(_i)) {[0m
      |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.os.exec.internal.fdtest.Fdtest

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1248: characters 27-50

 1248 | [2m            var __tmp__ = [0m[1mstdgo._internal.net.Net[0m[2m.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _ln:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                           [31m^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1248: characters 123-155

 1248 | [2m            var __tmp__ = stdgo._internal.net.Net.listen(("tcp" : stdgo.GoString), ("127.0.0.1:0" : stdgo.GoString)), _ln:[0m[1mstdgo._internal.net.Net.Listener[0m[2m = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                                                                                                                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1253: characters 138-173

 1253 | [2m            var __tmp__ = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ln) : stdgo.Ref<stdgo._internal.net.Net.TCPListener>)) : stdgo.Ref<[0m[1mstdgo._internal.net.Net.TCPListener[0m[2m>).file(), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                                                                                                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1258: characters 27-50

 1258 | [2m            var __tmp__ = [0m[1mstdgo._internal.net.Net[0m[2m.fileListener(_f), _ln2:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                           [31m^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1258: characters 74-106

 1258 | [2m            var __tmp__ = stdgo._internal.net.Net.fileListener(_f), _ln2:[0m[1mstdgo._internal.net.Net.Listener[0m[2m = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                                                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1263: characters 23-65

 1263 | [2m            var _ts = [0m[1mstdgo._internal.net.http.httptest.Httptest[0m[2m.newUnstartedServer(stdgo.Go.asInterface((function(_w:stdgo._internal.net.http.Http.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http.Request>):Void {} : stdgo._internal.net.http.Http.HandlerFunc)));[0m
      |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.http.httptest.Httptest

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1268: characters 31-60

 1268 | [2m                var __tmp__ = [0m[1mstdgo._internal.net.http.Http[0m[2m.get(_ts.url?.__copy__());[0m
      |                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.http.Http

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1311: characters 34-42

 1311 | [2m                var __tmp__ = _t.[0m[1mdeadline[0m[2m(), _deadline:stdgo._internal.time.Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;[0m
      |                                  [31m^^^^^^^^[0m
      | stdgo.Ref<stdgo._internal.testing.T_> has no field deadline

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1365: characters 27-59

 1365 | [2m        var _listen:() -> [0m[1mstdgo._internal.net.Net.Listener[0m[2m = function():stdgo._internal.net.Net.Listener {[0m
      |                           [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1372: characters 42-74

 1372 | [2m        var _listenerFile = function(_ln:[0m[1mstdgo._internal.net.Net.Listener[0m[2m):stdgo.Ref<stdgo._internal.os.Os.File> {[0m
      |                                          [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1393: characters 25-57

 1393 | [2m                var _la:[0m[1mstdgo._internal.net.Net.Listener[0m[2m = _listen();[0m
      |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1396: characters 25-57

 1396 | [2m                var _lb:[0m[1mstdgo._internal.net.Net.Listener[0m[2m = _listen();[0m
      |                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:695: characters 23-46

  695 | [2m        var __tmp__ = [0m[1mstdgo._internal.net.Net[0m[2m.fileListener(_f), _ln:stdgo._internal.net.Net.Listener = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                       [31m^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:695: characters 69-101

  695 | [2m        var __tmp__ = stdgo._internal.net.Net.fileListener(_f), _ln:[0m[1mstdgo._internal.net.Net.Listener[0m[2m = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
      |                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.net.Net

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1752: characters 13-45

 1752 | [2m            [0m[1mstdgo._internal.os.signal.Signal[0m[2m.notify(_c, stdgo._internal.os.Os.interrupt);[0m
      |             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.os.signal.Signal

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1762: characters 13-45

 1762 | [2m            [0m[1mstdgo._internal.os.signal.Signal[0m[2m.ignore(stdgo._internal.os.Os.interrupt);[0m
      |             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.os.signal.Signal

[30;41m ERROR [0m stdgo/_internal/os/exec_test/Exec_test.hx:1767: characters 17-49

 1767 | [2m                [0m[1mstdgo._internal.os.signal.Signal[0m[2m.ignore(_pipeSignal);[0m
      |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | Type not found : stdgo._internal.os.signal.Signal

[30;41m ERROR [0m (unknown position)

      | Error: Compiler failure
      | Please submit an issue at https://github.com/HaxeFoundation/haxe/issues/new
      | Attach the following information:
      | Haxe: 5.0.0-alpha.1+5e4e368; OS type: unix;
      | File "src/macro/eval/evalExceptions.ml", line 90, characters 20-27
      | Called from file "src/macro/eval/evalExceptions.ml", line 93, characters 15-26
      | Called from file "src/option.ml" (inlined), line 25, characters 14-17
      | Called from file "src/macro/eval/evalExceptions.ml", line 123, characters 2-44
      | Called from file "src/typing/macroContext.ml", line 806, characters 9-83
      | Called from file "src/typing/macroContext.ml", line 964, characters 8-23
      | Called from file "src/typing/callUnification.ml", line 478, characters 15-65
      | Called from file "src/typing/calls.ml", line 284, characters 10-29
      | Called from file "src/typing/typer.ml", line 1816, characters 14-50
      | Called from file "src/typing/macroContext.ml", line 83, characters 10-15
      | Called from file "src/macro/macroApi.ml", line 1928, characters 15-54
      | Called from file "src/macro/eval/evalEmitter.ml", line 766, characters 9-17
      | Called from file "src/macro/eval/evalEmitter.ml", line 83, characters 23-31
      | Called from file "src/macro/eval/evalEmitter.ml", line 260, characters 7-18
      | Called from file "src/macro/eval/evalEmitter.ml", line 773, characters 13-21
      | Called from file "src/macro/eval/evalMain.ml", line 186, characters 11-40
      | Called from file "src/macro/eval/evalExceptions.ml", line 101, characters 5-8
      | Called from file "src/macro/eval/evalExceptions.ml", line 116, characters 10-38
      | Called from file "src/typing/macroContext.ml", line 806, characters 9-83
      | Called from file "src/typing/macroContext.ml", line 964, characters 8-23
      | Called from file "src/typing/callUnification.ml", line 478, characters 15-65
      | Called from file "src/typing/calls.ml", line 284, characters 10-29
      | 


```

