package stdgo._internal.expvar;
@:keep @:allow(stdgo._internal.expvar.Expvar.Func_asInterface) class Func_static_extension {
    @:keep
    @:tdfield
    static public function string( _f:stdgo._internal.expvar.Expvar_func.Func):stdgo.GoString {
        @:recv var _f:stdgo._internal.expvar.Expvar_func.Func = _f;
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_f()), _v:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __4:stdgo.Error = __tmp__._1;
        return (_v : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function value( _f:stdgo._internal.expvar.Expvar_func.Func):stdgo.AnyInterface {
        @:recv var _f:stdgo._internal.expvar.Expvar_func.Func = _f;
        return _f();
    }
}
