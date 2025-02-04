package stdgo._internal.net.url;
@:keep @:allow(stdgo._internal.net.url.Url.Userinfo_asInterface) class Userinfo_static_extension {
    @:keep
    @:tdfield
    static public function string( _u:stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> = _u;
        if ((_u == null || (_u : Dynamic).__nil__)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _s = (stdgo._internal.net.url.Url__escape._escape((@:checkr _u ?? throw "null pointer dereference")._username?.__copy__(), (5 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__() : stdgo.GoString);
        if ((@:checkr _u ?? throw "null pointer dereference")._passwordSet) {
            _s = (_s + (((":" : stdgo.GoString) + stdgo._internal.net.url.Url__escape._escape((@:checkr _u ?? throw "null pointer dereference")._password?.__copy__(), (5 : stdgo._internal.net.url.Url_t_encoding.T_encoding))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function password( _u:stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> = _u;
        if ((_u == null || (_u : Dynamic).__nil__)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        return { _0 : (@:checkr _u ?? throw "null pointer dereference")._password?.__copy__(), _1 : (@:checkr _u ?? throw "null pointer dereference")._passwordSet };
    }
    @:keep
    @:tdfield
    static public function username( _u:stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>):stdgo.GoString {
        @:recv var _u:stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> = _u;
        if ((_u == null || (_u : Dynamic).__nil__)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return (@:checkr _u ?? throw "null pointer dereference")._username?.__copy__();
    }
}
