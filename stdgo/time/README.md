# Module stdgo.time has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/time/Time__modTimer.hx:3: characters 9-19

   3 | [2m        [0m[1m_stopTimer[0m[2m(_t);[0m
     |         [31m^^^^^^^^^^[0m
     | Unknown identifier : _stopTimer

[30;41m ERROR [0m stdgo/_internal/time/Time__modTimer.hx:9: characters 9-20

   9 | [2m        [0m[1m_startTimer[0m[2m(_t);[0m
     |         [31m^^^^^^^^^^^[0m
     | Unknown identifier : _startTimer

[30;41m ERROR [0m stdgo/time/Time.hx:970: characters 9-81

 970 | [2m        [0m[1mreturn stdgo._internal.time.Time_zoneinfoForTesting.zoneinfoForTesting()[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoString should be String
     | have: stdgo.Pointer<stdgo.GoString>
     | want: stdgo.Pointer<String>

[30;41m ERROR [0m stdgo/_internal/time/Time_parseRFC3339.hx:2: characters 401-402

   2 | [2mvar parseRFC3339 : (stdgo.GoString, stdgo.Ref<stdgo._internal.time.Time_Location.Location>) -> { var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } = function(s:stdgo.GoString, local:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return stdgo._internal.time.Time__parseRFC3339._parseRFC3339(("" : stdgo.GoString), [0m[1ms[0m[2m, local);[0m
     |                                                                                                                                                                                                                                                                                                                                                                                                                 [31m^[0m
     | stdgo.GoString should be stdgo.Ref<stdgo._internal.time.Location>
     | For function argument '_local'


```

