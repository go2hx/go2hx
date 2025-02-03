package stdgo.encoding.base64;
class Encoding_static_extension {
    static public function decodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.decodedLen(_enc, _n);
    }
    static public function decode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.decode(_enc, _dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function decodeString(_enc:Encoding, _s:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.decodeString(_enc, _s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _decodeQuantum(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>, _si:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _si = (_si : stdgo.GoInt);
        return {
            final obj = stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension._decodeQuantum(_enc, _dst, _src, _si);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function encodedLen(_enc:Encoding, _n:StdTypes.Int):StdTypes.Int {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.encodedLen(_enc, _n);
    }
    static public function encodeToString(_enc:Encoding, _src:Array<std.UInt>):String {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.encodeToString(_enc, _src);
    }
    static public function encode(_enc:Encoding, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.encode(_enc, _dst, _src);
    }
    static public function strict(_enc:Encoding):Encoding {
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.strict(_enc);
    }
    static public function withPadding(_enc:Encoding, _padding:StdTypes.Int):Encoding {
        final _padding = (_padding : stdgo.GoInt32);
        return stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension.withPadding(_enc, _padding);
    }
}
