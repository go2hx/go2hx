package stdgo.encoding.gob;
class BinaryValueGobber_static_extension {
    static public function unmarshalBinary(_v:stdgo.Pointer<BinaryValueGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_BinaryValueGobber_static_extension.BinaryValueGobber_static_extension.unmarshalBinary(_v, _data);
    }
    static public function marshalBinary(_v:BinaryValueGobber):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_BinaryValueGobber_static_extension.BinaryValueGobber_static_extension.marshalBinary(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
