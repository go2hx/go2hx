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
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s2 = stdgo._internal.slices.Slices_clone.clone(_s1);
        if (!stdgo._internal.slices.Slices_equal.equal(_s1, _s2)) {
            @:check2r _t.errorf(("Clone(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        _s1[(0 : stdgo.GoInt)] = (4 : stdgo.GoInt);
        var _want = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (!stdgo._internal.slices.Slices_equal.equal(_s2, _want)) {
            @:check2r _t.errorf(("Clone(%v) changed unexpectedly to %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_s2));
        };
        {
            var _got = stdgo._internal.slices.Slices_clone.clone((null : stdgo.Slice<stdgo.GoInt>));
            if (_got != null) {
                @:check2r _t.errorf(("Clone(nil) = %#v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _got = stdgo._internal.slices.Slices_clone.clone((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            if (((_got == null) || (_got.length != (0 : stdgo.GoInt)) : Bool)) {
                @:check2r _t.errorf(("Clone(%v) = %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
            };
        };
    }
