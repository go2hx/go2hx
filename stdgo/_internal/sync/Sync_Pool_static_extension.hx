package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Pool_asInterface) class Pool_static_extension {
    @:keep
    static public function _pinSlow( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>):{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal>; var _1 : stdgo.GoInt; } return { _0 : null, _1 : 0 };
    @:keep
    static public function _pin( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>):{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal>; var _1 : stdgo.GoInt; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool> = _p;
        var _pid = (stdgo._internal.sync.Sync__runtime_procPin._runtime_procPin() : stdgo.GoInt);
        var _s = (stdgo._internal.sync.Sync__runtime_LoadAcquintptr._runtime_LoadAcquintptr(stdgo.Go.pointer(_p._localSize)) : stdgo.GoUIntptr);
        var _l = (_p._local : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        if (((_pid : stdgo.GoUIntptr) < _s : Bool)) {
            return { _0 : stdgo._internal.sync.Sync__indexLocal._indexLocal(_l, _pid), _1 : _pid };
        };
        return _p._pinSlow();
    }
    @:keep
    static public function _getSlow( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>, _pid:stdgo.GoInt):stdgo.AnyInterface {
        @:recv var _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool> = _p;
        var _size = (stdgo._internal.sync.Sync__runtime_LoadAcquintptr._runtime_LoadAcquintptr(stdgo.Go.pointer(_p._localSize)) : stdgo.GoUIntptr);
        var _locals = (_p._local : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_size : stdgo.GoInt) : Bool), _i++, {
                var _l = stdgo._internal.sync.Sync__indexLocal._indexLocal(_locals, ((((_pid + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) % (_size : stdgo.GoInt) : stdgo.GoInt));
                {
                    var __tmp__ = _l._poolLocalInternal._shared._popTail(), _x:stdgo.AnyInterface = __tmp__._0, __20:Bool = __tmp__._1;
                    if (_x != null) {
                        return _x;
                    };
                };
            });
        };
        _size = stdgo._internal.sync.atomic_.Atomic__loadUintptr.loadUintptr(stdgo.Go.pointer(_p._victimSize));
        if (((_pid : stdgo.GoUIntptr) >= _size : Bool)) {
            return (null : stdgo.AnyInterface);
        };
        _locals = _p._victim;
        var _l = stdgo._internal.sync.Sync__indexLocal._indexLocal(_locals, _pid);
        {
            var _x = (_l._poolLocalInternal._private : stdgo.AnyInterface);
            if (_x != null) {
                _l._poolLocalInternal._private = (null : stdgo.AnyInterface);
                return _x;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_size : stdgo.GoInt) : Bool), _i++, {
                var _l = stdgo._internal.sync.Sync__indexLocal._indexLocal(_locals, (((_pid + _i : stdgo.GoInt)) % (_size : stdgo.GoInt) : stdgo.GoInt));
                {
                    var __tmp__ = _l._poolLocalInternal._shared._popTail(), _x:stdgo.AnyInterface = __tmp__._0, __20:Bool = __tmp__._1;
                    if (_x != null) {
                        return _x;
                    };
                };
            });
        };
        stdgo._internal.sync.atomic_.Atomic__storeUintptr.storeUintptr(stdgo.Go.pointer(_p._victimSize), (0 : stdgo.GoUIntptr));
        return (null : stdgo.AnyInterface);
    }
    @:keep
    static public function get( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>):stdgo.AnyInterface {
        @:recv var _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool> = _p;
        var obj = #if !js @:privateAccess _p.pool.pop(false) #else @:privateAccess _p.pool.pop() #end;
        if (obj == null && @:privateAccess _p.new_ != null) obj = @:privateAccess _p.new_();
        return obj;
    }
    @:keep
    static public function put( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>, _x:stdgo.AnyInterface):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool> = _p;
        @:privateAccess _p.pool.push(_x);
    }
}