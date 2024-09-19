package stdgo._internal.net.http.cookiejar;
@:keep @:allow(stdgo._internal.net.http.cookiejar.Cookiejar.T_entry_asInterface) class T_entry_static_extension {
    @:keep
    static public function _pathMatch( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>, _requestPath:stdgo.GoString):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry> = _e;
        if (_requestPath == (_e.path)) {
            return true;
        };
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_requestPath?.__copy__(), _e.path?.__copy__())) {
            if (_e.path[((_e.path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                return true;
            } else if (_requestPath[(_e.path.length : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _domainMatch( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>, _host:stdgo.GoString):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry> = _e;
        if (_e.domain == (_host)) {
            return true;
        };
        return (!_e.hostOnly && stdgo._internal.net.http.cookiejar.Cookiejar__hasDotSuffix._hasDotSuffix(_host?.__copy__(), _e.domain?.__copy__()) : Bool);
    }
    @:keep
    static public function _shouldSend( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>, _https:Bool, _host:stdgo.GoString, _path:stdgo.GoString):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry> = _e;
        return ((_e._domainMatch(_host?.__copy__()) && _e._pathMatch(_path?.__copy__()) : Bool) && ((_https || !_e.secure : Bool)) : Bool);
    }
    @:keep
    static public function _id( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s;%s;%s" : stdgo.GoString), stdgo.Go.toInterface(_e.domain), stdgo.Go.toInterface(_e.path), stdgo.Go.toInterface(_e.name))?.__copy__();
    }
}
