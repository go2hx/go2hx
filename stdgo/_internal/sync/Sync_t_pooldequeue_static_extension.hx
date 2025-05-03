package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.T_poolDequeue_asInterface) class T_poolDequeue_static_extension {
    @:keep
    @:tdfield
    static public function _popTail( _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue> = _d;
        var _slot:stdgo.Ref<stdgo._internal.sync.Sync_t_eface.T_eface> = (null : stdgo.Ref<stdgo._internal.sync.Sync_t_eface.T_eface>);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L149"
        while (true) {
            var _ptrs = (stdgo._internal.sync.atomic_.Atomic__loaduint64.loadUint64(stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._headTail)) : stdgo.GoUInt64);
            var __tmp__ = _d._unpack(_ptrs), _head:stdgo.GoUInt32 = __tmp__._0, _tail:stdgo.GoUInt32 = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L152"
            if (_tail == (_head)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L154"
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            };
            var _ptrs2 = (_d._pack(_head, (_tail + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L161"
            if (stdgo._internal.sync.atomic_.Atomic__compareandswapuint64.compareAndSwapUint64(stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._headTail), _ptrs, _ptrs2)) {
                _slot = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._vals[((_tail & ((((@:checkr _d ?? throw "null pointer dereference")._vals.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.sync.Sync_t_eface.T_eface>);
                //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L164"
                break;
            };
        };
        var _val = (((stdgo.Go.toInterface(_slot) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) })) : stdgo.Ref<stdgo.AnyInterface>) : stdgo.AnyInterface);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L170"
        if (_val == (stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo._internal.sync.Sync_t_dequeuenil.T_dequeueNil))))) {
            _val = (null : stdgo.AnyInterface);
        };
        (@:checkr _slot ?? throw "null pointer dereference")._val = @:default_value null;
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L181"
        stdgo._internal.sync.atomic_.Atomic__storepointer.storePointer(stdgo.Go.pointer((@:checkr _slot ?? throw "null pointer dereference")._typ), @:default_value null);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L184"
        return { _0 : _val, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _popHead( _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue> = _d;
        var _slot:stdgo.Ref<stdgo._internal.sync.Sync_t_eface.T_eface> = (null : stdgo.Ref<stdgo._internal.sync.Sync_t_eface.T_eface>);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L114"
        while (true) {
            var _ptrs = (stdgo._internal.sync.atomic_.Atomic__loaduint64.loadUint64(stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._headTail)) : stdgo.GoUInt64);
            var __tmp__ = _d._unpack(_ptrs), _head:stdgo.GoUInt32 = __tmp__._0, _tail:stdgo.GoUInt32 = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L117"
            if (_tail == (_head)) {
                //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L119"
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            };
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L125"
            _head--;
            var _ptrs2 = (_d._pack(_head, _tail) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L127"
            if (stdgo._internal.sync.atomic_.Atomic__compareandswapuint64.compareAndSwapUint64(stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._headTail), _ptrs, _ptrs2)) {
                _slot = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._vals[((_head & ((((@:checkr _d ?? throw "null pointer dereference")._vals.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.sync.Sync_t_eface.T_eface>);
                //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L130"
                break;
            };
        };
        var _val = (((stdgo.Go.toInterface(_slot) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) })) : stdgo.Ref<stdgo.AnyInterface>) : stdgo.AnyInterface);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L135"
        if (_val == (stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo._internal.sync.Sync_t_dequeuenil.T_dequeueNil))))) {
            _val = (null : stdgo.AnyInterface);
        };
        {
            var __tmp__ = (new stdgo._internal.sync.Sync_t_eface.T_eface() : stdgo._internal.sync.Sync_t_eface.T_eface);
            var x = (_slot : stdgo._internal.sync.Sync_t_eface.T_eface);
            x._typ = __tmp__?._typ;
            x._val = __tmp__?._val;
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L141"
        return { _0 : _val, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _pushHead( _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>, _val:stdgo.AnyInterface):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue> = _d;
        var _ptrs = (stdgo._internal.sync.atomic_.Atomic__loaduint64.loadUint64(stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._headTail)) : stdgo.GoUInt64);
        var __tmp__ = _d._unpack(_ptrs), _head:stdgo.GoUInt32 = __tmp__._0, _tail:stdgo.GoUInt32 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L83"
        if ((((_tail + ((@:checkr _d ?? throw "null pointer dereference")._vals.length : stdgo.GoUInt32) : stdgo.GoUInt32)) & (-1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == (_head)) {
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L85"
            return false;
        };
        var _slot = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._vals[((_head & ((((@:checkr _d ?? throw "null pointer dereference")._vals.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.sync.Sync_t_eface.T_eface>);
        var _typ = (stdgo._internal.sync.atomic_.Atomic__loadpointer.loadPointer(stdgo.Go.pointer((@:checkr _slot ?? throw "null pointer dereference")._typ)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L91"
        if (_typ != null) {
            //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L94"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L98"
        if (_val == null) {
            _val = stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo._internal.sync.Sync_t_dequeuenil.T_dequeueNil)));
        };
        (((stdgo.Go.toInterface(_slot) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []) })) : stdgo.Ref<stdgo.AnyInterface>) : stdgo.AnyInterface).__setData__(_val);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L105"
        stdgo._internal.sync.atomic_.Atomic__adduint64.addUint64(stdgo.Go.pointer((@:checkr _d ?? throw "null pointer dereference")._headTail), (4294967296i64 : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L106"
        return true;
    }
    @:keep
    @:tdfield
    static public function _pack( _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>, _head:stdgo.GoUInt32, _tail:stdgo.GoUInt32):stdgo.GoUInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue> = _d;
        {};
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L74"
        return ((((_head : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | ((_tail & (-1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function _unpack( _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>, _ptrs:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue> = _d;
        var _head = (0 : stdgo.GoUInt32), _tail = (0 : stdgo.GoUInt32);
        {};
        _head = ((((_ptrs >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        _tail = ((_ptrs & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/sync/poolqueue.go#L69"
        return { _0 : _head, _1 : _tail };
    }
    @:keep
    @:tdfield
    static public function popTail( _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue> = _d;
        //"file:///home/runner/.go/go1.21.3/src/sync/export_test.go#L39"
        return _d._popTail();
    }
    @:keep
    @:tdfield
    static public function popHead( _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue> = _d;
        //"file:///home/runner/.go/go1.21.3/src/sync/export_test.go#L35"
        return _d._popHead();
    }
    @:keep
    @:tdfield
    static public function pushHead( _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>, _val:stdgo.AnyInterface):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue> = _d;
        //"file:///home/runner/.go/go1.21.3/src/sync/export_test.go#L31"
        return _d._pushHead(_val);
    }
}
