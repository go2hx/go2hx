# Module stdgo.time has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/time/Time.hx:970: characters 9-62

  970 | [2m        [0m[1mreturn stdgo._internal.time.Time.zoneinfoForTesting()[0m[2m;[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | error: stdgo.GoString should be String
      | have: stdgo.Pointer<stdgo.GoString>
      | want: stdgo.Pointer<String>

[30;41m ERROR [0m stdgo/time/Time.hx:1096: characters 9-51

 1096 | [2m        [0m[1mreturn stdgo._internal.time.Time.after(_d)[0m[2m;[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | error: stdgo._internal.time.Time should be stdgo.time.Time
      | have: stdgo.Chan<stdgo._internal.time.Time>
      | want: stdgo.Chan<stdgo.time.Time>

[30;41m ERROR [0m stdgo/time/Time.hx:1126: characters 9-50

 1126 | [2m        [0m[1mreturn stdgo._internal.time.Time.tick(_d)[0m[2m;[0m
      |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
      | error: stdgo._internal.time.Time should be stdgo.time.Time
      | have: stdgo.Chan<stdgo._internal.time.Time>
      | want: stdgo.Chan<stdgo.time.Time>

stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,224

```

