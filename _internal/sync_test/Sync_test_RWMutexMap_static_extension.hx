package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:keep @:allow(_internal.sync_test.Sync_test.RWMutexMap_asInterface) class RWMutexMap_static_extension {
    @:keep
    static public function range( _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>, _f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap> = _m;
        _m._mu.rlock();
        var _keys = (new stdgo.Slice<stdgo.AnyInterface>((0 : stdgo.GoInt).toBasic(), (_m._dirty.length)) : stdgo.Slice<stdgo.AnyInterface>);
        for (_k => _ in _m._dirty) {
            _keys = (_keys.__append__(_k));
        };
        _m._mu.runlock();
        for (__28 => _k in _keys) {
            var __tmp__ = _m.load(_k), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                continue;
            };
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    static public function compareAndDelete( _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _deleted = false;
        try {
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            if (_m._dirty == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return false;
                };
            };
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _value:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if ((_loaded && (_value == _old) : Bool)) {
                if (_m._dirty != null) _m._dirty.remove(_key);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return true;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _deleted;
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
            return _deleted;
        };
    }
    @:keep
    static public function compareAndSwap( _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _swapped = false;
        try {
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            if (_m._dirty == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return false;
                };
            };
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _value:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if ((_loaded && (_value == _old) : Bool)) {
                _m._dirty[_key] = _new;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return true;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _swapped;
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
            return _swapped;
        };
    }
    @:keep
    static public function delete( _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>, _key:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap> = _m;
        _m._mu.lock();
        if (_m._dirty != null) _m._dirty.remove(_key);
        _m._mu.unlock();
    }
    @:keep
    static public function loadAndDelete( _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap> = _m;
        var _value = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (!_loaded) {
            _m._mu.unlock();
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        if (_m._dirty != null) _m._dirty.remove(_key);
        _m._mu.unlock();
        return { _0 : _value, _1 : _loaded };
    }
    @:keep
    static public function swap( _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap> = _m;
        var _previous = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        if (_m._dirty == null) {
            _m._dirty = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        };
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _previous = __tmp__._0;
            _loaded = __tmp__._1;
        };
        _m._dirty[_key] = _value;
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    @:keep
    static public function loadOrStore( _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap> = _m;
        var _actual = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (!_loaded) {
            _actual = _value;
            if (_m._dirty == null) {
                _m._dirty = ({
                    final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
                    x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
            };
            _m._dirty[_key] = _value;
        };
        _m._mu.unlock();
        return { _0 : _actual, _1 : _loaded };
    }
    @:keep
    static public function store( _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap> = _m;
        _m._mu.lock();
        if (_m._dirty == null) {
            _m._dirty = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        };
        _m._dirty[_key] = _value;
        _m._mu.unlock();
    }
    @:keep
    static public function load( _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_RWMutexMap.RWMutexMap> = _m;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        _m._mu.rlock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _ok = __tmp__._1;
        };
        _m._mu.runlock();
        return { _0 : _value, _1 : _ok };
    }
}
