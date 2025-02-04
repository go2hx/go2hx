package stdgo._internal.net.http.cookiejar;
@:keep @:allow(stdgo._internal.net.http.cookiejar.Cookiejar.T_entry_asInterface) class T_entry_static_extension {
    @:keep
    @:tdfield
    static public function _pathMatch( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>, _requestPath:stdgo.GoString):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry> = _e;
        if (_requestPath == ((@:checkr _e ?? throw "null pointer dereference").path)) {
            return true;
        };
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_requestPath?.__copy__(), (@:checkr _e ?? throw "null pointer dereference").path?.__copy__())) {
            if ((@:checkr _e ?? throw "null pointer dereference").path[(((@:checkr _e ?? throw "null pointer dereference").path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                return true;
            } else if (_requestPath[((@:checkr _e ?? throw "null pointer dereference").path.length : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _domainMatch( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>, _host:stdgo.GoString):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry> = _e;
        if ((@:checkr _e ?? throw "null pointer dereference").domain == (_host)) {
            return true;
        };
        return (!(@:checkr _e ?? throw "null pointer dereference").hostOnly && stdgo._internal.net.http.cookiejar.Cookiejar__hasdotsuffix._hasDotSuffix(_host?.__copy__(), (@:checkr _e ?? throw "null pointer dereference").domain?.__copy__()) : Bool);
    }
    @:keep
    @:tdfield
    static public function _shouldSend( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>, _https:Bool, _host:stdgo.GoString, _path:stdgo.GoString):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry> = _e;
        return ((@:check2r _e._domainMatch(_host?.__copy__()) && @:check2r _e._pathMatch(_path?.__copy__()) : Bool) && ((_https || !(@:checkr _e ?? throw "null pointer dereference").secure : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _id( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s;%s;%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").domain), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").path), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").name))?.__copy__();
    }
}
