package stdgo._internal.net.http.cookiejar;
@:keep @:allow(stdgo._internal.net.http.cookiejar.Cookiejar.Jar_asInterface) class Jar_static_extension {
    @:keep
    static public function _domainAndType( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>, _host:stdgo.GoString, _domain:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar> = _j;
        if (_domain == (stdgo.Go.str())) {
            return { _0 : _host?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
        };
        if (stdgo._internal.net.http.cookiejar.Cookiejar__isIP._isIP(_host?.__copy__())) {
            if (_host != (_domain)) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errIllegalDomain._errIllegalDomain };
            };
            return { _0 : _host?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
        };
        if (_domain[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
            _domain = (_domain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        if (((_domain.length == (0 : stdgo.GoInt)) || (_domain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errMalformedDomain._errMalformedDomain };
        };
        var __tmp__ = stdgo._internal.net.http.internal.ascii.Ascii_toLower.toLower(_domain?.__copy__()), _domain:stdgo.GoString = __tmp__._0, _isASCII:Bool = __tmp__._1;
        if (!_isASCII) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errMalformedDomain._errMalformedDomain };
        };
        if (_domain[((_domain.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errMalformedDomain._errMalformedDomain };
        };
        if (_j._psList != null) {
            {
                var _ps = (_j._psList.publicSuffix(_domain?.__copy__())?.__copy__() : stdgo.GoString);
                if (((_ps != stdgo.Go.str()) && !stdgo._internal.net.http.cookiejar.Cookiejar__hasDotSuffix._hasDotSuffix(_domain?.__copy__(), _ps?.__copy__()) : Bool)) {
                    if (_host == (_domain)) {
                        return { _0 : _host?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
                    };
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errIllegalDomain._errIllegalDomain };
                };
            };
        };
        if (((_host != _domain) && !stdgo._internal.net.http.cookiejar.Cookiejar__hasDotSuffix._hasDotSuffix(_host?.__copy__(), _domain?.__copy__()) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false, _2 : stdgo._internal.net.http.cookiejar.Cookiejar__errIllegalDomain._errIllegalDomain };
        };
        return { _0 : _domain?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _newEntry( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>, _c:stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>, _now:stdgo._internal.time.Time_Time.Time, _defPath:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar> = _j;
        var _e = ({} : stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry), _remove = false, _err = (null : stdgo.Error);
        _e.name = _c.name?.__copy__();
        if (((_c.path == stdgo.Go.str()) || (_c.path[(0 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            _e.path = _defPath?.__copy__();
        } else {
            _e.path = _c.path?.__copy__();
        };
        {
            var __tmp__ = _j._domainAndType(_host?.__copy__(), _c.domain?.__copy__());
            _e.domain = __tmp__._0?.__copy__();
            _e.hostOnly = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _e?.__copy__(), _1 : false, _2 : _err };
                _e = __tmp__._0;
                _remove = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if ((_c.maxAge < (0 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _e?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
                _e = __tmp__._0;
                _remove = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        } else if ((_c.maxAge > (0 : stdgo.GoInt) : Bool)) {
            _e.expires = _now.add(((_c.maxAge : stdgo._internal.time.Time_Duration.Duration) * (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
            _e.persistent = true;
        } else {
            if (_c.expires.isZero()) {
                _e.expires = stdgo._internal.net.http.cookiejar.Cookiejar__endOfTime._endOfTime?.__copy__();
                _e.persistent = false;
            } else {
                if (!_c.expires.after(_now?.__copy__())) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _e?.__copy__(), _1 : true, _2 : (null : stdgo.Error) };
                        _e = __tmp__._0;
                        _remove = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _e.expires = _c.expires?.__copy__();
                _e.persistent = true;
            };
        };
        _e.value = _c.value?.__copy__();
        _e.secure = _c.secure;
        _e.httpOnly = _c.httpOnly;
        {
            final __value__ = _c.sameSite;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_SameSite.SameSite))) {
                _e.sameSite = ("SameSite" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_SameSite.SameSite))) {
                _e.sameSite = ("SameSite=Strict" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_SameSite.SameSite))) {
                _e.sameSite = ("SameSite=Lax" : stdgo.GoString);
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _e?.__copy__(), _1 : false, _2 : (null : stdgo.Error) };
            _e = __tmp__._0;
            _remove = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    static public function _setCookies( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>, _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _cookies:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>, _now:stdgo._internal.time.Time_Time.Time):Void {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar> = _j;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_cookies.length) == ((0 : stdgo.GoInt))) {
                return;
            };
            if (((_u.scheme != ("http" : stdgo.GoString)) && (_u.scheme != ("https" : stdgo.GoString)) : Bool)) {
                return;
            };
            var __tmp__ = stdgo._internal.net.http.cookiejar.Cookiejar__canonicalHost._canonicalHost(_u.host?.__copy__()), _host:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return;
            };
            var _key = (stdgo._internal.net.http.cookiejar.Cookiejar__jarKey._jarKey(_host?.__copy__(), _j._psList)?.__copy__() : stdgo.GoString);
            var _defPath = (stdgo._internal.net.http.cookiejar.Cookiejar__defaultPath._defaultPath(_u.path?.__copy__())?.__copy__() : stdgo.GoString);
            _j._mu.lock();
            {
                final __f__ = _j._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _submap = (_j._entries[_key] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>));
            var _modified = (false : Bool);
            for (__0 => _cookie in _cookies) {
                var __tmp__ = _j._newEntry(_cookie, _now?.__copy__(), _defPath?.__copy__(), _host?.__copy__()), _e:stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry = __tmp__._0, _remove:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    continue;
                };
                var _id = (_e._id()?.__copy__() : stdgo.GoString);
                if (_remove) {
                    if (_submap != null) {
                        {
                            var __tmp__ = (_submap != null && _submap.exists(_id?.__copy__()) ? { _0 : _submap[_id?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry), _1 : false }), __1:stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                if (_submap != null) _submap.remove(_id);
                                _modified = true;
                            };
                        };
                    };
                    continue;
                };
                if (_submap == null) {
                    _submap = ({
                        final x = new stdgo.GoMap.GoStringMap<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>();
                        x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>);
                };
                {
                    var __tmp__ = (_submap != null && _submap.exists(_id?.__copy__()) ? { _0 : _submap[_id?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry), _1 : false }), _old:stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _e.creation = _old.creation?.__copy__();
                        _e._seqNum = _old._seqNum;
                    } else {
                        _e.creation = _now?.__copy__();
                        _e._seqNum = _j._nextSeqNum;
                        _j._nextSeqNum++;
                    };
                };
                _e.lastAccess = _now?.__copy__();
                _submap[_id] = _e?.__copy__();
                _modified = true;
            };
            if (_modified) {
                if ((_submap.length) == ((0 : stdgo.GoInt))) {
                    if (_j._entries != null) _j._entries.remove(_key);
                } else {
                    _j._entries[_key] = _submap;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function setCookies( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>, _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _cookies:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>):Void {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar> = _j;
        _j._setCookies(_u, _cookies, stdgo._internal.time.Time_now.now()?.__copy__());
    }
    @:keep
    static public function _cookies( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>, _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _now:stdgo._internal.time.Time_Time.Time):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar> = _j;
        var __deferstack__:Array<Void -> Void> = [];
        var _cookies = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        try {
            if (((_u.scheme != ("http" : stdgo.GoString)) && (_u.scheme != ("https" : stdgo.GoString)) : Bool)) {
                return _cookies;
            };
            var __tmp__ = stdgo._internal.net.http.cookiejar.Cookiejar__canonicalHost._canonicalHost(_u.host?.__copy__()), _host:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _cookies;
            };
            var _key = (stdgo._internal.net.http.cookiejar.Cookiejar__jarKey._jarKey(_host?.__copy__(), _j._psList)?.__copy__() : stdgo.GoString);
            _j._mu.lock();
            {
                final __f__ = _j._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _submap = (_j._entries[_key] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>));
            if (_submap == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _cookies;
                };
            };
            var _https = (_u.scheme == (("https" : stdgo.GoString)) : Bool);
            var _path = (_u.path?.__copy__() : stdgo.GoString);
            if (_path == (stdgo.Go.str())) {
                _path = ("/" : stdgo.GoString);
            };
            var _modified = (false : Bool);
            var _selected:stdgo.Slice<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry> = (null : stdgo.Slice<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>);
            for (_id => _e in _submap) {
                if ((_e.persistent && !_e.expires.after(_now?.__copy__()) : Bool)) {
                    if (_submap != null) _submap.remove(_id);
                    _modified = true;
                    continue;
                };
                if (!_e._shouldSend(_https, _host?.__copy__(), _path?.__copy__())) {
                    continue;
                };
                _e.lastAccess = _now?.__copy__();
                _submap[_id] = _e?.__copy__();
                _selected = (_selected.__append__(_e?.__copy__()));
                _modified = true;
            };
            if (_modified) {
                if ((_submap.length) == ((0 : stdgo.GoInt))) {
                    if (_j._entries != null) _j._entries.remove(_key);
                } else {
                    _j._entries[_key] = _submap;
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
                _cookies = (_cookies.__append__((stdgo.Go.setRef(({ name : _e.name?.__copy__(), value : _e.value?.__copy__() } : stdgo._internal.net.http.Http_Cookie.Cookie)) : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>)));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _cookies;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _cookies;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _cookies;
        };
    }
    @:keep
    static public function cookies( _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar>, _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> {
        @:recv var _j:stdgo.Ref<stdgo._internal.net.http.cookiejar.Cookiejar_Jar.Jar> = _j;
        var _cookies = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        return _cookies = _j._cookies(_u, stdgo._internal.time.Time_now.now()?.__copy__());
    }
}
