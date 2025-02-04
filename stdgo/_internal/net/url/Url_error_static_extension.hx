package stdgo._internal.net.url;
@:keep @:allow(stdgo._internal.net.url.Url.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error> = _e;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err) : stdgo._internal.net.url.Url_t__interface_1.T__interface_1)) : stdgo._internal.net.url.Url_t__interface_1.T__interface_1), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.net.url.Url_t__interface_1.T__interface_1), _1 : false };
        }, _t = __tmp__._0, _ok = __tmp__._1;
        return (_ok && _t.temporary() : Bool);
    }
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error> = _e;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err) : stdgo._internal.net.url.Url_t__interface_0.T__interface_0)) : stdgo._internal.net.url.Url_t__interface_0.T__interface_0), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.net.url.Url_t__interface_0.T__interface_0), _1 : false };
        }, _t = __tmp__._0, _ok = __tmp__._1;
        return (_ok && _t.timeout() : Bool);
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %q: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").op), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").uRL), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err;
    }
}
