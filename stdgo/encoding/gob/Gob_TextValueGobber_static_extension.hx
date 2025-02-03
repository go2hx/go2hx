package stdgo.encoding.gob;
class TextValueGobber_static_extension {
    static public function unmarshalText(_v:stdgo.Pointer<TextValueGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_TextValueGobber_static_extension.TextValueGobber_static_extension.unmarshalText(_v, _data);
    }
    static public function marshalText(_v:TextValueGobber):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_TextValueGobber_static_extension.TextValueGobber_static_extension.marshalText(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
