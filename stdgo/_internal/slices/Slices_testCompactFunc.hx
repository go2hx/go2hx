package stdgo._internal.slices;
import stdgo._internal.math.Math;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function testCompactFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__compactTests._compactTests) {
            var _copy = stdgo._internal.slices.Slices_clone.clone(_test._s);
            {
                var _got = stdgo._internal.slices.Slices_compactFunc.compactFunc(_copy, function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1));
                if (!stdgo._internal.slices.Slices_equal.equal(_got, _test._want)) {
                    @:check2r _t.errorf(("CompactFunc(%v, equal[int]) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("a" : stdgo.GoString), ("a" : stdgo.GoString), ("A" : stdgo.GoString), ("B" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _copy = stdgo._internal.slices.Slices_clone.clone(_s1);
        var _want = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("B" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _got = stdgo._internal.slices.Slices_compactFunc.compactFunc(_copy, stdgo._internal.strings.Strings_equalFold.equalFold);
            if (!stdgo._internal.slices.Slices_equal.equal(_got, _want)) {
                @:check2r _t.errorf(("CompactFunc(%v, strings.EqualFold) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
