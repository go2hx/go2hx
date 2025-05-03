package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_poolChain_asInterface) class T_poolChain_static_extension {
    @:keep
    @:tdfield
    static public function _popTail( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        var _d = stdgo._internal.sync.Sync__loadpoolchainelt._loadPoolChainElt(stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._tail));
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L273"
        if (({
            final value = _d;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L274"
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L277"
        while (true) {
            var _d2 = stdgo._internal.sync.Sync__loadpoolchainelt._loadPoolChainElt(stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._next));
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L286"
            {
                var __tmp__ = _d._popTail(), _val:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L287"
                    return { _0 : _val, _1 : _ok };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L290"
            if (({
                final value = _d2;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L293"
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L300"
            if (stdgo._internal.sync.atomic_.Atomic__compareandswappointer.compareAndSwapPointer(((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._tail)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), (stdgo.Go.toInterface(_d) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (stdgo.Go.toInterface(_d2) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
                //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L305"
                stdgo._internal.sync.Sync__storepoolchainelt._storePoolChainElt(stdgo.Go.pointer((@:checkr _d2 ?? throw "null pointer dereference")._prev), null);
            };
            _d = _d2;
        };
    }
    @:keep
    @:tdfield
    static public function _popHead( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        var _d = (@:checkr _c ?? throw "null pointer dereference")._head;
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L260"
        while (({
            final value = _d;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L261"
            {
                var __tmp__ = _d._popHead(), _val:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L262"
                    return { _0 : _val, _1 : _ok };
                };
            };
            _d = stdgo._internal.sync.Sync__loadpoolchainelt._loadPoolChainElt(stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._prev));
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L268"
        return { _0 : (null : stdgo.AnyInterface), _1 : false };
    }
    @:keep
    @:tdfield
    static public function _pushHead( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>, _val:stdgo.AnyInterface):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        var _d = (@:checkr _c ?? throw "null pointer dereference")._head;
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L230"
        if (({
            final value = _d;
            (value == null || (value : Dynamic).__nil__);
        })) {
            {};
            _d = (stdgo.Go.setRef(({} : stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt)) : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
            (@:checkr _d ?? throw "null pointer dereference")._poolDequeue._vals = (new stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>((8 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((8 : stdgo.GoInt).toBasic() > 0 ? (8 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sync.Sync_t_eface.T_eface)]) : stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>);
            (@:checkr _c ?? throw "null pointer dereference")._head = _d;
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L236"
            stdgo._internal.sync.Sync__storepoolchainelt._storePoolChainElt(stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._tail), _d);
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L239"
        if (_d._pushHead(_val)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L240"
            return;
        };
        var _newSize = (((@:checkr _d ?? throw "null pointer dereference")._poolDequeue._vals.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L246"
        if ((_newSize >= (1073741824 : stdgo.GoInt) : Bool)) {
            _newSize = (1073741824 : stdgo.GoInt);
        };
        var _d2 = (stdgo.Go.setRef(({ _prev : _d } : stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt)) : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
        (@:checkr _d2 ?? throw "null pointer dereference")._poolDequeue._vals = (new stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>((_newSize : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_newSize : stdgo.GoInt).toBasic() > 0 ? (_newSize : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sync.Sync_t_eface.T_eface)]) : stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>);
        (@:checkr _c ?? throw "null pointer dereference")._head = _d2;
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L254"
        stdgo._internal.sync.Sync__storepoolchainelt._storePoolChainElt(stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._next), _d2);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L255"
        _d2._pushHead(_val);
    }
    @:keep
    @:tdfield
    static public function popTail( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        //"file:///home/runner/.go/go1.21.3/src/sync/export_test.go#L56"
        return _c._popTail();
    }
    @:keep
    @:tdfield
    static public function popHead( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        //"file:///home/runner/.go/go1.21.3/src/sync/export_test.go#L52"
        return _c._popHead();
    }
    @:keep
    @:tdfield
    static public function pushHead( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>, _val:stdgo.AnyInterface):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        //"file:///home/runner/.go/go1.21.3/src/sync/export_test.go#L47"
        _c._pushHead(_val);
        //"file:///home/runner/.go/go1.21.3/src/sync/export_test.go#L48"
        return true;
    }
}
