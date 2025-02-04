package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_textValue_asInterface) class T_textValue_static_extension {
    @:keep
    @:tdfield
    static public function string( _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue):stdgo.GoString {
        @:recv var _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue = _v?.__copy__();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_v._p) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), _1 : false };
            }, _m = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return (_b : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function get( _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue):stdgo.AnyInterface {
        @:recv var _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue = _v?.__copy__();
        return stdgo.Go.toInterface(_v._p);
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _v:stdgo._internal.flag.Flag_t_textvalue.T_textValue = _v?.__copy__();
        return _v._p.unmarshalText((_s : stdgo.Slice<stdgo.GoUInt8>));
    }
}
