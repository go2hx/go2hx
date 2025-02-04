package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_poolChain_asInterface) class T_poolChain_static_extension {
    @:keep
    @:tdfield
    static public function _popTail( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        var _d = stdgo._internal.sync.Sync__loadpoolchainelt._loadPoolChainElt((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._tail) : stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>>));
        if ((_d == null || (_d : Dynamic).__nil__)) {
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        while (true) {
            var _d2 = stdgo._internal.sync.Sync__loadpoolchainelt._loadPoolChainElt((stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._next) : stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>>));
            {
                var __tmp__ = @:check2r _d._popTail(), _val:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _val, _1 : _ok };
                };
            };
            if ((_d2 == null || (_d2 : Dynamic).__nil__)) {
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            };
            if (stdgo._internal.sync.atomic_.Atomic__compareandswappointer.compareAndSwapPointer(((stdgo.Go.toInterface((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._tail) : stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), (stdgo.Go.toInterface(_d) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (stdgo.Go.toInterface(_d2) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
                stdgo._internal.sync.Sync__storepoolchainelt._storePoolChainElt((stdgo.Go.setRef((@:checkr _d2 ?? throw "null pointer dereference")._prev) : stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>>), null);
            };
            _d = _d2;
        };
    }
    @:keep
    @:tdfield
    static public function _popHead( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        var _d = (@:checkr _c ?? throw "null pointer dereference")._head;
        while ((_d != null && ((_d : Dynamic).__nil__ == null || !(_d : Dynamic).__nil__))) {
            {
                var __tmp__ = @:check2r _d._popHead(), _val:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _val, _1 : _ok };
                };
            };
            _d = stdgo._internal.sync.Sync__loadpoolchainelt._loadPoolChainElt((stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._prev) : stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>>));
        };
        return { _0 : (null : stdgo.AnyInterface), _1 : false };
    }
    @:keep
    @:tdfield
    static public function _pushHead( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>, _val:stdgo.AnyInterface):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        var _d = (@:checkr _c ?? throw "null pointer dereference")._head;
        if ((_d == null || (_d : Dynamic).__nil__)) {
            {};
            _d = (stdgo.Go.setRef(({} : stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt)) : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
            (@:checkr _d ?? throw "null pointer dereference")._poolDequeue._vals = (new stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>((8 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((8 : stdgo.GoInt).toBasic() > 0 ? (8 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sync.Sync_t_eface.T_eface)]) : stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>);
            (@:checkr _c ?? throw "null pointer dereference")._head = _d;
            stdgo._internal.sync.Sync__storepoolchainelt._storePoolChainElt((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._tail) : stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>>), _d);
        };
        if (@:check2r _d._pushHead(_val)) {
            return;
        };
        var _newSize = (((@:checkr _d ?? throw "null pointer dereference")._poolDequeue._vals.length) * (2 : stdgo.GoInt) : stdgo.GoInt);
        if ((_newSize >= (1073741824 : stdgo.GoInt) : Bool)) {
            _newSize = (1073741824 : stdgo.GoInt);
        };
        var _d2 = (stdgo.Go.setRef(({ _prev : _d } : stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt)) : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
        (@:checkr _d2 ?? throw "null pointer dereference")._poolDequeue._vals = (new stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>((_newSize : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_newSize : stdgo.GoInt).toBasic() > 0 ? (_newSize : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.sync.Sync_t_eface.T_eface)]) : stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>);
        (@:checkr _c ?? throw "null pointer dereference")._head = _d2;
        stdgo._internal.sync.Sync__storepoolchainelt._storePoolChainElt((stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._next) : stdgo.Ref<stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>>), _d2);
        @:check2r _d2._pushHead(_val);
    }
    @:keep
    @:tdfield
    static public function popTail( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        return @:check2r _c._popTail();
    }
    @:keep
    @:tdfield
    static public function popHead( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        return @:check2r _c._popHead();
    }
    @:keep
    @:tdfield
    static public function pushHead( _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>, _val:stdgo.AnyInterface):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain> = _c;
        @:check2r _c._pushHead(_val);
        return true;
    }
}
