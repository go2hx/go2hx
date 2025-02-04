package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.ArrayStruct_asInterface) class ArrayStruct_static_extension {
    @:keep
    @:tdfield
    static public function gobDecode( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct> = _a;
        if ((_data.length) != (((@:checkr _a ?? throw "null pointer dereference")._a.length))) {
            return stdgo._internal.errors.Errors_new_.new_(("wrong length in array decode" : stdgo.GoString));
        };
        ((@:checkr _a ?? throw "null pointer dereference")._a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_data);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _a:stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct> = _a;
        return { _0 : ((@:checkr _a ?? throw "null pointer dereference")._a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
