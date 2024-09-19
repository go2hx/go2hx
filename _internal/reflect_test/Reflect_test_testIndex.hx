package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _xs = (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _v = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_xs)).index((3 : stdgo.GoInt)).interface_() : stdgo.GoUInt8)) : stdgo.GoUInt8);
        if (_v != (_xs[((3 : stdgo.GoInt) : stdgo.GoInt)])) {
            _t.errorf(("xs.Index(3) = %v; expected %v" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_xs[(3 : stdgo.GoInt)]));
        };
        var _xa = (new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[(10 : stdgo.GoUInt8), (20 : stdgo.GoUInt8), (30 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (60 : stdgo.GoUInt8), (70 : stdgo.GoUInt8), (80 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        _v = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_xa)).index((2 : stdgo.GoInt)).interface_() : stdgo.GoUInt8)) : stdgo.GoUInt8);
        if (_v != (_xa[((2 : stdgo.GoInt) : stdgo.GoInt)])) {
            _t.errorf(("xa.Index(2) = %v; expected %v" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_xa[(2 : stdgo.GoInt)]));
        };
        var _s = ("0123456789" : stdgo.GoString);
        _v = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_s)).index((3 : stdgo.GoInt)).interface_() : stdgo.GoUInt8)) : stdgo.GoUInt8);
        if (_v != (_s[((3 : stdgo.GoInt) : stdgo.GoInt)])) {
            _t.errorf(("s.Index(3) = %v; expected %v" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_s[(3 : stdgo.GoInt)]));
        };
    }
