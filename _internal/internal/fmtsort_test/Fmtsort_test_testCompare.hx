package _internal.internal.fmtsort_test;
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in _internal.internal.fmtsort_test.Fmtsort_test__compareTests._compareTests) {
            for (_i => _v0 in _test) {
                for (_j => _v1 in _test) {
                    var _c = (stdgo._internal.internal.fmtsort.Fmtsort_compare.compare(_v0?.__copy__(), _v1?.__copy__()) : stdgo.GoInt);
                    var _expect:stdgo.GoInt = (0 : stdgo.GoInt);
                    if (_i == (_j)) {
                        _expect = (0 : stdgo.GoInt);
                        {
                            var _typ = (_v0.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                            if (((((_typ.kind() == (13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_typ.kind() == (14u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) && stdgo._internal.math.Math_isNaN.isNaN(_v0.float_()) : Bool)) {
                                _expect = (-1 : stdgo.GoInt);
                            };
                        };
                    } else if ((_i < _j : Bool)) {
                        _expect = (-1 : stdgo.GoInt);
                    } else if ((_i > _j : Bool)) {
                        _expect = (1 : stdgo.GoInt);
                    };
                    if (_c != (_expect)) {
                        _t.errorf(("%s: compare(%v,%v)=%d; expect %d" : stdgo.GoString), stdgo.Go.toInterface(_v0.type()), stdgo.Go.toInterface(stdgo.Go.asInterface(_v0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_v1)), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_expect));
                    };
                };
            };
        };
    }
