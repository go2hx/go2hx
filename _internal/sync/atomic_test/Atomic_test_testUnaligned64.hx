package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testUnaligned64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("test only runs on 32-bit systems" : stdgo.GoString)));
        };
        var _x = (new stdgo.Slice<stdgo.GoUInt32>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        var _p = ((stdgo.Go.toInterface(stdgo.Go.pointer(_x[(1 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) })) : stdgo.Pointer<stdgo.GoUInt64>);
        _internal.sync.atomic_test.Atomic_test__shouldPanic._shouldPanic(_t, ("LoadUint64" : stdgo.GoString), function():Void {
            stdgo._internal.sync.atomic_.Atomic__loadUint64.loadUint64(_p);
        });
        _internal.sync.atomic_test.Atomic_test__shouldPanic._shouldPanic(_t, ("LoadUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__42", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__43", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>).load();
        });
        _internal.sync.atomic_test.Atomic_test__shouldPanic._shouldPanic(_t, ("StoreUint64" : stdgo.GoString), function():Void {
            stdgo._internal.sync.atomic_.Atomic__storeUint64.storeUint64(_p, (1i64 : stdgo.GoUInt64));
        });
        _internal.sync.atomic_test.Atomic_test__shouldPanic._shouldPanic(_t, ("StoreUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__42", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__43", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>).store((1i64 : stdgo.GoUInt64));
        });
        _internal.sync.atomic_test.Atomic_test__shouldPanic._shouldPanic(_t, ("CompareAndSwapUint64" : stdgo.GoString), function():Void {
            stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint64.compareAndSwapUint64(_p, (1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64));
        });
        _internal.sync.atomic_test.Atomic_test__shouldPanic._shouldPanic(_t, ("CompareAndSwapUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__42", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__43", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>).compareAndSwap((1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64));
        });
        _internal.sync.atomic_test.Atomic_test__shouldPanic._shouldPanic(_t, ("AddUint64" : stdgo.GoString), function():Void {
            stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(_p, (3i64 : stdgo.GoUInt64));
        });
        _internal.sync.atomic_test.Atomic_test__shouldPanic._shouldPanic(_t, ("AddUint64Method" : stdgo.GoString), function():Void {
            ((stdgo.Go.toInterface(_p) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "__42", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "__43", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([]), false, { get : () -> null }) }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>).add((3i64 : stdgo.GoUInt64));
        });
    }