package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_entry_asInterface) class T_entry_static_extension {
    @:keep
    @:tdfield
    static public function _tryExpungeLocked( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _isExpunged = false;
        var _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L508"
        while (({
            final value = _p;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L509"
            if ((@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap((null : stdgo.Ref<stdgo.AnyInterface>), stdgo._internal.sync.Sync__expunged._expunged)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L510"
                return _isExpunged = true;
            };
            _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L514"
        return _isExpunged = _p == (stdgo._internal.sync.Sync__expunged._expunged);
    }
    @:keep
    @:tdfield
    static public function _trySwap( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>, _i:stdgo.Ref<stdgo.AnyInterface>):{ var _0 : stdgo.Ref<stdgo.AnyInterface>; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L317"
        while (true) {
            var _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L319"
            if (_p == (stdgo._internal.sync.Sync__expunged._expunged)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L320"
                return { _0 : (null : stdgo.Ref<stdgo.AnyInterface>), _1 : false };
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L322"
            if ((@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(_p, _i)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L323"
                return { _0 : _p, _1 : true };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _delete( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L301"
        while (true) {
            var _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L303"
            if ((({
                final value = _p;
                (value == null || (value : Dynamic).__nil__);
            }) || (_p == stdgo._internal.sync.Sync__expunged._expunged) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L304"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
                    _value = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L306"
            if ((@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(_p, (null : stdgo.Ref<stdgo.AnyInterface>))) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L307"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (_p : stdgo.AnyInterface), _1 : true };
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
        var _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L245"
        if (_p == (stdgo._internal.sync.Sync__expunged._expunged)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L246"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false, _2 : false };
                _actual = __tmp__._0;
                _loaded = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L248"
        if (({
            final value = _p;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L249"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : (_p : stdgo.AnyInterface), _1 : true, _2 : true };
                _actual = __tmp__._0;
                _loaded = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var _ic = (_i : stdgo.AnyInterface);
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L256"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L257"
            if ((@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap((null : stdgo.Ref<stdgo.AnyInterface>), (stdgo.Go.setRef(_ic) : stdgo.Ref<stdgo.AnyInterface>))) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L258"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : _i, _1 : false, _2 : true };
                    _actual = __tmp__._0;
                    _loaded = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
            _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L261"
            if (_p == (stdgo._internal.sync.Sync__expunged._expunged)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L262"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false, _2 : false };
                    _actual = __tmp__._0;
                    _loaded = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L264"
            if (({
                final value = _p;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L265"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; var _2 : Bool; } = { _0 : (_p : stdgo.AnyInterface), _1 : true, _2 : true };
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
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L197"
        return (@:checkr _e ?? throw "null pointer dereference")._p.swap(_i);
    }
    @:keep
    @:tdfield
    static public function _unexpungeLocked( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _wasExpunged = false;
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L190"
        return _wasExpunged = (@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(stdgo._internal.sync.Sync__expunged._expunged, (null : stdgo.Ref<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _tryCompareAndSwap( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L166"
        if (((({
            final value = _p;
            (value == null || (value : Dynamic).__nil__);
        }) || _p == (stdgo._internal.sync.Sync__expunged._expunged) : Bool) || ((_p : stdgo.AnyInterface) != _old) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L167"
            return false;
        };
        var _nc = (_new_ : stdgo.AnyInterface);
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L174"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L175"
            if ((@:checkr _e ?? throw "null pointer dereference")._p.compareAndSwap(_p, (stdgo.Go.setRef(_nc) : stdgo.Ref<stdgo.AnyInterface>))) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L176"
                return true;
            };
            _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L179"
            if (((({
                final value = _p;
                (value == null || (value : Dynamic).__nil__);
            }) || _p == (stdgo._internal.sync.Sync__expunged._expunged) : Bool) || ((_p : stdgo.AnyInterface) != _old) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L180"
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _load( _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry> = _e;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        var _p = (@:checkr _e ?? throw "null pointer dereference")._p.load();
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L147"
        if ((({
            final value = _p;
            (value == null || (value : Dynamic).__nil__);
        }) || (_p == stdgo._internal.sync.Sync__expunged._expunged) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L148"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (null : stdgo.AnyInterface), _1 : false };
                _value = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/map.go#L150"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : Bool; } = { _0 : (_p : stdgo.AnyInterface), _1 : true };
            _value = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
}
