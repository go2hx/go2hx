package stdgo.encoding.gob;
class ValueGobber_static_extension {
    static public function gobDecode(_v:stdgo.Pointer<ValueGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_ValueGobber_static_extension.ValueGobber_static_extension.gobDecode(_v, _data);
    }
    static public function gobEncode(_v:ValueGobber):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_ValueGobber_static_extension.ValueGobber_static_extension.gobEncode(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
