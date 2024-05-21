# Module stdgo.flag has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/flag/Flag.hx:224: characters 9-100

 224 | [2m        [0m[1mreturn stdgo._internal.flag.Flag.FlagSet_static_extension.string(_f, _name, _value, _usage)[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoString should be String
     | have: stdgo.Pointer<stdgo.GoString>
     | want: stdgo.Pointer<String>

[30;41m ERROR [0m stdgo/flag/Flag.hx:227: characters 74-76

 227 | [2m        stdgo._internal.flag.Flag.FlagSet_static_extension.stringVar(_f, [0m[1m_p[0m[2m, _name, _value, _usage);[0m
     |                                                                          [31m^^[0m
     | error: String should be stdgo.GoString
     | have: stdgo.Pointer<String>
     | want: stdgo.Pointer<stdgo.GoString>

[30;41m ERROR [0m stdgo/flag/Flag.hx:288: characters 70-73

 288 | [2m        stdgo._internal.flag.Flag.FlagSet_static_extension.visit(_f, [0m[1m_fn[0m[2m);[0m
     |                                                                      [31m^^^[0m
     | error: stdgo.Ref<stdgo._internal.flag.Flag> should be stdgo.Ref<stdgo.flag.Flag>
     | have: (stdgo.Ref<...>) -> ...
     | want: (stdgo.Ref<...>) -> ...

[30;41m ERROR [0m stdgo/flag/Flag.hx:292: characters 73-76

 292 | [2m        stdgo._internal.flag.Flag.FlagSet_static_extension.visitAll(_f, [0m[1m_fn[0m[2m);[0m
     |                                                                         [31m^^^[0m
     | error: stdgo.Ref<stdgo._internal.flag.Flag> should be stdgo.Ref<stdgo.flag.Flag>
     | have: (stdgo.Ref<...>) -> ...
     | want: (stdgo.Ref<...>) -> ...

[30;41m ERROR [0m stdgo/flag/Flag.hx:513: characters 44-47

 513 | [2m        stdgo._internal.flag.Flag.visitAll([0m[1m_fn[0m[2m);[0m
     |                                            [31m^^^[0m
     | error: stdgo.Ref<stdgo._internal.flag.Flag> should be stdgo.Ref<stdgo.flag.Flag>
     | have: (stdgo.Ref<...>) -> ...
     | want: (stdgo.Ref<...>) -> ...

[30;41m ERROR [0m stdgo/flag/Flag.hx:521: characters 41-44

 521 | [2m        stdgo._internal.flag.Flag.visit([0m[1m_fn[0m[2m);[0m
     |                                         [31m^^^[0m
     | error: stdgo.Ref<stdgo._internal.flag.Flag> should be stdgo.Ref<stdgo.flag.Flag>
     | have: (stdgo.Ref<...>) -> ...
     | want: (stdgo.Ref<...>) -> ...

[30;41m ERROR [0m stdgo/flag/Flag.hx:681: characters 45-47

 681 | [2m        stdgo._internal.flag.Flag.stringVar([0m[1m_p[0m[2m, _name, _value, _usage);[0m
     |                                             [31m^^[0m
     | error: String should be stdgo.GoString
     | have: stdgo.Pointer<String>
     | want: stdgo.Pointer<stdgo.GoString>

[30;41m ERROR [0m stdgo/flag/Flag.hx:688: characters 9-71

 688 | [2m        [0m[1mreturn stdgo._internal.flag.Flag.string(_name, _value, _usage)[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoString should be String
     | have: stdgo.Pointer<stdgo.GoString>
     | want: stdgo.Pointer<String>

stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,258

```

