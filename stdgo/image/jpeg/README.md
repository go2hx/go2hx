# Module stdgo.image.jpeg has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/image/jpeg/Jpeg_T_decoder_static_extension.hx:567: characters 13-67

 567 | [2m            [0m[1m_internal.image.internal.imageutil.Imageutil_drawYCbCr[0m[2m.drawYCbCr(_img, _bounds?.__copy__(), _d._img3, _bounds.min?.__copy__());[0m
     |             [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Type not found : _internal.image.internal.imageutil.Imageutil_drawYCbCr

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:122: characters 9-132

 122 | [2m        [0m[1m{ _buf : haxe.ds.Vector.fromArrayCopy([for (i in obj._buf) i]), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable }[0m[2m;[0m
     |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
     | Object requires fields: _3, _2, _1, _0

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:122: characters 99-111

 122 | [2m        { _buf : haxe.ds.Vector.fromArrayCopy([for (i in obj._buf) i]), _i : obj._i, _j : obj._j, [0m[1m_nUnreadable[0m[2m : obj._nUnreadable };[0m
     |                                                                                                   [31m^^^^^^^^^^^^[0m
     | { _nUnreadable : stdgo.GoInt, _j : stdgo.GoInt, _i : stdgo.GoInt, _buf : haxe.ds.Vector<stdgo.GoUInt8> } has extra field _nUnreadable

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:122: characters 86-88

 122 | [2m        { _buf : haxe.ds.Vector.fromArrayCopy([for (i in obj._buf) i]), _i : obj._i, [0m[1m_j[0m[2m : obj._j, _nUnreadable : obj._nUnreadable };[0m
     |                                                                                      [31m^^[0m
     | { _nUnreadable : stdgo.GoInt, _j : stdgo.GoInt, _i : stdgo.GoInt, _buf : haxe.ds.Vector<stdgo.GoUInt8> } has extra field _j

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:122: characters 73-75

 122 | [2m        { _buf : haxe.ds.Vector.fromArrayCopy([for (i in obj._buf) i]), [0m[1m_i[0m[2m : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };[0m
     |                                                                         [31m^^[0m
     | { _nUnreadable : stdgo.GoInt, _j : stdgo.GoInt, _i : stdgo.GoInt, _buf : haxe.ds.Vector<stdgo.GoUInt8> } has extra field _i

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:122: characters 11-15

 122 | [2m        { [0m[1m_buf[0m[2m : haxe.ds.Vector.fromArrayCopy([for (i in obj._buf) i]), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };[0m
     |           [31m^^^^[0m
     | { _nUnreadable : stdgo.GoInt, _j : stdgo.GoInt, _i : stdgo.GoInt, _buf : haxe.ds.Vector<stdgo.GoUInt8> } has extra field _buf

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:120: lines 120-123

 120 | [2m    function get__bytes():stdgo.Tuple.Tuple4<haxe.ds.Vector<std.UInt>, StdTypes.Int, StdTypes.Int, StdTypes.Int> [0m[1mreturn {[0m
 121 | [1m        final obj = this._bytes;[0m
 122 | [1m        { _buf : haxe.ds.Vector.fromArrayCopy([for (i in obj._buf) i]), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };[0m
 123 | [1m    }[0m[2m;[0m
     |
     | { _nUnreadable : stdgo.GoInt, _j : stdgo.GoInt, _i : stdgo.GoInt, _buf : haxe.ds.Vector<stdgo.GoUInt8> } should be stdgo.Tuple4<haxe.ds.Vector<UInt>, Int, Int, Int>

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:127: characters 38-42

 127 | [2m            { _buf : ([for (i in obj.[0m[1m_buf[0m[2m) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };[0m
     |                                      [31m^^^^[0m
     | stdgo.Tuple4<haxe.ds.Vector<UInt>, Int, Int, Int> has no field _buf

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:127: characters 34-42

 127 | [2m            { _buf : ([for (i in [0m[1mobj._buf[0m[2m) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };[0m
     |                                  [31m^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:127: characters 89-91

 127 | [2m            { _buf : ([for (i in obj._buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj.[0m[1m_i[0m[2m, _j : obj._j, _nUnreadable : obj._nUnreadable };[0m
     |                                                                                         [31m^^[0m
     | stdgo.Tuple4<haxe.ds.Vector<UInt>, Int, Int, Int> has no field _i

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:127: characters 102-104

 127 | [2m            { _buf : ([for (i in obj._buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj.[0m[1m_j[0m[2m, _nUnreadable : obj._nUnreadable };[0m
     |                                                                                                      [31m^^[0m
     | stdgo.Tuple4<haxe.ds.Vector<UInt>, Int, Int, Int> has no field _j

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:127: characters 125-137

 127 | [2m            { _buf : ([for (i in obj._buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj._j, _nUnreadable : obj.[0m[1m_nUnreadable[0m[2m };[0m
     |                                                                                                                             [31m^^^^^^^^^^^^[0m
     | stdgo.Tuple4<haxe.ds.Vector<UInt>, Int, Int, Int> has no field _nUnreadable

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:250: characters 34-38

 250 | [2m        { _buf : ([for (i in obj.[0m[1m_buf[0m[2m) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };[0m
     |                                  [31m^^^^[0m
     | Null<stdgo.Tuple4<haxe.ds.Vector<UInt>, Int, Int, Int>> has no field _buf

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:250: characters 30-38

 250 | [2m        { _buf : ([for (i in [0m[1mobj._buf[0m[2m) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj._j, _nUnreadable : obj._nUnreadable };[0m
     |                              [31m^^^^^^^^[0m
     | You can't iterate on a Dynamic value, please specify Iterator or Iterable

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:250: characters 85-87

 250 | [2m        { _buf : ([for (i in obj._buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj.[0m[1m_i[0m[2m, _j : obj._j, _nUnreadable : obj._nUnreadable };[0m
     |                                                                                     [31m^^[0m
     | Null<stdgo.Tuple4<haxe.ds.Vector<UInt>, Int, Int, Int>> has no field _i

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:250: characters 98-100

 250 | [2m        { _buf : ([for (i in obj._buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj.[0m[1m_j[0m[2m, _nUnreadable : obj._nUnreadable };[0m
     |                                                                                                  [31m^^[0m
     | Null<stdgo.Tuple4<haxe.ds.Vector<UInt>, Int, Int, Int>> has no field _j

[30;41m ERROR [0m stdgo/image/jpeg/Jpeg.hx:250: characters 121-133

 250 | [2m        { _buf : ([for (i in obj._buf) i] : stdgo.GoArray<stdgo.GoUInt8>), _i : obj._i, _j : obj._j, _nUnreadable : obj.[0m[1m_nUnreadable[0m[2m };[0m
     |                                                                                                                         [31m^^^^^^^^^^^^[0m
     | Null<stdgo.Tuple4<haxe.ds.Vector<UInt>, Int, Int, Int>> has no field _nUnreadable


```

