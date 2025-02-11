package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_entry_asInterface) class T_entry_static_extension {
    @:keep
    @:tdfield
    static public function _tryExpungeLocked( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _isExpunged = false;
        var _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
        while ((_p == null || (_p : Dynamic).__nil__)) {
            if (@:check2 (@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap((null : stdgo.Ref<stdgo.AnyInterface>), stdgo._internal.sync.Sync__expunged._expunged)) {
                return _isExpunged = true;
            };
            _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
        };
        return _isExpunged = _p == (stdgo._internal.sync.Sync__expunged._expunged);
    }
    @:keep
    @:tdfield
    static public function _trySwap( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>, _i:stdgo.Ref<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo.AnyInterface>; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        while (true) {
            var _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
            if (_p == (stdgo._internal.sync.Sync__expunged._expunged)) {
                return { _0 : (null : stdgo.Ref<stdgo.AnyInterface>), _1 : false };
            };
            if (@:check2 (@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(_p, _i)) {
                return { _0 : _p, _1 : true };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _delete( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        while (true) {
            var _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
            if (((_p == null || (_p : Dynamic).__nil__) || (_p == stdgo._internal.sync.Sync__expunged._expunged) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
                    _value = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            if (@:check2 (@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(_p, (null : stdgo.Ref<stdgo.AnyInterface>))) {
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (_p : stdgo.AnyInterface), _1 : true };
                    _value = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tryLoadOrStore( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>, _i:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _actual = (null : stdgo.AnyInterface), _loaded = false, _ok = false;
        var _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
        if (_p == (stdgo._internal.sync.Sync__expunged._expunged)) {
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false, _2 : false };
                _actual = __tmp__._0;
                _loaded = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : (_p : stdgo.AnyInterface), _1 : true, _2 : true };
                _actual = __tmp__._0;
                _loaded = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var _ic = (_i : stdgo.AnyInterface);
        while (true) {
            if (@:check2 (@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap((null : stdgo.Ref<stdgo.AnyInterface>), (stdgo.Go.setRef(_ic) : stdgo.Ref<stdgo.AnyInterface>))) {
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : _i, _1 : false, _2 : true };
                    _actual = __tmp__._0;
                    _loaded = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
            _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
            if (_p == (stdgo._internal.sync.Sync__expunged._expunged)) {
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false, _2 : false };
                    _actual = __tmp__._0;
                    _loaded = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
            if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                return {
                    final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : (_p : stdgo.AnyInterface), _1 : true, _2 : true };
                    _actual = __tmp__._0;
                    _loaded = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _swapLocked( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>, _i:stdgo.Ref<stdgo.AnyInterface>):stdgo.Ref<stdgo.AnyInterface> {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        return @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.swap(_i);
    }
    @:keep
    @:tdfield
    static public function _unexpungeLocked( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _wasExpunged = false;
        return _wasExpunged = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(stdgo._internal.sync.Sync__expunged._expunged, (null : stdgo.Ref<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _tryCompareAndSwap( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
        if ((((_p == null || (_p : Dynamic).__nil__) || _p == (stdgo._internal.sync.Sync__expunged._expunged) : Bool) || ((_p : stdgo.AnyInterface) != _old) : Bool)) {
            return false;
        };
        var _nc = (_new_ : stdgo.AnyInterface);
        while (true) {
            if (@:check2 (@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(_p, (stdgo.Go.setRef(_nc) : stdgo.Ref<stdgo.AnyInterface>))) {
                return true;
            };
            _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
            if ((((_p == null || (_p : Dynamic).__nil__) || _p == (stdgo._internal.sync.Sync__expunged._expunged) : Bool) || ((_p : stdgo.AnyInterface) != _old) : Bool)) {
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _load( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        var _p = @:check2 (@:checkr _e ?? throw "null pointer dereference")._p.load();
        if (((_p == null || (_p : Dynamic).__nil__) || (_p == stdgo._internal.sync.Sync__expunged._expunged) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
                _value = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (_p : stdgo.AnyInterface), _1 : true };
            _value = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
}
