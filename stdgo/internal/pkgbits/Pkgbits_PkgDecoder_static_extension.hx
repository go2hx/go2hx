package stdgo.internal.pkgbits;
class PkgDecoder_static_extension {
    static public function peekObj(_pr:PkgDecoder, _idx:Index):stdgo.Tuple.Tuple3<String, String, CodeObj> {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return {
            final obj = stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.peekObj(_pr, _idx);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function peekPkgPath(_pr:PkgDecoder, _idx:Index):String {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.peekPkgPath(_pr, _idx);
    }
    static public function tempDecoderRaw(_pr:PkgDecoder, _k:RelocKind, _idx:Index):Decoder {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.tempDecoderRaw(_pr, _k, _idx);
    }
    static public function newDecoderRaw(_pr:PkgDecoder, _k:RelocKind, _idx:Index):Decoder {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.newDecoderRaw(_pr, _k, _idx);
    }
    static public function retireDecoder(_pr:PkgDecoder, _d:Decoder):Void {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_Decoder.Decoder>);
        stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.retireDecoder(_pr, _d);
    }
    static public function tempDecoder(_pr:PkgDecoder, _k:RelocKind, _idx:Index, _marker:SyncMarker):Decoder {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.tempDecoder(_pr, _k, _idx, _marker);
    }
    static public function newDecoder(_pr:PkgDecoder, _k:RelocKind, _idx:Index, _marker:SyncMarker):Decoder {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.newDecoder(_pr, _k, _idx, _marker);
    }
    static public function stringIdx(_pr:PkgDecoder, _idx:Index):String {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.stringIdx(_pr, _idx);
    }
    static public function dataIdx(_pr:PkgDecoder, _k:RelocKind, _idx:Index):String {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.dataIdx(_pr, _k, _idx);
    }
    static public function absIdx(_pr:PkgDecoder, _k:RelocKind, _idx:Index):StdTypes.Int {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.absIdx(_pr, _k, _idx);
    }
    static public function fingerprint(_pr:PkgDecoder):haxe.ds.Vector<std.UInt> {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.fingerprint(_pr)) i]);
    }
    static public function totalElems(_pr:PkgDecoder):StdTypes.Int {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.totalElems(_pr);
    }
    static public function numElems(_pr:PkgDecoder, _k:RelocKind):StdTypes.Int {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.numElems(_pr, _k);
    }
    static public function syncMarkers(_pr:PkgDecoder):Bool {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.syncMarkers(_pr);
    }
    static public function pkgPath(_pr:PkgDecoder):String {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder.PkgDecoder>);
        return stdgo._internal.internal.pkgbits.Pkgbits_PkgDecoder_static_extension.PkgDecoder_static_extension.pkgPath(_pr);
    }
}
