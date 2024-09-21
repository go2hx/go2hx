package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testUserArenaCloneString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
        var _s:stdgo.GoString = ("abcdefghij" : stdgo.GoString);
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        _a.slice(stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), (_s.length));
        stdgo.Go.copySlice(_b, _s);
        var _as:stdgo.GoString = ("" : stdgo.GoString);
        var _asHeader = ((stdgo.Go.toInterface(stdgo.Go.pointer(_as)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_StringHeader.StringHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_StringHeader.StringHeader>);
        _asHeader.data = ((stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }, { name : "cap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_SliceHeader.SliceHeader>).data;
        _asHeader.len = (_b.length);
        var _asCopy = (stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_as?.__copy__())?.__copy__() : stdgo.GoString);
        if (((stdgo.Go.toInterface(stdgo.Go.pointer(_as)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_StringHeader.StringHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_StringHeader.StringHeader>).data == (((stdgo.Go.toInterface(stdgo.Go.pointer(_asCopy)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_StringHeader.StringHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_StringHeader.StringHeader>).data)) {
            _t.error(stdgo.Go.toInterface(("Clone did not make a copy" : stdgo.GoString)));
        };
        var _subAs = ((_as.__slice__((1 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _subAsCopy = (stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_subAs?.__copy__())?.__copy__() : stdgo.GoString);
        if (((stdgo.Go.toInterface(stdgo.Go.pointer(_subAs)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_StringHeader.StringHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_StringHeader.StringHeader>).data == (((stdgo.Go.toInterface(stdgo.Go.pointer(_subAsCopy)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_StringHeader.StringHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_StringHeader.StringHeader>).data)) {
            _t.error(stdgo.Go.toInterface(("Clone did not make a copy" : stdgo.GoString)));
        };
        if ((_subAs.length) != ((_subAsCopy.length))) {
            _t.errorf(("Clone made an incorrect copy (bad length): %d -> %d" : stdgo.GoString), stdgo.Go.toInterface((_subAs.length)), stdgo.Go.toInterface((_subAsCopy.length)));
        } else {
            for (_i => _ in _subAs) {
                if (_subAs[(_i : stdgo.GoInt)] != (_subAsCopy[(_i : stdgo.GoInt)])) {
                    _t.errorf(("Clone made an incorrect copy (data at index %d): %d -> %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_subAs[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_subAs[(_i : stdgo.GoInt)]));
                };
            };
        };
        var _doubleAs = ((_as + _as?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _doubleAsCopy = (stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_doubleAs?.__copy__())?.__copy__() : stdgo.GoString);
        if (((stdgo.Go.toInterface(stdgo.Go.pointer(_doubleAs)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_StringHeader.StringHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_StringHeader.StringHeader>).data != (((stdgo.Go.toInterface(stdgo.Go.pointer(_doubleAsCopy)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_StringHeader.StringHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_StringHeader.StringHeader>).data)) {
            _t.error(stdgo.Go.toInterface(("Clone should not have made a copy" : stdgo.GoString)));
        };
        var _sCopy = (stdgo._internal.runtime.Runtime_userArenaClone.userArenaClone(_s?.__copy__())?.__copy__() : stdgo.GoString);
        if (((stdgo.Go.toInterface(stdgo.Go.pointer(_s)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_StringHeader.StringHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_StringHeader.StringHeader>).data != (((stdgo.Go.toInterface(stdgo.Go.pointer(_sCopy)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_StringHeader.StringHeader", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.reflect.Reflect_StringHeader.StringHeader>).data)) {
            _t.error(stdgo.Go.toInterface(("Clone should not have made a copy" : stdgo.GoString)));
        };
        _a.free();
    }
