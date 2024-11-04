# Module stdgo._internal.net.mail has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/net/mail/Mail_Header_static_extension.hx:6: characters 20-75

  6 | [2m        var _hdr = [0m[1m(_h.get(_key?.__copy__())?.__copy__() : stdgo.GoString)[0m[2m;[0m
    |                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.Slice<stdgo.GoString>> should be stdgo.GoString

[30;41m ERROR [0m stdgo/_internal/net/mail/Mail_Header_static_extension.hx:15: characters 20-84

 15 | [2m        var _hdr = [0m[1m(_h.get(("Date" : stdgo.GoString))?.__copy__() : stdgo.GoString)[0m[2m;[0m
    |                    [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.Slice<stdgo.GoString>> should be stdgo.GoString

[30;41m ERROR [0m stdgo/_internal/net/mail/Mail_Header_static_extension.hx:24: characters 9-118

 24 | [2m        [0m[1mreturn (_h : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader).get(_key?.__copy__())?.__copy__()[0m[2m;[0m
    |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.Slice<stdgo.GoString>> should be stdgo.GoString

[30;41m ERROR [0m [31m(macro) [0mstdgo/_internal/net/mail/Mail_Header_asInterface.hx:8: characters 69-100

  8 | [2m    public dynamic function get(_key:stdgo.GoString):stdgo.GoString [0m[1mreturn __self__.value.get(_key)[0m[2m;[0m
    |                                                                     [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Null<stdgo.Slice<stdgo.GoString>> should be stdgo.GoString


```

