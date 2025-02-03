package stdgo.encoding.gob;
class StringStruct_static_extension {
    static public function gobDecode(_g:StringStruct, _data:Array<std.UInt>):stdgo.Error {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.gob.Gob_StringStruct_static_extension.StringStruct_static_extension.gobDecode(_g, _data);
    }
    static public function gobEncode(_g:StringStruct):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _g = (_g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_StringStruct_static_extension.StringStruct_static_extension.gobEncode(_g);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
