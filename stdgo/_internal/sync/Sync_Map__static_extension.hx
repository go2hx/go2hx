package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Map__asInterface) class Map__static_extension {
    @:keep
    static public function _dirtyLocked( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
    }
    @:keep
    static public function _missLocked( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        _m._misses++;
        if ((_m._misses < (_m._dirty.length) : Bool)) {
            return;
        };
        _m._read.store((stdgo.Go.setRef(({ _m : _m._dirty } : stdgo._internal.sync.Sync_T_readOnly.T_readOnly)) : stdgo.Ref<stdgo._internal.sync.Sync_T_readOnly.T_readOnly>));
        _m._dirty = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>);
        _m._misses = (0 : stdgo.GoInt);
    }
    @:keep
    static public function range( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>, _f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_T_readOnly.T_readOnly);
        if (_read._amended) {
            _m._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            if (_read._amended) {
                _read = ({ _m : _m._dirty } : stdgo._internal.sync.Sync_T_readOnly.T_readOnly);
                _m._read.store((stdgo.Go.setRef(_read) : stdgo.Ref<stdgo._internal.sync.Sync_T_readOnly.T_readOnly>));
                _m._dirty = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>>);
                _m._misses = (0 : stdgo.GoInt);
            };
            _m._mu.unlock();
        };
        for (_k => _e in _read._m) {
            var __tmp__ = _e._load(), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                continue;
            };
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    static public function compareAndDelete( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        var _deleted = false;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_T_readOnly.T_readOnly);
        var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((!_ok && _read._amended : Bool)) {
            _m._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false });
                _e = __tmp__._0;
                _ok = __tmp__._1;
            };
            if ((!_ok && _read._amended : Bool)) {
                {
                    var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false });
                    _e = __tmp__._0;
                    _ok = __tmp__._1;
                };
                _m._missLocked();
            };
            _m._mu.unlock();
        };
        while (_ok) {
            var _p = _e._p.load();
            if ((((_p == null || (_p : Dynamic).__nil__) || _p == (stdgo._internal.sync.Sync__expunged._expunged) : Bool) || ((_p : stdgo.AnyInterface) != _old) : Bool)) {
                return false;
            };
            if (_e._p.compareAndSwap(_p, (null : stdgo.Ref<stdgo.AnyInterface>))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function compareAndSwap( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_T_readOnly.T_readOnly);
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _e._tryCompareAndSwap(_old, _new);
                } else if (!_read._amended) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            _read = _m._loadReadOnly()?.__copy__();
            var _swapped = (false : Bool);
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _swapped = _e._tryCompareAndSwap(_old, _new);
                } else {
                    var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _swapped = _e._tryCompareAndSwap(_old, _new);
                        _m._missLocked();
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _swapped;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
    @:keep
    static public function swap( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        var _previous = (null : stdgo.AnyInterface), _loaded = false;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_T_readOnly.T_readOnly);
        {
            var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _e._trySwap((stdgo.Go.setRef(_value) : stdgo.Ref<stdgo.AnyInterface>)), _v:stdgo.Ref<stdgo.AnyInterface> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        if ((_v == null || (_v : Dynamic).__nil__)) {
                            return { _0 : (null : stdgo.AnyInterface), _1 : false };
                        };
                        return { _0 : (_v : stdgo.AnyInterface), _1 : true };
                    };
                };
            };
        };
        _m._mu.lock();
        _read = _m._loadReadOnly()?.__copy__();
        {
            var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (_e._unexpungeLocked()) {
                    _m._dirty[_key] = _e;
                };
                {
                    var _v = _e._swapLocked((stdgo.Go.setRef(_value) : stdgo.Ref<stdgo.AnyInterface>));
                    if ((_v != null && ((_v : Dynamic).__nil__ == null || !(_v : Dynamic).__nil__))) {
                        _loaded = true;
                        _previous = (_v : stdgo.AnyInterface);
                    };
                };
            } else {
                var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var _v = _e._swapLocked((stdgo.Go.setRef(_value) : stdgo.Ref<stdgo.AnyInterface>));
                        if ((_v != null && ((_v : Dynamic).__nil__ == null || !(_v : Dynamic).__nil__))) {
                            _loaded = true;
                            _previous = (_v : stdgo.AnyInterface);
                        };
                    };
                } else {
                    if (!_read._amended) {
                        _m._dirtyLocked();
                        _m._read.store((stdgo.Go.setRef(({ _m : _read._m, _amended : true } : stdgo._internal.sync.Sync_T_readOnly.T_readOnly)) : stdgo.Ref<stdgo._internal.sync.Sync_T_readOnly.T_readOnly>));
                    };
                    _m._dirty[_key] = stdgo._internal.sync.Sync__newEntry._newEntry(_value);
                };
            };
        };
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    @:keep
    static public function delete( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>, _key:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        _m.loadAndDelete(_key);
    }
    @:keep
    static public function loadAndDelete( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        var _value = (null : stdgo.AnyInterface), _loaded = false;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_T_readOnly.T_readOnly);
        var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((!_ok && _read._amended : Bool)) {
            _m._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false });
                _e = __tmp__._0;
                _ok = __tmp__._1;
            };
            if ((!_ok && _read._amended : Bool)) {
                {
                    var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false });
                    _e = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (_m._dirty != null) _m._dirty.remove(_key);
                _m._missLocked();
            };
            _m._mu.unlock();
        };
        if (_ok) {
            return _e._delete();
        };
        return { _0 : (null : stdgo.AnyInterface), _1 : false };
    }
    @:keep
    static public function loadOrStore( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        var _actual = (null : stdgo.AnyInterface), _loaded = false;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_T_readOnly.T_readOnly);
        {
            var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var __tmp__ = _e._tryLoadOrStore(_value), _actual:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1, _ok:Bool = __tmp__._2;
                if (_ok) {
                    return { _0 : _actual, _1 : _loaded };
                };
            };
        };
        _m._mu.lock();
        _read = _m._loadReadOnly()?.__copy__();
        {
            var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (_e._unexpungeLocked()) {
                    _m._dirty[_key] = _e;
                };
                {
                    var __tmp__ = _e._tryLoadOrStore(_value);
                    _actual = __tmp__._0;
                    _loaded = __tmp__._1;
                };
            } else {
                var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _e._tryLoadOrStore(_value);
                        _actual = __tmp__._0;
                        _loaded = __tmp__._1;
                    };
                    _m._missLocked();
                } else {
                    if (!_read._amended) {
                        _m._dirtyLocked();
                        _m._read.store((stdgo.Go.setRef(({ _m : _read._m, _amended : true } : stdgo._internal.sync.Sync_T_readOnly.T_readOnly)) : stdgo.Ref<stdgo._internal.sync.Sync_T_readOnly.T_readOnly>));
                    };
                    _m._dirty[_key] = stdgo._internal.sync.Sync__newEntry._newEntry(_value);
                    {
                        final __tmp__0 = _value;
                        final __tmp__1 = false;
                        _actual = __tmp__0;
                        _loaded = __tmp__1;
                    };
                };
            };
        };
        _m._mu.unlock();
        return { _0 : _actual, _1 : _loaded };
    }
    @:keep
    static public function store( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        var __blank__ = _m.swap(_key, _value);
    }
    @:keep
    static public function load( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        var _read = (_m._loadReadOnly()?.__copy__() : stdgo._internal.sync.Sync_T_readOnly.T_readOnly);
        var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false }), _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((!_ok && _read._amended : Bool)) {
            _m._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false });
                _e = __tmp__._0;
                _ok = __tmp__._1;
            };
            if ((!_ok && _read._amended : Bool)) {
                {
                    var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>), _1 : false });
                    _e = __tmp__._0;
                    _ok = __tmp__._1;
                };
                _m._missLocked();
            };
            _m._mu.unlock();
        };
        if (!_ok) {
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        return _e._load();
    }
    @:keep
    static public function _loadReadOnly( _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_>):stdgo._internal.sync.Sync_T_readOnly.T_readOnly {
        @:recv var _m:stdgo.Ref<stdgo._internal.sync.Sync_Map_.Map_> = _m;
        {
            var _p = _m._read.load();
            if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                return (_p : stdgo._internal.sync.Sync_T_readOnly.T_readOnly)?.__copy__();
            };
        };
        return (new stdgo._internal.sync.Sync_T_readOnly.T_readOnly() : stdgo._internal.sync.Sync_T_readOnly.T_readOnly);
    }
}
