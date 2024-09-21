package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testAutoAligned64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _signed:_internal.sync.atomic_test.Atomic_test_T__struct_12.T__struct_12 = ({ _i : ({} : stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_) } : _internal.sync.atomic_test.Atomic_test_T__struct_12.T__struct_12);
        {
            var _o = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_signed) : stdgo.Ref<_internal.sync.atomic_test.Atomic_test_T__struct_12.T__struct_12>)))).elem().field((1 : stdgo.GoInt)).offset : stdgo.GoUIntptr);
            if (_o != ((8 : stdgo.GoUIntptr))) {
                _t.fatalf(("Int64 offset = %d, want 8" : stdgo.GoString), stdgo.Go.toInterface(_o));
            };
        };
        {
            var _p = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_signed) : stdgo.Ref<_internal.sync.atomic_test.Atomic_test_T__struct_12.T__struct_12>)))).elem().field((1 : stdgo.GoInt)).addr().pointer() : stdgo.GoUIntptr);
            if ((_p & (7 : stdgo.GoUIntptr) : stdgo.GoUIntptr) != ((0 : stdgo.GoUIntptr))) {
                _t.fatalf(("Int64 pointer = %#x, want 8-aligned" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
        var _unsigned:_internal.sync.atomic_test.Atomic_test_T__struct_13.T__struct_13 = ({ _i : ({} : stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64) } : _internal.sync.atomic_test.Atomic_test_T__struct_13.T__struct_13);
        {
            var _o = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_unsigned) : stdgo.Ref<_internal.sync.atomic_test.Atomic_test_T__struct_13.T__struct_13>)))).elem().field((1 : stdgo.GoInt)).offset : stdgo.GoUIntptr);
            if (_o != ((8 : stdgo.GoUIntptr))) {
                _t.fatalf(("Uint64 offset = %d, want 8" : stdgo.GoString), stdgo.Go.toInterface(_o));
            };
        };
        {
            var _p = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_unsigned) : stdgo.Ref<_internal.sync.atomic_test.Atomic_test_T__struct_13.T__struct_13>)))).elem().field((1 : stdgo.GoInt)).addr().pointer() : stdgo.GoUIntptr);
            if ((_p & (7 : stdgo.GoUIntptr) : stdgo.GoUIntptr) != ((0 : stdgo.GoUIntptr))) {
                _t.fatalf(("Int64 pointer = %#x, want 8-aligned" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
    }
