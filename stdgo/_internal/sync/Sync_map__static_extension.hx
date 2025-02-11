package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Map__asInterface) class Map__static_extension {
    @:keep
    @:tdfield
    static public function _dirtyLocked( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
    }
    @:keep
    @:tdfield
    static public function _missLocked( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        (@:checkr _m ?? throw "null pointer dereference")._misses++;
        if (((@:checkr _m ?? throw "null pointer dereference")._misses < ((@:checkr _m ?? throw "null pointer dereference")._dirty.length) : Bool)) {
            return;
        };
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._read.store((stdgo.Go.setRef(({ _m : (@:checkr _m ?? throw "null pointer dereference")._dirty } : stdgo._internal.sync.Sync_t_readonly.T_readOnly)) : stdgo.Ref<stdgo._internal.sync.Sync_t_readonly.T_readOnly>));
        (@:checkr _m ?? throw "null pointer dereference")._dirty = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>);
        (@:checkr _m ?? throw "null pointer dereference")._misses = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function range( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _read = (@:check2r _m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        if (_read._amended) {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            _read = @:check2r _m._loadReadOnly()?.__copy__();
            if (_read._amended) {
                _read = ({ _m : (@:checkr _m ?? throw "null pointer dereference")._dirty } : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
                @:check2 (@:checkr _m ?? throw "null pointer dereference")._read.store((stdgo.Go.setRef(_read) : stdgo.Ref<stdgo._internal.sync.Sync_t_readonly.T_readOnly>));
                (@:checkr _m ?? throw "null pointer dereference")._dirty = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>);
                (@:checkr _m ?? throw "null pointer dereference")._misses = (0 : stdgo.GoInt);
            };
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        };
        for (_k => _e in _read._m) {
            var __tmp__ = @:check2r _e._load(), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                continue;
            };
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    @:tdfield
    static public function compareAndDelete( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _deleted = false;
        var _read = (@:check2r _m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((!_ok && _read._amended : Bool)) {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            _read = @:check2r _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                _e = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if ((!_ok && _read._amended : Bool)) {
                {
                    var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                    _e = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                @:check2r _m._missLocked();
            };
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        };
        while (_ok) {
            var _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
            if ((((_p == null || (_p : Dynamic).__nil__) || _p == (stdgo._internal.sync.Sync__expunged._expunged) : Bool) || ((_p : stdgo.AnyInterface) != _old) : Bool)) {
                return _deleted = false;
            };
            if (@:check2 (@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(_p, (null : stdgo.Ref<stdgo.AnyInterface>))) {
                return _deleted = true;
            };
        };
        return _deleted = false;
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _read = (@:check2r _m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return @:check2r _e._tryCompareAndSwap(_old, _new_);
                } else if (!_read._amended) {
                    return false;
                };
            };
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            _read = @:check2r _m._loadReadOnly()?.__copy__();
            var _swapped = (false : Bool);
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _swapped = @:check2r _e._tryCompareAndSwap(_old, _new_);
                } else {
                    var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _swapped = @:check2r _e._tryCompareAndSwap(_old, _new_);
                        @:check2r _m._missLocked();
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _swapped;
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
                return false;
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function swap( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _previous = (null : stdgo.AnyInterface), _loaded = false;
        var _read = (@:check2r _m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        {
            var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = @:check2r _e._trySwap((stdgo.Go.setRef(_value) : stdgo.Ref<stdgo.AnyInterface>)), _v:stdgo.Ref<stdgo.AnyInterface> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        if ((_v == null || (_v : Dynamic).__nil__)) {
                            return {
                                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
                                _previous = __tmp__._0;
                                _loaded = __tmp__._1;
                                __tmp__;
                            };
                        };
                        return {
                            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (_v : stdgo.AnyInterface), _1 : true };
                            _previous = __tmp__._0;
                            _loaded = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
        _read = @:check2r _m._loadReadOnly()?.__copy__();
        {
            var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (@:check2r _e._unexpungeLocked()) {
                    (@:checkr _m ?? throw "null pointer dereference")._dirty[_key] = _e;
                };
                {
                    var _v = @:check2r _e._swapLocked((stdgo.Go.setRef(_value) : stdgo.Ref<stdgo.AnyInterface>));
                    if ((_v != null && ((_v : Dynamic).__nil__ == null || !(_v : Dynamic).__nil__))) {
                        _loaded = true;
                        _previous = (_v : stdgo.AnyInterface);
                    };
                };
            } else {
                var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var _v = @:check2r _e._swapLocked((stdgo.Go.setRef(_value) : stdgo.Ref<stdgo.AnyInterface>));
                        if ((_v != null && ((_v : Dynamic).__nil__ == null || !(_v : Dynamic).__nil__))) {
                            _loaded = true;
                            _previous = (_v : stdgo.AnyInterface);
                        };
                    };
                } else {
                    if (!_read._amended) {
                        @:check2r _m._dirtyLocked();
                        @:check2 (@:checkr _m ?? throw "null pointer dereference")._read.store((stdgo.Go.setRef(({ _m : _read._m, _amended : true } : stdgo._internal.sync.Sync_t_readonly.T_readOnly)) : stdgo.Ref<stdgo._internal.sync.Sync_t_readonly.T_readOnly>));
                    };
                    (@:checkr _m ?? throw "null pointer dereference")._dirty[_key] = stdgo._internal.sync.Sync__newentry._newEntry(_value);
                };
            };
        };
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        return {
            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : _previous, _1 : _loaded };
            _previous = __tmp__._0;
            _loaded = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function delete( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        @:check2r _m.loadAndDelete(_key);
    }
    @:keep
    @:tdfield
    static public function loadAndDelete( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _value = (null : stdgo.AnyInterface), _loaded = false;
        var _read = (@:check2r _m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((!_ok && _read._amended : Bool)) {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            _read = @:check2r _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                _e = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if ((!_ok && _read._amended : Bool)) {
                {
                    var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                    _e = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if ((@:checkr _m ?? throw "null pointer dereference")._dirty != null) (@:checkr _m ?? throw "null pointer dereference")._dirty.__remove__(_key);
                @:check2r _m._missLocked();
            };
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        };
        if (_ok) {
            return {
                final __tmp__ = @:check2r _e._delete();
                _value = __tmp__._0;
                _loaded = __tmp__._1;
                { _0 : _value, _1 : _loaded };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
            _value = __tmp__._0;
            _loaded = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function loadOrStore( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _actual = (null : stdgo.AnyInterface), _loaded = false;
        var _read = (@:check2r _m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        {
            var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var __tmp__ = @:check2r _e._tryLoadOrStore(_value), _actual:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1, _ok:Bool = __tmp__._2;
                if (_ok) {
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : _actual, _1 : _loaded };
                        _actual = __tmp__._0;
                        _loaded = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
        _read = @:check2r _m._loadReadOnly()?.__copy__();
        {
            var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (@:check2r _e._unexpungeLocked()) {
                    (@:checkr _m ?? throw "null pointer dereference")._dirty[_key] = _e;
                };
                {
                    var __tmp__ = @:check2r _e._tryLoadOrStore(_value);
                    _actual = @:tmpset0 __tmp__._0;
                    _loaded = @:tmpset0 __tmp__._1;
                };
            } else {
                var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = @:check2r _e._tryLoadOrStore(_value);
                        _actual = @:tmpset0 __tmp__._0;
                        _loaded = @:tmpset0 __tmp__._1;
                    };
                    @:check2r _m._missLocked();
                } else {
                    if (!_read._amended) {
                        @:check2r _m._dirtyLocked();
                        @:check2 (@:checkr _m ?? throw "null pointer dereference")._read.store((stdgo.Go.setRef(({ _m : _read._m, _amended : true } : stdgo._internal.sync.Sync_t_readonly.T_readOnly)) : stdgo.Ref<stdgo._internal.sync.Sync_t_readonly.T_readOnly>));
                    };
                    (@:checkr _m ?? throw "null pointer dereference")._dirty[_key] = stdgo._internal.sync.Sync__newentry._newEntry(_value);
                    {
                        final __tmp__0 = _value;
                        final __tmp__1 = false;
                        _actual = __tmp__0;
                        _loaded = __tmp__1;
                    };
                };
            };
        };
        @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        return {
            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : _actual, _1 : _loaded };
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function store( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var __blank__ = @:check2r _m.swap(_key, _value);
    }
    @:keep
    @:tdfield
    static public function load( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        var _read = (@:check2r _m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((!_ok && _read._amended : Bool)) {
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            _read = @:check2r _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                _e = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if ((!_ok && _read._amended : Bool)) {
                {
                    var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                    _e = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                @:check2r _m._missLocked();
            };
            @:check2 (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        };
        if (!_ok) {
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
                _value = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__ = @:check2r _e._load();
            _value = __tmp__._0;
            _ok = __tmp__._1;
            { _0 : _value, _1 : _ok };
        };
    }
    @:keep
    @:tdfield
    static public function _loadReadOnly( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):stdgo._internal.sync.Sync_t_readonly.T_readOnly {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        {
            var _p = @:check2 (@:checkr _m ?? throw "null pointer dereference")._read.load();
            if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                return (_p : stdgo._internal.sync.Sync_t_readonly.T_readOnly)?.__copy__();
            };
        };
        return (new stdgo._internal.sync.Sync_t_readonly.T_readOnly() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
    }
}
