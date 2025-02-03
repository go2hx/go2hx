package stdgo.internal.pkgbits;
class Encoder_static_extension {
    static public function _bigFloat(_w:Encoder, _v:stdgo._internal.math.big.Big_Float_.Float_):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _v = (_v : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension._bigFloat(_w, _v);
    }
    static public function _bigInt(_w:Encoder, _v:stdgo._internal.math.big.Big_Int_.Int_):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _v = (_v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension._bigInt(_w, _v);
    }
    static public function _scalar(_w:Encoder, _val:stdgo._internal.go.constant.Constant_Value.Value):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension._scalar(_w, _val);
    }
    static public function value(_w:Encoder, _val:stdgo._internal.go.constant.Constant_Value.Value):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.value(_w, _val);
    }
    static public function strings(_w:Encoder, _ss:Array<String>):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _ss = ([for (i in _ss) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.strings(_w, _ss);
    }
    static public function stringRef(_w:Encoder, _idx:Index):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.stringRef(_w, _idx);
    }
    static public function string(_w:Encoder, _s:String):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.string(_w, _s);
    }
    static public function code(_w:Encoder, _c:Code):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.code(_w, _c);
    }
    static public function reloc(_w:Encoder, _r:RelocKind, _idx:Index):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.reloc(_w, _r, _idx);
    }
    static public function uint(_w:Encoder, _x:std.UInt):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _x = (_x : stdgo.GoUInt);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.uint(_w, _x);
    }
    static public function int_(_w:Encoder, _x:StdTypes.Int):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _x = (_x : stdgo.GoInt);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.int_(_w, _x);
    }
    static public function len(_w:Encoder, _x:StdTypes.Int):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _x = (_x : stdgo.GoInt);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.len(_w, _x);
    }
    static public function uint64(_w:Encoder, _x:haxe.UInt64):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _x = (_x : stdgo.GoUInt64);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.uint64(_w, _x);
    }
    static public function int64(_w:Encoder, _x:haxe.Int64):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.int64(_w, _x);
    }
    static public function bool_(_w:Encoder, _b:Bool):Bool {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.bool_(_w, _b);
    }
    static public function sync(_w:Encoder, _m:SyncMarker):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.sync(_w, _m);
    }
    static public function _rawReloc(_w:Encoder, _r:RelocKind, _idx:Index):StdTypes.Int {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension._rawReloc(_w, _r, _idx);
    }
    static public function _rawVarint(_w:Encoder, _x:haxe.Int64):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension._rawVarint(_w, _x);
    }
    static public function _rawUvarint(_w:Encoder, _x:haxe.UInt64):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _x = (_x : stdgo.GoUInt64);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension._rawUvarint(_w, _x);
    }
    static public function _checkErr(_w:Encoder, _err:stdgo.Error):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension._checkErr(_w, _err);
    }
    static public function flush(_w:Encoder):Index {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Encoder.Encoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Encoder_static_extension.Encoder_static_extension.flush(_w);
    }
}
