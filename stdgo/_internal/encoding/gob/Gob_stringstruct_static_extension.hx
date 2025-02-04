package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.StringStruct_asInterface) class StringStruct_static_extension {
    @:keep
    @:tdfield
    static public function gobDecode( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct> = _g;
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.io.Io_eof.eOF;
        };
        var _a = (_data[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        for (_i => _c in _data) {
            if (_c != ((_a + (_i : stdgo.GoUInt8) : stdgo.GoUInt8))) {
                return stdgo._internal.errors.Errors_new_.new_(("invalid data sequence" : stdgo.GoString));
            };
        };
        (@:checkr _g ?? throw "null pointer dereference")._s = (_data : stdgo.GoString)?.__copy__();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct> = _g;
        return { _0 : ((@:checkr _g ?? throw "null pointer dereference")._s : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
