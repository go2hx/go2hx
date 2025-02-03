package stdgo.encoding.gob;
class Gobber_static_extension {
    static public function gobDecode(_g:stdgo.Pointer<Gobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_Gobber_static_extension.Gobber_static_extension.gobDecode(_g, _data);
    }
    static public function gobEncode(_g:stdgo.Pointer<Gobber>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_Gobber_static_extension.Gobber_static_extension.gobEncode(_g);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
