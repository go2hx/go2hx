package stdgo.encoding.gob;
class BinaryGobber_static_extension {
    static public function unmarshalBinary(_g:stdgo.Pointer<BinaryGobber>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_BinaryGobber_static_extension.BinaryGobber_static_extension.unmarshalBinary(_g, _data);
    }
    static public function marshalBinary(_g:stdgo.Pointer<BinaryGobber>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_BinaryGobber_static_extension.BinaryGobber_static_extension.marshalBinary(_g);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
