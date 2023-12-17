# Module stdgo.io has compilation errors, please do not use:
```
stdgo/io/fs_test/Fs_test.hx:63: characters 51-319 : { sys : stdgo.AnyInterface, mode : stdgo.io.fs.FileMode, modTime : Null<stdgo.time.Time>, data : stdgo.Slice<stdgo.GoByte> } should be stdgo.testing.fstest.MapFS
stdgo/io/fs_test/Fs_test.hx:63: characters 51-319 : ... For function argument 'value'
stdgo/io/fs_test/Fs_test.hx:64: characters 57-327 : { sys : stdgo.AnyInterface, mode : stdgo.io.fs.FileMode, modTime : Null<stdgo.time.Time>, data : stdgo.Slice<stdgo.GoByte> } should be stdgo.testing.fstest.MapFS
stdgo/io/fs_test/Fs_test.hx:64: characters 57-327 : ... For function argument 'value'
stdgo/io/fs_test/Fs_test.hx:301: characters 9-11 : Unknown identifier : fs
stdgo/io/fs_test/Fs_test.hx:432: characters 57-323 : { sys : stdgo.AnyInterface, mode : stdgo.io.fs.FileMode, modTime : Null<stdgo.time.Time>, data : stdgo.Slice<stdgo.GoByte> } should be stdgo.testing.fstest.MapFS
stdgo/io/fs_test/Fs_test.hx:432: characters 57-323 : ... For function argument 'value'
stdgo/io/fs_test/Fs_test.hx:433: characters 50-298 : { sys : stdgo.AnyInterface, mode : stdgo.io.fs.FileMode, modTime : Null<stdgo.time.Time>, data : stdgo.Slice<stdgo.GoUInt8> } should be stdgo.testing.fstest.MapFS
stdgo/io/fs_test/Fs_test.hx:433: characters 50-298 : ... For function argument 'value'
stdgo/io_test/Io_test.hx:1860: characters 32-38 : Unknown identifier : reader
stdgo/io_test/Io_test.hx:1903: characters 32-38 : Unknown identifier : writer
stdgo/encoding/gob/Gob.hx:10516: characters 27-57 : Type not found : stdgo.internal.saferio.Saferio
stdgo/encoding/gob/Gob.hx:5566: characters 48-78 : Type not found : stdgo.internal.saferio.Saferio
stdgo/encoding/gob/Gob.hx:11384: characters 48-78 : Type not found : stdgo.internal.saferio.Saferio
stdgo/encoding/gob/Gob.hx:4149: characters 9-78 : Invalid assign
stdgo/encoding/gob/Gob.hx:4169: characters 9-78 : Invalid assign
stdgo/encoding/gob/Gob.hx:4272: characters 9-83 : Invalid assign
stdgo/Go.macro.hx:555: lines 555-557 : stdgo.encoding.gob.T__struct_0 should be stdgo.Ref<stdgo.encoding.gob.T_emptyStruct>
stdgo/Go.macro.hx:555: lines 555-557 : ... For function argument '_e'
stdgo/encoding/gob/Gob.hx:4737: lines 4737-4743 : ... Called from macro here
stdgo/encoding/gob/Gob.hx:4822: characters 9-123 : error: stdgo.encoding.gob.T_emptyStruct should be stdgo.encoding.gob.T__struct_0
stdgo/encoding/gob/Gob.hx:4822: characters 9-123 : ... have: stdgo.Slice<stdgo.Ref<stdgo.encoding.gob.T_emptyStruct>>
stdgo/encoding/gob/Gob.hx:4822: characters 9-123 : ... want: stdgo.Slice<stdgo.Ref<stdgo.encoding.gob.T__struct_0>>
stdgo/Go.macro.hx:555: lines 555-557 : error: stdgo.encoding.gob.T__struct_0 should be stdgo.encoding.gob.T_emptyStruct
stdgo/Go.macro.hx:555: lines 555-557 : ... have: stdgo.Slice<stdgo.Ref<stdgo.encoding.gob.T__struct_0>>
stdgo/Go.macro.hx:555: lines 555-557 : ... want: stdgo.Ref<stdgo.Ref<stdgo.encoding.gob.T_emptyStruct>>
stdgo/Go.macro.hx:555: lines 555-557 : ... For function argument '_e'
stdgo/encoding/gob/Gob.hx:6792: characters 9-88 : Invalid assign
stdgo/encoding/gob/Gob.hx:7557: characters 180-187 : Unknown identifier : _intMap
stdgo/encoding/gob/Gob.hx:8474: characters 17-33 : Type not found : stdgo.net.Net
stdgo/encoding/gob/Gob.hx:8475: characters 194-210 : Type not found : stdgo.net.Net
stdgo/encoding/gob/Gob.hx:8475: characters 194-210 : ... For function argument '_e'
stdgo/encoding/json/Json.hx:11878: characters 79-102 : Type not found : stdgo.image.Image
stdgo/encoding/json/Json.hx:11853: characters 61-84 : Type not found : stdgo.image.Image
stdgo/encoding/json/Json.hx:11835: characters 75-98 : Type not found : stdgo.image.Image
stdgo/encoding/json/Json.hx:11810: characters 61-84 : Type not found : stdgo.image.Image
stdgo/encoding/json/Json.hx:1918: characters 24-47 : Type not found : stdgo.image.Image
stdgo/encoding/json/Json.hx:1841: characters 53-76 : Type not found : stdgo.image.Image
stdgo/Go.macro.hx:542: characters 6-11 : Uncaught exception invalid t of gen setRef: TDynamic(null)
stdgo/Go.macro.hx:551: characters 21-31 : Called from here
stdgo/math/big/Big.hx:7814: characters 302-322 : Called from here
/home/runner/haxe/versions/4.3.2/std/haxe/macro/Context.hx:490: characters 10-30 : Called from here
stdgo/Go.macro.hx:305: lines 305-310 : Called from here
stdgo/math/big/Big.hx:7814: characters 280-374 : Called from here
/home/runner/haxe/versions/4.3.2/std/haxe/macro/Context.hx:490: characters 10-30 : Called from here
stdgo/Go.macro.hx:624: characters 11-31 : Called from here
stdgo/math/big/Big.hx:7814: characters 259-375 : Called from here
stdgo/Go.macro.hx:542: characters 6-11 : For function argument 'args'
stdgo/encoding/json/Json.hx:593: lines 593-600 : stdgo.GoInt64Map<stdgo.GoString> should be stdgo.GoMap<stdgo.GoUInt64, stdgo.GoString>
stdgo/encoding/json/Json.hx:593: lines 593-600 : ... For function argument 'args'

```

