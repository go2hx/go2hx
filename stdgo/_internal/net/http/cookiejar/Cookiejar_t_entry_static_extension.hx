package stdgo._internal.net.http.cookiejar;
@:keep @:allow(stdgo._internal.net.http.cookiejar.Cookiejar.T_entry_asInterface) class T_entry_static_extension {
    @:keep
    @:tdfield
    static public function _pathMatch( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>, _requestPath:stdgo.GoString):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry> = _e;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L136"
        if (_requestPath == ((@:checkr _e ?? throw "null pointer dereference").path)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L137"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L139"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_requestPath?.__copy__(), (@:checkr _e ?? throw "null pointer dereference").path?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L140"
            if ((@:checkr _e ?? throw "null pointer dereference").path[(((@:checkr _e ?? throw "null pointer dereference").path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L141"
                return true;
            } else if (_requestPath[((@:checkr _e ?? throw "null pointer dereference").path.length : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L143"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L146"
        return false;
    }
    @:keep
    @:tdfield
    static public function _domainMatch( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>, _host:stdgo.GoString):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry> = _e;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L128"
        if ((@:checkr _e ?? throw "null pointer dereference").domain == (_host)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L129"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L131"
        return (!(@:checkr _e ?? throw "null pointer dereference").hostOnly && stdgo._internal.net.http.cookiejar.Cookiejar__hasdotsuffix._hasDotSuffix(_host?.__copy__(), (@:checkr _e ?? throw "null pointer dereference").domain?.__copy__()) : Bool);
    }
    @:keep
    @:tdfield
    static public function _shouldSend( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>, _https:Bool, _host:stdgo.GoString, _path:stdgo.GoString):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry> = _e;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L121"
        return ((_e._domainMatch(_host?.__copy__()) && _e._pathMatch(_path?.__copy__()) : Bool) && ((_https || !(@:checkr _e ?? throw "null pointer dereference").secure : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _id( _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry> = _e;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L114"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s;%s;%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").domain), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").path), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").name))?.__copy__();
    }
}
