# Module stdgo.os.exec has compilation errors, please do not use:
```
stdgo/os/exec_test/Exec_test.hx:1297: characters 25-61 : Type not found : stdgo.os.exec.internal.fdtest.Fdtest
stdgo/os/exec_test/Exec_test.hx:1349: characters 27-40 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:1349: characters 113-135 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:1354: characters 128-153 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:1359: characters 27-40 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:1359: characters 64-86 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:1364: characters 23-55 : Type not found : stdgo.net.http.httptest.Httptest
stdgo/os/exec_test/Exec_test.hx:1369: characters 31-50 : Type not found : stdgo.net.http.Http
stdgo/os/exec_test/Exec_test.hx:1412: characters 34-42 : stdgo.Ref<stdgo.testing.T_> has no field deadline
stdgo/os/exec_test/Exec_test.hx:1466: characters 27-49 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:1473: characters 42-64 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:1494: characters 25-47 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:1497: characters 25-47 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:782: characters 23-36 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:782: characters 59-81 : Type not found : stdgo.net.Net
stdgo/os/exec_test/Exec_test.hx:1864: characters 13-35 : Type not found : stdgo.os.signal.Signal
stdgo/os/exec_test/Exec_test.hx:1874: characters 13-35 : Type not found : stdgo.os.signal.Signal
stdgo/os/exec_test/Exec_test.hx:1879: characters 17-39 : Type not found : stdgo.os.signal.Signal
stdgo/os/exec_test/Exec.hx:64: characters 70-94 : Module stdgo.testing.Testing does not define type M_asInterface
stdgo/os/exec_test/Exec.hx:64: characters 70-94 : ... For function argument '_i'
stdgo/encoding/gob/Gob.hx:3756: characters 67-85 : stdgo.GoInt should be Null<stdgo.Pointer<stdgo.GoInt>>
stdgo/encoding/gob/Gob.hx:3827: characters 18-26 : stdgo.encoding.gob.T1 has no field emptyMap
stdgo/encoding/gob/Gob.hx:4140: characters 9-56 : Invalid assign
stdgo/encoding/gob/Gob.hx:4160: characters 9-56 : Invalid assign
stdgo/encoding/gob/Gob.hx:4263: characters 9-61 : Invalid assign
stdgo/Go.macro.hx:565: lines 565-567 : stdgo.encoding.gob.T__struct_0 should be stdgo.Ref<stdgo.encoding.gob.T_emptyStruct>
stdgo/Go.macro.hx:565: lines 565-567 : ... For function argument '_e'
stdgo/encoding/gob/Gob.hx:4725: lines 4725-4731 : ... Called from macro here
stdgo/encoding/gob/Gob.hx:4810: characters 9-101 : error: stdgo.encoding.gob.T_emptyStruct should be stdgo.encoding.gob.T__struct_0
stdgo/encoding/gob/Gob.hx:4810: characters 9-101 : ... have: stdgo.Slice<stdgo.Ref<stdgo.encoding.gob.T_emptyStruct>>
stdgo/encoding/gob/Gob.hx:4810: characters 9-101 : ... want: stdgo.Slice<stdgo.Ref<stdgo.encoding.gob.T__struct_0>>
stdgo/Go.macro.hx:565: lines 565-567 : error: stdgo.encoding.gob.T__struct_0 should be stdgo.encoding.gob.T_emptyStruct
stdgo/Go.macro.hx:565: lines 565-567 : ... have: stdgo.Slice<stdgo.Ref<stdgo.encoding.gob.T__struct_0>>
stdgo/Go.macro.hx:565: lines 565-567 : ... want: stdgo.Ref<stdgo.Ref<stdgo.encoding.gob.T_emptyStruct>>
stdgo/Go.macro.hx:565: lines 565-567 : ... For function argument '_e'
stdgo/encoding/gob/Gob.hx:6777: characters 9-66 : Invalid assign
stdgo/encoding/gob/Gob.hx:7547: characters 125-132 : Unknown identifier : _intMap
stdgo/encoding/gob/Gob.hx:8464: characters 17-33 : Type not found : stdgo.net.Net
stdgo/encoding/gob/Gob.hx:8465: characters 183-199 : Type not found : stdgo.net.Net
stdgo/encoding/gob/Gob.hx:8465: characters 183-199 : ... For function argument '_e'
stdgo/math/big/Big.hx:10239: characters 31-54 : Type not found : stdgo.encoding.xml.Xml_
stdgo/math/big/Big.hx:10246: characters 44-67 : Type not found : stdgo.encoding.xml.Xml_
stdgo/math/big/Big.hx:12932: characters 31-54 : Type not found : stdgo.encoding.xml.Xml_
stdgo/math/big/Big.hx:12939: characters 44-67 : Type not found : stdgo.encoding.xml.Xml_
stdgo/image/Image.hx:1321: characters 50-83 : Type not found : stdgo.image.color.palette.Palette
stdgo/image/Image.hx:1321: characters 50-83 : ... For function argument 'args'
stdgo/image/Image.hx:1327: characters 28-38 : You can't iterate on a Dynamic value, please specify KeyValueIterator or KeyValueIterable
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/Go.macro.hx:764: characters 16-40 : Called from here
stdgo/image/Image.hx:1333: characters 28-80 : ... Called from macro here
stdgo/Go.macro.hx:776: characters 62-63 : stdgo.internal.reflect._Type should be { kind : () -> stdgo.internal.reflect.KindType, assignableTo : stdgo.internal.reflect._Type_asInterface -> Bool }
stdgo/Go.macro.hx:776: characters 62-63 : ... stdgo.internal.reflect._Type has no field assignableTo
stdgo/Go.macro.hx:776: characters 62-63 : ... For function argument 'type'
stdgo/image/Image.hx:1333: characters 28-80 : ... Called from macro here
stdgo/image/Image.hx:1334: characters 144-158 : Any has no field __underlying__
stdgo/image/Image.hx:1334: characters 295-309 : Any has no field __underlying__
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/Go.macro.hx:764: characters 16-40 : Called from here
stdgo/image/Image.hx:1339: characters 28-80 : ... Called from macro here
stdgo/Go.macro.hx:776: characters 62-63 : stdgo.internal.reflect._Type should be { kind : () -> stdgo.internal.reflect.KindType, assignableTo : stdgo.internal.reflect._Type_asInterface -> Bool }
stdgo/Go.macro.hx:776: characters 62-63 : ... stdgo.internal.reflect._Type has no field assignableTo
stdgo/Go.macro.hx:776: characters 62-63 : ... For function argument 'type'
stdgo/image/Image.hx:1339: characters 28-80 : ... Called from macro here
stdgo/image/Image.hx:1340: characters 144-158 : Any has no field __underlying__
stdgo/image/Image.hx:1340: characters 295-309 : Any has no field __underlying__
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/Go.macro.hx:764: characters 16-40 : Called from here
stdgo/image/Image.hx:1342: characters 28-78 : ... Called from macro here
stdgo/Go.macro.hx:776: characters 62-63 : stdgo.internal.reflect._Type should be { kind : () -> stdgo.internal.reflect.KindType, assignableTo : stdgo.internal.reflect._Type_asInterface -> Bool }
stdgo/Go.macro.hx:776: characters 62-63 : ... stdgo.internal.reflect._Type has no field assignableTo
stdgo/Go.macro.hx:776: characters 62-63 : ... For function argument 'type'
stdgo/image/Image.hx:1342: characters 28-78 : ... Called from macro here
stdgo/image/Image.hx:1343: characters 140-154 : Any has no field __underlying__
stdgo/image/Image.hx:1343: characters 287-301 : Any has no field __underlying__
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/Go.macro.hx:764: characters 16-40 : Called from here
stdgo/image/Image.hx:1347: characters 28-71 : ... Called from macro here
stdgo/Go.macro.hx:776: characters 62-63 : stdgo.internal.reflect._Type should be { kind : () -> stdgo.internal.reflect.KindType, assignableTo : stdgo.internal.reflect._Type_asInterface -> Bool }
stdgo/Go.macro.hx:776: characters 62-63 : ... stdgo.internal.reflect._Type has no field assignableTo
stdgo/Go.macro.hx:776: characters 62-63 : ... For function argument 'type'
stdgo/image/Image.hx:1347: characters 28-71 : ... Called from macro here
stdgo/image/Image.hx:1348: characters 124-138 : Any has no field __underlying__
stdgo/image/Image.hx:1348: characters 253-267 : Any has no field __underlying__
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/image/Image.hx:1356: characters 46-71 : Called from here
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/image/Image.hx:1356: characters 46-71 : Called from here
stdgo/Go.macro.hx:1232: characters 7-12 : For function argument 'v'
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:705: characters 13-19 : Unknown identifier : TClass
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/image/Image.hx:1356: characters 46-71 : Called from here
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/image/Image.hx:1356: characters 46-71 : Called from here
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/image/Image.hx:1356: characters 46-71 : Called from here
stdgo/Go.macro.hx:1232: characters 7-12 : For function argument 'value'
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:715: lines 715-717 : Void should be stdgo.image.RGBA64Image
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:717: lines 717-723 : Void should be stdgo.image.RGBA64Image
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/image/Image.hx:1356: characters 46-71 : Called from here
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/image/Image.hx:1356: characters 46-71 : Called from here
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:727: lines 727-729 : Void should be stdgo.image.RGBA64Image
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:729: lines 729-738 : Void should be stdgo.image.RGBA64Image
stdgo/image/Image.hx:1356: characters 25-87 : ... Called from macro here
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/image/Image.hx:1361: characters 74-99 : Called from here
stdgo/Go.macro.hx:1232: characters 7-12 : For function argument 'args'
stdgo/image/Image.hx:1365: characters 31-33 : Any has no field at
stdgo/Go.macro.hx:1232: characters 7-12 : Uncaught exception issue
stdgo/Go.macro.hx:670: characters 12-33 : Called from here
stdgo/image/Image.hx:1367: characters 131-156 : Called from here
stdgo/Go.macro.hx:1232: characters 7-12 : For function argument 'args'
stdgo/encoding/json/Json.hx:593: lines 593-600 : stdgo.GoInt64Map<stdgo.GoString> should be stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>
stdgo/encoding/json/Json.hx:593: lines 593-600 : ... For function argument 'args'
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/Go.macro.hx:764: characters 16-40)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/Go.macro.hx:764: characters 16-40)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/Go.macro.hx:764: characters 16-40)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/Go.macro.hx:764: characters 16-40)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/image/Image.hx:1356: characters 46-71)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/image/Image.hx:1356: characters 46-71)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/image/Image.hx:1356: characters 46-71)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/image/Image.hx:1356: characters 46-71)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/image/Image.hx:1356: characters 46-71)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/image/Image.hx:1356: characters 46-71)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/image/Image.hx:1356: characters 46-71)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/image/Image.hx:1361: characters 74-99)
stdgo/Go.macro.hx:1231: TAbstract(Any,[]),#pos(stdgo/image/Image.hx:1367: characters 131-156)

```

