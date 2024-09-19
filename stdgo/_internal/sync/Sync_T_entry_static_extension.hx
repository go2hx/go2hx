package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_entry_asInterface) class T_entry_static_extension {
    @:keep
    static public function _tryExpungeLocked( _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = _e;
        var _isExpunged = false;
        var _p = _e._p.load();
        while (_p == null || (_p : Dynamic).__nil__) {
            if (_e._p.compareAndSwap((null : stdgo.Ref<stdgo.AnyInterface>), stdgo._internal.sync.Sync__expunged._expunged)) {
                return true;
            };
            _p = _e._p.load();
        };
        return _p == (stdgo._internal.sync.Sync__expunged._expunged);
    }
    @:keep
    static public function _trySwap( _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>, _i:stdgo.Ref<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo.AnyInterface>; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = _e;
        while (true) {
            var _p = _e._p.load();
            if (_p == (stdgo._internal.sync.Sync__expunged._expunged)) {
                return { _0 : (null : stdgo.Ref<stdgo.AnyInterface>), _1 : false };
            };
            if (_e._p.compareAndSwap(_p, _i)) {
                return { _0 : _p, _1 : true };
            };
        };
    }
    @:keep
    static public function _delete( _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = _e;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        while (true) {
            var _p = _e._p.load();
            if ((((_p == null) || (_p : Dynamic).__nil__) || (_p == stdgo._internal.sync.Sync__expunged._expunged) : Bool)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            };
            if (_e._p.compareAndSwap(_p, (null : stdgo.Ref<stdgo.AnyInterface>))) {
                return { _0 : (_p : stdgo.AnyInterface), _1 : true };
            };
        };
    }
    @:keep
    static public function _tryLoadOrStore( _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>, _i:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = _e;
        var _actual = (null : stdgo.AnyInterface), _loaded = false, _ok = false;
        var _p = _e._p.load();
        if (_p == (stdgo._internal.sync.Sync__expunged._expunged)) {
            return { _0 : (null : stdgo.AnyInterface), _1 : false, _2 : false };
        };
        if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
            return { _0 : (_p : stdgo.AnyInterface), _1 : true, _2 : true };
        };
        var _ic = (_i : stdgo.AnyInterface);
        while (true) {
            if (_e._p.compareAndSwap((null : stdgo.Ref<stdgo.AnyInterface>), (stdgo.Go.setRef(_ic) : stdgo.Ref<stdgo.AnyInterface>))) {
                return { _0 : _i, _1 : false, _2 : true };
            };
            _p = _e._p.load();
            if (_p == (stdgo._internal.sync.Sync__expunged._expunged)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : false, _2 : false };
            };
            if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
                return { _0 : (_p : stdgo.AnyInterface), _1 : true, _2 : true };
            };
        };
    }
    @:keep
    static public function _swapLocked( _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>, _i:stdgo.Ref<stdgo.AnyInterface>):stdgo.Ref<stdgo.AnyInterface> {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = _e;
        return _e._p.swap(_i);
    }
    @:keep
    static public function _unexpungeLocked( _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = _e;
        var _wasExpunged = false;
        return _e._p.compareAndSwap(stdgo._internal.sync.Sync__expunged._expunged, (null : stdgo.Ref<stdgo.AnyInterface>));
    }
    @:keep
    static public function _tryCompareAndSwap( _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = _e;
        var _p = _e._p.load();
        if (((_p == null || (_p : Dynamic).__nil__ || _p == (stdgo._internal.sync.Sync__expunged._expunged) : Bool) || ((_p : stdgo.AnyInterface) != _old) : Bool)) {
            return false;
        };
        var _nc = (_new : stdgo.AnyInterface);
        while (true) {
            if (_e._p.compareAndSwap(_p, (stdgo.Go.setRef(_nc) : stdgo.Ref<stdgo.AnyInterface>))) {
                return true;
            };
            _p = _e._p.load();
            if (((_p == null || (_p : Dynamic).__nil__ || _p == (stdgo._internal.sync.Sync__expunged._expunged) : Bool) || ((_p : stdgo.AnyInterface) != _old) : Bool)) {
                return false;
            };
        };
    }
    @:keep
    static public function _load( _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_T_entry.T_entry> = _e;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        var _p = _e._p.load();
        if ((((_p == null) || (_p : Dynamic).__nil__) || (_p == stdgo._internal.sync.Sync__expunged._expunged) : Bool)) {
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        return { _0 : (_p : stdgo.AnyInterface), _1 : true };
    }
}