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
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L483"
        (@:checkr _m ?? throw "null pointer dereference")._misses++;
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L484"
        if (((@:checkr _m ?? throw "null pointer dereference")._misses < ((@:checkr _m ?? throw "null pointer dereference")._dirty.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L485"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L487"
        (@:checkr _m ?? throw "null pointer dereference")._read.store((stdgo.Go.setRef(({ _m : (@:checkr _m ?? throw "null pointer dereference")._dirty } : stdgo._internal.sync.Sync_t_readonly.T_readOnly)) : stdgo.Ref<stdgo._internal.sync.Sync_t_readonly.T_readOnly>));
        (@:checkr _m ?? throw "null pointer dereference")._dirty = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>);
        (@:checkr _m ?? throw "null pointer dereference")._misses = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function range( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L455"
        if (_read._amended) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L460"
            (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L462"
            if (_read._amended) {
                _read = ({ _m : (@:checkr _m ?? throw "null pointer dereference")._dirty } : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L464"
                (@:checkr _m ?? throw "null pointer dereference")._read.store((stdgo.Go.setRef(_read) : stdgo.Ref<stdgo._internal.sync.Sync_t_readonly.T_readOnly>));
                (@:checkr _m ?? throw "null pointer dereference")._dirty = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>);
                (@:checkr _m ?? throw "null pointer dereference")._misses = (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L468"
            (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L471"
        for (_k => _e in _read._m) {
            var __tmp__ = _e._load(), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L473"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L474"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L476"
            if (!_f(_k, _v)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L477"
                break;
            };
        };
    }
    @:keep
    @:tdfield
    static public function compareAndDelete( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _deleted = false;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L409"
        if ((!_ok && _read._amended : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L410"
            (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                _e = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L413"
            if ((!_ok && _read._amended : Bool)) {
                {
                    var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                    _e = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L422"
                _m._missLocked();
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L424"
            (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L426"
        while (_ok) {
            var _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L428"
            if (((({
                final value = _p;
                (value == null || (value : Dynamic).__nil__);
            }) || _p == (stdgo._internal.sync.Sync__expunged._expunged) : Bool) || ((_p : stdgo.AnyInterface) != _old) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L429"
                return _deleted = false;
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L431"
            if ((@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(_p, (null : stdgo.Ref<stdgo.AnyInterface>))) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L432"
                return _deleted = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L435"
        return _deleted = false;
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L376"
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L377"
                    return _e._tryCompareAndSwap(_old, _new_);
                } else if (!_read._amended) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L379"
                    return false;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L382"
            (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _m ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            _read = _m._loadReadOnly()?.__copy__();
            var _swapped = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L386"
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _swapped = _e._tryCompareAndSwap(_old, _new_);
                } else {
                    var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _swapped = _e._tryCompareAndSwap(_old, _new_);
                        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L396"
                        _m._missLocked();
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L398"
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L332"
        {
            var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L333"
                {
                    var __tmp__ = _e._trySwap((stdgo.Go.setRef(_value) : stdgo.Ref<stdgo.AnyInterface>)), _v:stdgo.Ref<stdgo.AnyInterface> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L334"
                        if (({
                            final value = _v;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L335"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
                                _previous = __tmp__._0;
                                _loaded = __tmp__._1;
                                __tmp__;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L337"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (_v : stdgo.AnyInterface), _1 : true };
                            _previous = __tmp__._0;
                            _loaded = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L341"
        (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
        _read = _m._loadReadOnly()?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L343"
        {
            var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L344"
                if (_e._unexpungeLocked()) {
                    (@:checkr _m ?? throw "null pointer dereference")._dirty[_key] = _e;
                };
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L349"
                {
                    var _v = _e._swapLocked((stdgo.Go.setRef(_value) : stdgo.Ref<stdgo.AnyInterface>));
                    if (({
                        final value = _v;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _loaded = true;
                        _previous = (_v : stdgo.AnyInterface);
                    };
                };
            } else {
                var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L354"
                    {
                        var _v = _e._swapLocked((stdgo.Go.setRef(_value) : stdgo.Ref<stdgo.AnyInterface>));
                        if (({
                            final value = _v;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            _loaded = true;
                            _previous = (_v : stdgo.AnyInterface);
                        };
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L359"
                    if (!_read._amended) {
                        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L362"
                        _m._dirtyLocked();
                        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L363"
                        (@:checkr _m ?? throw "null pointer dereference")._read.store((stdgo.Go.setRef(({ _m : _read._m, _amended : true } : stdgo._internal.sync.Sync_t_readonly.T_readOnly)) : stdgo.Ref<stdgo._internal.sync.Sync_t_readonly.T_readOnly>));
                    };
                    (@:checkr _m ?? throw "null pointer dereference")._dirty[_key] = stdgo._internal.sync.Sync__newentry._newEntry(_value);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L367"
        (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L368"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : _previous, _1 : _loaded };
            _previous = __tmp__._0;
            _loaded = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function delete( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L297"
        _m.loadAndDelete(_key);
    }
    @:keep
    @:tdfield
    static public function loadAndDelete( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _value = (null : stdgo.AnyInterface), _loaded = false;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L275"
        if ((!_ok && _read._amended : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L276"
            (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                _e = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L279"
            if ((!_ok && _read._amended : Bool)) {
                {
                    var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                    _e = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L281"
                if ((@:checkr _m ?? throw "null pointer dereference")._dirty != null) (@:checkr _m ?? throw "null pointer dereference")._dirty.__remove__(_key);
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L285"
                _m._missLocked();
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L287"
            (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L289"
        if (_ok) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L290"
            return ({
                @:explicitConversion final __tmp__ = _e._delete();
                { _0 : stdgo.Go.toInterface(__tmp__._0), _1 : __tmp__._1 };
            });
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L292"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
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
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L206"
        {
            var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var __tmp__ = _e._tryLoadOrStore(_value), _actual:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1, _ok:Bool = __tmp__._2;
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L208"
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L209"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : _actual, _1 : _loaded };
                        _actual = __tmp__._0;
                        _loaded = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L213"
        (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
        _read = _m._loadReadOnly()?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L215"
        {
            var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L216"
                if (_e._unexpungeLocked()) {
                    (@:checkr _m ?? throw "null pointer dereference")._dirty[_key] = _e;
                };
                {
                    var __tmp__ = _e._tryLoadOrStore(_value);
                    _actual = @:tmpset0 __tmp__._0;
                    _loaded = @:tmpset0 __tmp__._1;
                };
            } else {
                var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _e._tryLoadOrStore(_value);
                        _actual = @:tmpset0 __tmp__._0;
                        _loaded = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L222"
                    _m._missLocked();
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L224"
                    if (!_read._amended) {
                        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L227"
                        _m._dirtyLocked();
                        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L228"
                        (@:checkr _m ?? throw "null pointer dereference")._read.store((stdgo.Go.setRef(({ _m : _read._m, _amended : true } : stdgo._internal.sync.Sync_t_readonly.T_readOnly)) : stdgo.Ref<stdgo._internal.sync.Sync_t_readonly.T_readOnly>));
                    };
                    (@:checkr _m ?? throw "null pointer dereference")._dirty[_key] = stdgo._internal.sync.Sync__newentry._newEntry(_value);
                    {
                        final __tmp__0 = _value;
                        final __tmp__1 = false;
                        _actual = @:binopAssign __tmp__0;
                        _loaded = @:binopAssign __tmp__1;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L233"
        (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L235"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : _actual, _1 : _loaded };
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function store( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        _m.swap(_key, _value);
    }
    @:keep
    @:tdfield
    static public function load( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
        var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L123"
        if ((!_ok && _read._amended : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L124"
            (@:checkr _m ?? throw "null pointer dereference")._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.__exists__(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                _e = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L130"
            if ((!_ok && _read._amended : Bool)) {
                {
                    var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._dirty != null && (@:checkr _m ?? throw "null pointer dereference")._dirty.__exists__(_key) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>), _1 : false });
                    _e = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L135"
                _m._missLocked();
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L137"
            (@:checkr _m ?? throw "null pointer dereference")._mu.unlock();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L139"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L140"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
                _value = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L142"
        return ({
            @:explicitConversion final __tmp__ = _e._load();
            { _0 : stdgo.Go.toInterface(__tmp__._0), _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function _loadReadOnly( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):stdgo._internal.sync.Sync_t_readonly.T_readOnly {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_> = _m;
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L111"
        {
            var _p = (@:checkr _m ?? throw "null pointer dereference")._read.load();
            if (({
                final value = _p;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L112"
                return (_p : stdgo._internal.sync.Sync_t_readonly.T_readOnly)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L114"
        return (new stdgo._internal.sync.Sync_t_readonly.T_readOnly() : stdgo._internal.sync.Sync_t_readonly.T_readOnly);
    }
}
