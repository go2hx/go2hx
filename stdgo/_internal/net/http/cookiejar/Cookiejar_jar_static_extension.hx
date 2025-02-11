package stdgo._internal.net.http.cookiejar;
@:keep @:allow(stdgo._internal.net.http.cookiejar.Cookiejar.Jar_asInterface) class Jar_static_extension {
    @:keep
    @:tdfield
    static public function _domainAndType( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>, _host:stdgo.GoString, _domain:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar> = _j;
        if (_domain == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : _host?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
        };
        if (stdgo._internal.net.http.cookiejar.Cookiejar__isip._isIP(_host?.__copy__())) {
            if (_host != (_domain)) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errillegaldomain._errIllegalDomain };
            };
            return { _0 : _host?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
        };
        if (_domain[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
            _domain = (_domain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        if (((_domain.length == (0 : stdgo.GoInt)) || (_domain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errmalformeddomain._errMalformedDomain };
        };
        var __tmp__ = stdgo._internal.net.http.internal.ascii.Ascii_tolower.toLower(_domain?.__copy__()), _domain:stdgo.GoString = __tmp__._0, _isASCII:Bool = __tmp__._1;
        if (!_isASCII) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errmalformeddomain._errMalformedDomain };
        };
        if (_domain[((_domain.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errmalformeddomain._errMalformedDomain };
        };
        if ((@:checkr _j ?? throw "null pointer dereference")._psList != null) {
            {
                var _ps = ((@:checkr _j ?? throw "null pointer dereference")._psList.publicSuffix(_domain?.__copy__())?.__copy__() : stdgo.GoString);
                if (((_ps != (stdgo.Go.str() : stdgo.GoString)) && !stdgo._internal.net.http.cookiejar.Cookiejar__hasdotsuffix._hasDotSuffix(_domain?.__copy__(), _ps?.__copy__()) : Bool)) {
                    if (_host == (_domain)) {
                        return { _0 : _host?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
                    };
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errillegaldomain._errIllegalDomain };
                };
            };
        };
        if (((_host != _domain) && !stdgo._internal.net.http.cookiejar.Cookiejar__hasdotsuffix._hasDotSuffix(_host?.__copy__(), _domain?.__copy__()) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errillegaldomain._errIllegalDomain };
        };
        return { _0 : _domain?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _newEntry( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>, _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>, _now:stdgo._internal.time.Time_time.Time, _defPath:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar> = _j;
        var _e = ({} : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry), _remove = false, _err = (null : stdgo.Error);
        _e.name = (@:checkr _c ?? throw "null pointer dereference").name?.__copy__();
        if ((((@:checkr _c ?? throw "null pointer dereference").path == (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _c ?? throw "null pointer dereference").path[(0 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            _e.path = _defPath?.__copy__();
        } else {
            _e.path = (@:checkr _c ?? throw "null pointer dereference").path?.__copy__();
        };
        {
            var __tmp__ = @:check2r _j._domainAndType(_host?.__copy__(), (@:checkr _c ?? throw "null pointer dereference").domain?.__copy__());
            _e.domain = @:tmpset0 __tmp__._0?.__copy__();
            _e.hostOnly = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _e?.__copy__(), _1 : false, _2 : _err };
                _e = __tmp__._0;
                _remove = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (((@:checkr _c ?? throw "null pointer dereference").maxAge < (0 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _e?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
                _e = __tmp__._0;
                _remove = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        } else if (((@:checkr _c ?? throw "null pointer dereference").maxAge > (0 : stdgo.GoInt) : Bool)) {
            _e.expires = _now.add((((@:checkr _c ?? throw "null pointer dereference").maxAge : stdgo._internal.time.Time_duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration))?.__copy__();
            _e.persistent = true;
        } else {
            if ((@:checkr _c ?? throw "null pointer dereference").expires.isZero()) {
                _e.expires = stdgo._internal.net.http.cookiejar.Cookiejar__endoftime._endOfTime?.__copy__();
                _e.persistent = false;
            } else {
                if (!(@:checkr _c ?? throw "null pointer dereference").expires.after(_now?.__copy__())) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _e?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
                        _e = __tmp__._0;
                        _remove = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _e.expires = (@:checkr _c ?? throw "null pointer dereference").expires?.__copy__();
                _e.persistent = true;
            };
        };
        _e.value = (@:checkr _c ?? throw "null pointer dereference").value?.__copy__();
        _e.secure = (@:checkr _c ?? throw "null pointer dereference").secure;
        _e.httpOnly = (@:checkr _c ?? throw "null pointer dereference").httpOnly;
        {
            final __value__ = (@:checkr _c ?? throw "null pointer dereference").sameSite;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_samesite.SameSite))) {
                _e.sameSite = ("SameSite" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_samesite.SameSite))) {
                _e.sameSite = ("SameSite=Strict" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_samesite.SameSite))) {
                _e.sameSite = ("SameSite=Lax" : stdgo.GoString);
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _e?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
            _e = __tmp__._0;
            _remove = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _setCookies( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>, _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _cookies:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>, _now:stdgo._internal.time.Time_time.Time):Void {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar> = _j;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_cookies.length) == ((0 : stdgo.GoInt))) {
                return;
            };
            if ((((@:checkr _u ?? throw "null pointer dereference").scheme != ("http" : stdgo.GoString)) && ((@:checkr _u ?? throw "null pointer dereference").scheme != ("https" : stdgo.GoString)) : Bool)) {
                return;
            };
            var __tmp__ = stdgo._internal.net.http.cookiejar.Cookiejar__canonicalhost._canonicalHost((@:checkr _u ?? throw "null pointer dereference").host?.__copy__()), _host:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return;
            };
            var _key = (stdgo._internal.net.http.cookiejar.Cookiejar__jarkey._jarKey(_host?.__copy__(), (@:checkr _j ?? throw "null pointer dereference")._psList)?.__copy__() : stdgo.GoString);
            var _defPath = (stdgo._internal.net.http.cookiejar.Cookiejar__defaultpath._defaultPath((@:checkr _u ?? throw "null pointer dereference").path?.__copy__())?.__copy__() : stdgo.GoString);
            @:check2 (@:checkr _j ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _j ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _submap = ((@:checkr _j ?? throw "null pointer dereference")._entries[_key] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>));
            var _modified = (false : Bool);
            for (__0 => _cookie in _cookies) {
                var __tmp__ = @:check2r _j._newEntry(_cookie, _now?.__copy__(), _defPath?.__copy__(), _host?.__copy__()), _e:stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry = __tmp__._0, _remove:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    continue;
                };
                var _id = (@:check2 _e._id()?.__copy__() : stdgo.GoString);
                if (_remove) {
                    if (_submap != null) {
                        {
                            var __tmp__ = (_submap != null && _submap.__exists__(_id?.__copy__()) ? { _0 : _submap[_id?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry), _1 : false }), __1:stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                if (_submap != null) _submap.__remove__(_id);
                                _modified = true;
                            };
                        };
                    };
                    continue;
                };
                if (_submap == null) {
                    _submap = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>();
                        x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>);
                };
                {
                    var __tmp__ = (_submap != null && _submap.__exists__(_id?.__copy__()) ? { _0 : _submap[_id?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry), _1 : false }), _old:stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _e.creation = _old.creation?.__copy__();
                        _e._seqNum = _old._seqNum;
                    } else {
                        _e.creation = _now?.__copy__();
                        _e._seqNum = (@:checkr _j ?? throw "null pointer dereference")._nextSeqNum;
                        (@:checkr _j ?? throw "null pointer dereference")._nextSeqNum++;
                    };
                };
                _e.lastAccess = _now?.__copy__();
                _submap[_id] = _e?.__copy__();
                _modified = true;
            };
            if (_modified) {
                if ((_submap.length) == ((0 : stdgo.GoInt))) {
                    if ((@:checkr _j ?? throw "null pointer dereference")._entries != null) (@:checkr _j ?? throw "null pointer dereference")._entries.__remove__(_key);
                } else {
                    (@:checkr _j ?? throw "null pointer dereference")._entries[_key] = _submap;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function setCookies( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>, _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _cookies:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>):Void {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar> = _j;
        @:check2r _j._setCookies(_u, _cookies, stdgo._internal.time.Time_now.now()?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _cookies( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>, _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _now:stdgo._internal.time.Time_time.Time):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar> = _j;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _cookies = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        try {
            if ((((@:checkr _u ?? throw "null pointer dereference").scheme != ("http" : stdgo.GoString)) && ((@:checkr _u ?? throw "null pointer dereference").scheme != ("https" : stdgo.GoString)) : Bool)) {
                return _cookies;
            };
            var __tmp__ = stdgo._internal.net.http.cookiejar.Cookiejar__canonicalhost._canonicalHost((@:checkr _u ?? throw "null pointer dereference").host?.__copy__()), _host:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _cookies;
            };
            var _key = (stdgo._internal.net.http.cookiejar.Cookiejar__jarkey._jarKey(_host?.__copy__(), (@:checkr _j ?? throw "null pointer dereference")._psList)?.__copy__() : stdgo.GoString);
            @:check2 (@:checkr _j ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _j ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _submap = ((@:checkr _j ?? throw "null pointer dereference")._entries[_key] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>));
            if (_submap == null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _cookies;
                };
            };
            var _https = ((@:checkr _u ?? throw "null pointer dereference").scheme == (("https" : stdgo.GoString)) : Bool);
            var _path = ((@:checkr _u ?? throw "null pointer dereference").path?.__copy__() : stdgo.GoString);
            if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
                _path = ("/" : stdgo.GoString);
            };
            var _modified = (false : Bool);
            var _selected:stdgo.Slice<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry> = (null : stdgo.Slice<stdgo._internal.net.http.cookiejar.Cookiejar_t_entry.T_entry>);
            for (_id => _e in _submap) {
                if ((_e.persistent && !_e.expires.after(_now?.__copy__()) : Bool)) {
                    if (_submap != null) _submap.__remove__(_id);
                    _modified = true;
                    continue;
                };
                if (!@:check2 _e._shouldSend(_https, _host?.__copy__(), _path?.__copy__())) {
                    continue;
                };
                _e.lastAccess = _now?.__copy__();
                _submap[_id] = _e?.__copy__();
                _selected = (_selected.__append__(_e?.__copy__()));
                _modified = true;
            };
            if (_modified) {
                if ((_submap.length) == ((0 : stdgo.GoInt))) {
                    if ((@:checkr _j ?? throw "null pointer dereference")._entries != null) (@:checkr _j ?? throw "null pointer dereference")._entries.__remove__(_key);
                } else {
                    (@:checkr _j ?? throw "null pointer dereference")._entries[_key] = _submap;
                };
            };
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_selected), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                var _s = _selected;
                if ((_s[(_i : stdgo.GoInt)].path.length) != ((_s[(_j : stdgo.GoInt)].path.length))) {
                    return ((_s[(_i : stdgo.GoInt)].path.length) > (_s[(_j : stdgo.GoInt)].path.length) : Bool);
                };
                {
                    var _ret = (_s[(_i : stdgo.GoInt)].creation.compare(_s[(_j : stdgo.GoInt)].creation?.__copy__()) : stdgo.GoInt);
                    if (_ret != ((0 : stdgo.GoInt))) {
                        return (_ret < (0 : stdgo.GoInt) : Bool);
                    };
                };
                return (_s[(_i : stdgo.GoInt)]._seqNum < _s[(_j : stdgo.GoInt)]._seqNum : Bool);
            });
            for (__0 => _e in _selected) {
                _cookies = (_cookies.__append__((stdgo.Go.setRef(({ name : _e.name?.__copy__(), value : _e.value?.__copy__() } : stdgo._internal.net.http.Http_cookie.Cookie)) : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>)));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _cookies;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _cookies;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return _cookies;
            };
        };
    }
    @:keep
    @:tdfield
    static public function cookies( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar>, _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_jar.Jar> = _j;
        var _cookies = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        return _cookies = @:check2r _j._cookies(_u, stdgo._internal.time.Time_now.now()?.__copy__());
    }
}
