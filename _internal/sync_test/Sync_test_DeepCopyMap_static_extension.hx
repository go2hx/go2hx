package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:keep @:allow(_internal.sync_test.Sync_test.DeepCopyMap_asInterface) class DeepCopyMap_static_extension {
    @:keep
    static public function _dirty( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>):stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface> {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        var _dirty = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        for (_k => _v in _clean) {
            _dirty[_k] = _v;
        };
        return _dirty;
    }
    @:keep
    static public function range( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>, _f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        for (_k => _v in _clean) {
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    static public function compareAndDelete( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _deleted = false;
        try {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
            }, _clean = __tmp__._0, __4 = __tmp__._1;
            {
                var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _previous:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((!_ok || (_previous != _old) : Bool)) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            var _dirty = _m._dirty();
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _value:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if ((_loaded && (_value == _old) : Bool)) {
                if (_dirty != null) _dirty.remove(_key);
                _m._clean.store(stdgo.Go.toInterface(_dirty));
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
    static public function compareAndSwap( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _swapped = false;
        try {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
            }, _clean = __tmp__._0, __4 = __tmp__._1;
            {
                var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _previous:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((!_ok || (_previous != _old) : Bool)) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            var _dirty = _m._dirty();
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _value:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if ((_loaded && (_value == _old) : Bool)) {
                _dirty[_key] = _new;
                _m._clean.store(stdgo.Go.toInterface(_dirty));
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
    static public function delete( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>, _key:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        _m._mu.lock();
        var _dirty = _m._dirty();
        if (_dirty != null) _dirty.remove(_key);
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
    }
    @:keep
    static public function loadAndDelete( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        var _value = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        var _dirty = _m._dirty();
        {
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (_dirty != null) _dirty.remove(_key);
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
        return { _0 : _value, _1 : _loaded };
    }
    @:keep
    static public function swap( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        var _previous = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        var _dirty = _m._dirty();
        {
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _previous = __tmp__._0;
            _loaded = __tmp__._1;
        };
        _dirty[_key] = _value;
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    @:keep
    static public function loadOrStore( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        var _actual = (null : stdgo.AnyInterface), _loaded = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (_loaded) {
            return { _0 : _actual, _1 : _loaded };
        };
        _m._mu.lock();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
            };
            _clean = __tmp__._0;
        };
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (!_loaded) {
            var _dirty = _m._dirty();
            _dirty[_key] = _value;
            _actual = _value;
            _m._clean.store(stdgo.Go.toInterface(_dirty));
        };
        _m._mu.unlock();
        return { _0 : _actual, _1 : _loaded };
    }
    @:keep
    static public function store( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        _m._mu.lock();
        var _dirty = _m._dirty();
        _dirty[_key] = _value;
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
    }
    @:keep
    static public function load( _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap> = _m;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _ok = __tmp__._1;
        };
        return { _0 : _value, _1 : _ok };
    }
}
