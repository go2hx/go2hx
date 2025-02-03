package stdgo.internal.pkgbits;
class Decoder_static_extension {
    static public function _bigFloat(_r:Decoder):stdgo._internal.math.big.Big_Float_.Float_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension._bigFloat(_r);
    }
    static public function _bigInt(_r:Decoder):stdgo._internal.math.big.Big_Int_.Int_ {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension._bigInt(_r);
    }
    static public function _scalar(_r:Decoder):stdgo._internal.go.constant.Constant_Value.Value {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension._scalar(_r);
    }
    static public function value(_r:Decoder):stdgo._internal.go.constant.Constant_Value.Value {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.value(_r);
    }
    static public function strings(_r:Decoder):Array<String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return [for (i in stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.strings(_r)) i];
    }
    static public function string(_r:Decoder):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.string(_r);
    }
    static public function reloc(_r:Decoder, _k:RelocKind):Index {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.reloc(_r, _k);
    }
    static public function code(_r:Decoder, _mark:SyncMarker):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.code(_r, _mark);
    }
    static public function uint(_r:Decoder):std.UInt {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.uint(_r);
    }
    static public function int_(_r:Decoder):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.int_(_r);
    }
    static public function len(_r:Decoder):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.len(_r);
    }
    static public function uint64(_r:Decoder):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.uint64(_r);
    }
    static public function int64(_r:Decoder):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.int64(_r);
    }
    static public function bool_(_r:Decoder):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.bool_(_r);
    }
    static public function sync(_r:Decoder, _mWant:SyncMarker):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension.sync(_r, _mWant);
    }
    static public function _rawReloc(_r:Decoder, _k:RelocKind, _idx:StdTypes.Int):Index {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        final _idx = (_idx : stdgo.GoInt);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension._rawReloc(_r, _k, _idx);
    }
    static public function _rawVarint(_r:Decoder):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension._rawVarint(_r);
    }
    static public function _rawUvarint(_r:Decoder):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension._rawUvarint(_r);
    }
    static public function _checkErr(_r:Decoder, _err:stdgo.Error):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.internal.pkgbits.Pkgbits_Decoder_static_extension.Decoder_static_extension._checkErr(_r, _err);
    }
}
