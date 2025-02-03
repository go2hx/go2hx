package stdgo.encoding.gob;
class T_isZeroBugInterface_static_extension {
    static public function gobDecode(_i:T_isZeroBugInterface, _data:Array<std.UInt>):stdgo.Error {
        final _i = (_i : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface_static_extension.T_isZeroBugInterface_static_extension.gobDecode(_i, _data);
    }
    static public function gobEncode(_i:T_isZeroBugInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface_static_extension.T_isZeroBugInterface_static_extension.gobEncode(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
