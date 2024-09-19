package _internal.internal.fmtsort_test;
function testInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(true), stdgo.Go.str());
x.set(stdgo.Go.toInterface(false), stdgo.Go.str());
x.set(stdgo.Go.toInterface((3.1 : stdgo.GoFloat64)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((2.1 : stdgo.GoFloat64)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((1.1 : stdgo.GoFloat64)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(stdgo._internal.math.Math_naN.naN()), stdgo.Go.str());
x.set(stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.str());
x.set(stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(("c" : stdgo.GoString)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(("b" : stdgo.GoString)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.str());
x.set(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (1 : stdgo.GoInt), _y : (0 : stdgo.GoInt) } : _internal.internal.fmtsort_test.Fmtsort_test_T__struct_0.T__struct_0))), stdgo.Go.str());
x.set(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (0 : stdgo.GoInt), _y : (1 : stdgo.GoInt) } : _internal.internal.fmtsort_test.Fmtsort_test_T__struct_0.T__struct_0))), stdgo.Go.str());
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo.GoString>);
        var _got = (_internal.internal.fmtsort_test.Fmtsort_test__sprint._sprint(stdgo.Go.toInterface(_m))?.__copy__() : stdgo.GoString);
        var _typeGroups = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("NaN: 1.1: 2.1: 3.1:" : stdgo.GoString), ("false: true:" : stdgo.GoString), ("1: 2: 3:" : stdgo.GoString), ("a: b: c:" : stdgo.GoString), ("[0 1]: [1 0]:" : stdgo.GoString), ("{0 1}: {1 0}:" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _g in _typeGroups) {
            if (!stdgo._internal.strings.Strings_contains.contains(_got?.__copy__(), _g?.__copy__())) {
                _t.errorf(("sorted map should contain %q" : stdgo.GoString), stdgo.Go.toInterface(_g));
            };
        };
    }
