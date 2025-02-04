package stdgo._internal.expvar;
@:keep @:allow(stdgo._internal.expvar.Expvar.String__asInterface) class String__static_extension {
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_>, _value:stdgo.GoString):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_> = _v;
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._s.store(stdgo.Go.toInterface(_value));
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_> = _v;
        var _s = (@:check2r _v.value()?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_s)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __4:stdgo.Error = __tmp__._1;
        return (_b : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function value( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_string_.String_> = _v;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2 (@:checkr _v ?? throw "null pointer dereference")._s.load() : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _p = __tmp__._0, __4 = __tmp__._1;
        return _p?.__copy__();
    }
}
