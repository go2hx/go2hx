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
function testIndexFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.slices.Slices__indexTests._indexTests) {
            {
                var _got = (stdgo._internal.slices.Slices_indexFunc.indexFunc(_test._s, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return stdgo._internal.slices.Slices__equal._equal(_0, _1), _test._v)) : stdgo.GoInt);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("IndexFunc(%v, equalToIndex(equal[int], %v)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hi" : stdgo.GoString), ("HI" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _got = (stdgo._internal.slices.Slices_indexFunc.indexFunc(_s1, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(function(key:stdgo.GoString, value:stdgo.GoString):Bool return stdgo._internal.slices.Slices__equal._equal(key, value), ("HI" : stdgo.GoString))) : stdgo.GoInt);
            if (_got != ((1 : stdgo.GoInt))) {
                @:check2r _t.errorf(("IndexFunc(%v, equalToIndex(equal[string], %q)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
        };
        {
            var _got = (stdgo._internal.slices.Slices_indexFunc.indexFunc(_s1, stdgo._internal.slices.Slices__equalToIndex._equalToIndex(stdgo._internal.strings.Strings_equalFold.equalFold, ("HI" : stdgo.GoString))) : stdgo.GoInt);
            if (_got != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("IndexFunc(%v, equalToIndex(strings.EqualFold, %q)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            };
        };
    }
