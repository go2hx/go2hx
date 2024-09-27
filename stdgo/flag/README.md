# Module stdgo.flag has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/flag/Flag.hx:224: characters 9-125

 224 | [2m        [0m[1mreturn stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.string(_f, _name, _value, _usage)[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoString should be String
     | have: stdgo.Pointer<stdgo.GoString>
     | want: stdgo.Pointer<String>

[30;41m ERROR [0m stdgo/flag/Flag.hx:227: characters 99-101

 227 | [2m        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.stringVar(_f, [0m[1m_p[0m[2m, _name, _value, _usage);[0m
     |                                                                                                   [31m^^[0m
     | error: String should be stdgo.GoString
     | have: stdgo.Pointer<String>
     | want: stdgo.Pointer<stdgo.GoString>

[30;41m ERROR [0m stdgo/flag/Flag.hx:681: characters 55-57

 681 | [2m        stdgo._internal.flag.Flag_stringVar.stringVar([0m[1m_p[0m[2m, _name, _value, _usage);[0m
     |                                                       [31m^^[0m
     | error: String should be stdgo.GoString
     | have: stdgo.Pointer<String>
     | want: stdgo.Pointer<stdgo.GoString>

[30;41m ERROR [0m stdgo/flag/Flag.hx:688: characters 9-78

 688 | [2m        [0m[1mreturn stdgo._internal.flag.Flag_string.string(_name, _value, _usage)[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | error: stdgo.GoString should be String
     | have: stdgo.Pointer<stdgo.GoString>
     | want: stdgo.Pointer<String>


```

