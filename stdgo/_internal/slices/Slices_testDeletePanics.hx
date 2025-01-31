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
function testDeletePanics(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.slices.Slices_T__struct_8.T__struct_8>(5, 5, ...[({ _name : ("with negative first index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (-2 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : stdgo._internal.slices.Slices_T__struct_8.T__struct_8), ({ _name : ("with negative second index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (-1 : stdgo.GoInt) } : stdgo._internal.slices.Slices_T__struct_8.T__struct_8), ({ _name : ("with out-of-bounds first index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _j : (3 : stdgo.GoInt) } : stdgo._internal.slices.Slices_T__struct_8.T__struct_8), ({ _name : ("with out-of-bounds second index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : stdgo._internal.slices.Slices_T__struct_8.T__struct_8), ({ _name : ("with invalid i>j" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : stdgo._internal.slices.Slices_T__struct_8.T__struct_8)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _s : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : stdgo._internal.slices.Slices_T__struct_8.T__struct_8)])) : stdgo.Slice<stdgo._internal.slices.Slices_T__struct_8.T__struct_8>)) {
            if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
                stdgo._internal.slices.Slices_delete.delete(_test._s, _test._i, _test._j);
            })) {
                @:check2r _t.errorf(("Delete %s: got no panic, want panic" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
