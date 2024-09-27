# Module stdgo.encoding.xml has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/encoding/xml/Xml_Decoder_static_extension.hx:61: characters 23-36

  61 | [2m        var __tmp__ = [0m[1m_d._stk._name[0m[2m(), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;[0m
     |                       [31m^^^^^^^^^^^^^[0m
     | stdgo._internal.encoding.xml.Name cannot be called

[30;41m ERROR [0m stdgo/_internal/encoding/xml/Xml_Decoder_static_extension.hx:488: characters 51-64

 488 | [2m                                    var __tmp__ = [0m[1m_d._stk._name[0m[2m();[0m
     |                                                   [31m^^^^^^^^^^^^^[0m
     | stdgo._internal.encoding.xml.Name cannot be called

[30;41m ERROR [0m stdgo/_internal/internal/Macro.macro.hx:363: lines 363-366

 363 | [2m   [0m[1mdo {[0m
 364 | [1m    $i{exitName} = false;[0m
 365 | [1m    $switchStmt;[0m
 366 | [1m   } while ($i{selectName} != "")[0m[2m;[0m
     |
     | Missing return: { _1 : stdgo.Error, _0 : Bool }


```

