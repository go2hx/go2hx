# Module stdgo.encoding.gob has compilation errors, please do not use:
```
stdgo/encoding/gob/Gob.hx:271: characters 66-79 : error: stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>> should be haxe.ds.Vector<Int>
stdgo/encoding/gob/Gob.hx:271: characters 66-79 : ... have: stdgo.Pointer<stdgo.Ref<...>>
stdgo/encoding/gob/Gob.hx:271: characters 66-79 : ... want: stdgo.Pointer<haxe.ds.Vector<...>>
stdgo/encoding/gob/Gob.hx:273: characters 9-19 : error: haxe.ds.Vector<Int> should be stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>
stdgo/encoding/gob/Gob.hx:273: characters 9-19 : ... have: stdgo.Pointer<haxe.ds.Vector<...>>
stdgo/encoding/gob/Gob.hx:273: characters 9-19 : ... want: stdgo.Pointer<stdgo.Ref<...>>
stdgo/encoding/gob/Gob.hx:277: characters 57-70 : error: stdgo.Ref<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>> should be Array<Int>
stdgo/encoding/gob/Gob.hx:277: characters 57-70 : ... have: stdgo.Pointer<stdgo.Ref<...>>
stdgo/encoding/gob/Gob.hx:277: characters 57-70 : ... want: stdgo.Pointer<Array<...>>
stdgo/encoding/gob/Gob.hx:279: characters 9-19 : error: Array<Int> should be stdgo.Ref<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>>
stdgo/encoding/gob/Gob.hx:279: characters 9-19 : ... have: stdgo.Pointer<Array<...>>
stdgo/encoding/gob/Gob.hx:279: characters 9-19 : ... want: stdgo.Pointer<stdgo.Ref<...>>
stdgo/encoding/gob/Gob.hx:288: characters 249-250 : error: haxe.ds.Vector<Int> should be stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>
stdgo/encoding/gob/Gob.hx:288: characters 249-250 : ... have: Null<haxe.ds.Vector<...>>
stdgo/encoding/gob/Gob.hx:288: characters 249-250 : ... want: Null<stdgo.Ref<...>>
stdgo/encoding/gob/Gob.hx:2271: characters 53-66 : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> should be haxe.ds.Vector<Float>
stdgo/encoding/gob/Gob.hx:2273: characters 9-19 : haxe.ds.Vector<Float> should be stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>
stdgo/encoding/gob/Gob.hx:2277: characters 48-64 : stdgo.Ref<stdgo.GoArray<stdgo.GoString>> should be haxe.ds.Vector<String>
stdgo/encoding/gob/Gob.hx:2279: characters 9-22 : haxe.ds.Vector<String> should be stdgo.Ref<stdgo.GoArray<stdgo.GoString>>
stdgo/encoding/gob/Gob.hx:2323: characters 1-2 : Null<haxe.ds.Vector<Float>> should be Null<stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>>
stdgo/encoding/gob/Gob.hx:2323: characters 1-2 : ... For optional function argument 'n'
stdgo/encoding/gob/Gob.hx:2573: characters 45-103 : error: stdgo.GoString should be String
stdgo/encoding/gob/Gob.hx:2573: characters 45-103 : ... have: haxe.ds.Vector<stdgo.GoString>
stdgo/encoding/gob/Gob.hx:2573: characters 45-103 : ... want: haxe.ds.Vector<String>
stdgo/encoding/gob/Gob.hx:2590: characters 45-103 : error: stdgo.GoString should be String
stdgo/encoding/gob/Gob.hx:2590: characters 45-103 : ... have: haxe.ds.Vector<stdgo.GoString>
stdgo/encoding/gob/Gob.hx:2590: characters 45-103 : ... want: haxe.ds.Vector<String>
stdgo/_internal/encoding/gob/Gob_testNilPointerPanics.hx:8: characters 125-132 : Unknown identifier : _intMap

```

