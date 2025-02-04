package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_unmarshalerText_asInterface) class T_unmarshalerText_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _u:stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _u:stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText> = _u;
        var _pos = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_b, (58 : stdgo.GoUInt8)) : stdgo.GoInt);
        if (_pos == ((-1 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("missing separator" : stdgo.GoString));
        };
        {
            final __tmp__0 = ((_b.__slice__(0, _pos) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            final __tmp__1 = ((_b.__slice__((_pos + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
            (@:checkr _u ?? throw "null pointer dereference").a = __tmp__0;
            (@:checkr _u ?? throw "null pointer dereference").b = __tmp__1;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _u:stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _u:stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText = _u?.__copy__();
        return { _0 : (((_u.a + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _u.b?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
