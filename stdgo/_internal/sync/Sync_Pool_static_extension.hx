package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.sync.Sync.Pool_asInterface) class Pool_static_extension {
    @:keep
    @:tdfield
    static public function _pinSlow( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>):{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal>; var _1 : stdgo.GoInt; } return { _0 : null, _1 : 0 };
    @:keep
    @:tdfield
    static public function _pin( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>):{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_T_poolLocal.T_poolLocal>; var _1 : stdgo.GoInt; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool> = _p;
        var _pid = (stdgo._internal.sync.Sync__runtime_procPin._runtime_procPin() : stdgo.GoInt);
        var _s = (stdgo._internal.sync.Sync__runtime_LoadAcquintptr._runtime_LoadAcquintptr(stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference")._localSize)) : stdgo.GoUIntptr);
        var _l = ((@:checkr _p ?? throw "null pointer dereference")._local : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        if (((_pid : stdgo.GoUIntptr) < _s : Bool)) {
            return { _0 : stdgo._internal.sync.Sync__indexLocal._indexLocal(_l, _pid), _1 : _pid };
        };
        return @:check2r _p._pinSlow();
    }
    @:keep
    @:tdfield
    static public function _getSlow( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>, _pid:stdgo.GoInt):stdgo.AnyInterface {
        @:recv var _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool> = _p;
        var _size = (stdgo._internal.sync.Sync__runtime_LoadAcquintptr._runtime_LoadAcquintptr(stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference")._localSize)) : stdgo.GoUIntptr);
        var _locals = ((@:checkr _p ?? throw "null pointer dereference")._local : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_size : stdgo.GoInt) : Bool)) {
                var _l = stdgo._internal.sync.Sync__indexLocal._indexLocal(_locals, ((((_pid + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) % (_size : stdgo.GoInt) : stdgo.GoInt));
{
                    var __tmp__ = @:check2 (@:checkr _l ?? throw "null pointer dereference")._poolLocalInternal._shared._popTail(), _x:stdgo.AnyInterface = __tmp__._0, __20:Bool = __tmp__._1;
                    if (_x != null) {
                        return _x;
                    };
                };
                _i++;
            };
        };
        _size = _internal.sync.atomic_.Atomic__loadUintptr.loadUintptr(stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference")._victimSize));
        if (((_pid : stdgo.GoUIntptr) >= _size : Bool)) {
            return (null : stdgo.AnyInterface);
        };
        _locals = (@:checkr _p ?? throw "null pointer dereference")._victim;
        var _l = stdgo._internal.sync.Sync__indexLocal._indexLocal(_locals, _pid);
        {
            var _x = ((@:checkr _l ?? throw "null pointer dereference")._poolLocalInternal._private : stdgo.AnyInterface);
            if (_x != null) {
                (@:checkr _l ?? throw "null pointer dereference")._poolLocalInternal._private = (null : stdgo.AnyInterface);
                return _x;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_size : stdgo.GoInt) : Bool)) {
                var _l = stdgo._internal.sync.Sync__indexLocal._indexLocal(_locals, (((_pid + _i : stdgo.GoInt)) % (_size : stdgo.GoInt) : stdgo.GoInt));
{
                    var __tmp__ = @:check2 (@:checkr _l ?? throw "null pointer dereference")._poolLocalInternal._shared._popTail(), _x:stdgo.AnyInterface = __tmp__._0, __20:Bool = __tmp__._1;
                    if (_x != null) {
                        return _x;
                    };
                };
                _i++;
            };
        };
        _internal.sync.atomic_.Atomic__storeUintptr.storeUintptr(stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference")._victimSize), (0 : stdgo.GoUIntptr));
        return (null : stdgo.AnyInterface);
    }
    @:keep
    @:tdfield
    static public function get( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>):stdgo.AnyInterface {
        @:recv var _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool> = _p;
        var obj = #if target.threaded @:privateAccess _p.pool.pop(false) #else @:privateAccess _p.pool.pop() #end;
        if (obj == null && @:privateAccess _p.new_ != null) obj = @:privateAccess _p.new_();
        return obj;
    }
    @:keep
    @:tdfield
    static public function put( _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>, _x:stdgo.AnyInterface):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool> = _p;
        @:privateAccess _p.pool.push(_x);
    }
}
