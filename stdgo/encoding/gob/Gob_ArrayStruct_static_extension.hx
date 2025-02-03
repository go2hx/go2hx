package stdgo.encoding.gob;
class ArrayStruct_static_extension {
    static public function gobDecode(_a:ArrayStruct, _data:Array<std.UInt>):stdgo.Error {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_ArrayStruct_static_extension.ArrayStruct_static_extension.gobDecode(_a, _data);
    }
    static public function gobEncode(_a:ArrayStruct):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _a = (_a : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_ArrayStruct_static_extension.ArrayStruct_static_extension.gobEncode(_a);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
