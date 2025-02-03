package stdgo.encoding.gob;
class TextGobber_static_extension {
    static public function unmarshalText(_g:stdgo.Pointer<TextGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_TextGobber_static_extension.TextGobber_static_extension.unmarshalText(_g, _data);
    }
    static public function marshalText(_g:stdgo.Pointer<TextGobber>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_TextGobber_static_extension.TextGobber_static_extension.marshalText(_g);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
