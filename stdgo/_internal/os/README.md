# Module stdgo._internal.os has compilation errors, please do not use:
```
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

[30;41m ERROR [0m [31m(macro) [0m(unknown position)

      | Module stdgo._internal.encoding.json.Json does not define type Array

         | For function argument 'args'


```

