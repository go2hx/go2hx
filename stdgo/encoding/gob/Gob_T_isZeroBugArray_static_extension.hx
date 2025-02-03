package stdgo.encoding.gob;
class T_isZeroBugArray_static_extension {
    static public function gobDecode(_a:T_isZeroBugArray, _data:Array<std.UInt>):stdgo.Error {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_T_isZeroBugArray_static_extension.T_isZeroBugArray_static_extension.gobDecode(_a, _data);
    }
    static public function gobEncode(_a:T_isZeroBugArray):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.gob.Gob_T_isZeroBugArray_static_extension.T_isZeroBugArray_static_extension.gobEncode(_a);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
