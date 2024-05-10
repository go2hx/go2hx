# Module stdgo.encoding has compilation errors, please do not use:
```
stdgo/encoding/Binary.hx:362: characters 1-73 : Type name stdgo.encoding.T__struct_0 is redefined from module stdgo.encoding.Gob (b4c8cc6950ad5c88a9a91b2813d61f7a)
stdgo/_internal/encoding/gob/Gob.hx:2453: characters 67-85 : stdgo.GoInt should be Null<stdgo.Pointer<stdgo.GoInt>>
stdgo/_internal/encoding/gob/Gob.hx:2524: characters 18-26 : stdgo._internal.encoding.gob.T1 has no field emptyMap
stdgo/_internal/encoding/gob/Gob.hx:2787: characters 9-56 : Invalid assign
stdgo/_internal/encoding/gob/Gob.hx:2807: characters 9-56 : Invalid assign
stdgo/_internal/encoding/gob/Gob.hx:2910: characters 9-61 : Invalid assign
stdgo/Go.macro.hx:574: lines 574-576 : stdgo._internal.encoding.gob.T__struct_0 should be stdgo.Ref<stdgo._internal.encoding.gob.T_emptyStruct>
stdgo/Go.macro.hx:574: lines 574-576 : ... For function argument '_e'
stdgo/_internal/encoding/gob/Gob.hx:3357: lines 3357-3363 : ... Called from macro here
stdgo/_internal/encoding/gob/Gob.hx:3440: characters 9-101 : error: stdgo._internal.encoding.gob.T_emptyStruct should be stdgo._internal.encoding.gob.T__struct_0
stdgo/_internal/encoding/gob/Gob.hx:3440: characters 9-101 : ... have: stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.T_emptyStruct>>
stdgo/_internal/encoding/gob/Gob.hx:3440: characters 9-101 : ... want: stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.T__struct_0>>
stdgo/Go.macro.hx:574: lines 574-576 : error: stdgo._internal.encoding.gob.T__struct_0 should be stdgo._internal.encoding.gob.T_emptyStruct
stdgo/Go.macro.hx:574: lines 574-576 : ... have: stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.T__struct_0>>
stdgo/Go.macro.hx:574: lines 574-576 : ... want: stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.T_emptyStruct>>
stdgo/Go.macro.hx:574: lines 574-576 : ... For function argument '_e'
stdgo/_internal/encoding/gob/Gob.hx:5167: characters 9-66 : Invalid assign
stdgo/_internal/encoding/gob/Gob.hx:5881: characters 125-132 : Unknown identifier : _intMap
stdgo/_internal/encoding/gob/Gob.hx:6692: characters 17-43 : Type not found : stdgo._internal.net.Net
stdgo/_internal/encoding/gob/Gob.hx:6693: characters 193-219 : Type not found : stdgo._internal.net.Net
stdgo/_internal/encoding/gob/Gob.hx:6693: characters 193-219 : ... For function argument '_e'
stdgo/encoding/Gob.hx:516: characters 66-79 : error: stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>> should be haxe.ds.Vector<Int>
stdgo/encoding/Gob.hx:516: characters 66-79 : ... have: stdgo.Pointer<stdgo.Ref<...>>
stdgo/encoding/Gob.hx:516: characters 66-79 : ... want: stdgo.Pointer<haxe.ds.Vector<...>>
stdgo/encoding/Gob.hx:518: characters 9-19 : error: haxe.ds.Vector<Int> should be stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>
stdgo/encoding/Gob.hx:518: characters 9-19 : ... have: stdgo.Pointer<haxe.ds.Vector<...>>
stdgo/encoding/Gob.hx:518: characters 9-19 : ... want: stdgo.Pointer<stdgo.Ref<...>>
stdgo/encoding/Gob.hx:522: characters 57-70 : error: stdgo.Ref<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>> should be Array<Int>
stdgo/encoding/Gob.hx:522: characters 57-70 : ... have: stdgo.Pointer<stdgo.Ref<...>>
stdgo/encoding/Gob.hx:522: characters 57-70 : ... want: stdgo.Pointer<Array<...>>
stdgo/encoding/Gob.hx:524: characters 9-19 : error: Array<Int> should be stdgo.Ref<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>>
stdgo/encoding/Gob.hx:524: characters 9-19 : ... have: stdgo.Pointer<Array<...>>
stdgo/encoding/Gob.hx:524: characters 9-19 : ... want: stdgo.Pointer<stdgo.Ref<...>>
stdgo/encoding/Gob.hx:533: characters 225-226 : error: haxe.ds.Vector<Int> should be stdgo.Ref<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>
stdgo/encoding/Gob.hx:533: characters 225-226 : ... have: Null<haxe.ds.Vector<...>>
stdgo/encoding/Gob.hx:533: characters 225-226 : ... want: Null<stdgo.Ref<...>>
stdgo/encoding/Gob.hx:2477: characters 53-66 : stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>> should be haxe.ds.Vector<Float>
stdgo/encoding/Gob.hx:2479: characters 9-19 : haxe.ds.Vector<Float> should be stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>
stdgo/encoding/Gob.hx:2483: characters 48-64 : stdgo.Ref<stdgo.GoArray<stdgo.GoString>> should be haxe.ds.Vector<String>
stdgo/encoding/Gob.hx:2485: characters 9-22 : haxe.ds.Vector<String> should be stdgo.Ref<stdgo.GoArray<stdgo.GoString>>
stdgo/encoding/Gob.hx:2529: characters 1-2 : Null<haxe.ds.Vector<Float>> should be Null<stdgo.Ref<stdgo.GoArray<stdgo.GoFloat64>>>
stdgo/encoding/Gob.hx:2529: characters 1-2 : ... For optional function argument 'n'
stdgo/encoding/Gob.hx:2779: characters 45-103 : error: stdgo.GoString should be String
stdgo/encoding/Gob.hx:2779: characters 45-103 : ... have: haxe.ds.Vector<stdgo.GoString>
stdgo/encoding/Gob.hx:2779: characters 45-103 : ... want: haxe.ds.Vector<String>
stdgo/encoding/Gob.hx:2796: characters 45-103 : error: stdgo.GoString should be String
stdgo/encoding/Gob.hx:2796: characters 45-103 : ... have: haxe.ds.Vector<stdgo.GoString>
stdgo/encoding/Gob.hx:2796: characters 45-103 : ... want: haxe.ds.Vector<String>
stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,448

```

