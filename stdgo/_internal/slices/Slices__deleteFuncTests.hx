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
var _deleteFuncTests : stdgo.Slice<stdgo._internal.slices.Slices_T__struct_7.T__struct_7> = (new stdgo.Slice<stdgo._internal.slices.Slices_T__struct_7.T__struct_7>(6, 6, ...[({ _s : (null : stdgo.Slice<stdgo.GoInt>), _fn : function(_0:stdgo.GoInt):Bool {
        return true;
    }, _want : (null : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_7.T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_0:stdgo.GoInt):Bool {
        return true;
    }, _want : (null : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_7.T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_0:stdgo.GoInt):Bool {
        return false;
    }, _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_7.T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_i:stdgo.GoInt):Bool {
        return (_i > (2 : stdgo.GoInt) : Bool);
    }, _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_7.T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_i:stdgo.GoInt):Bool {
        return (_i < (2 : stdgo.GoInt) : Bool);
    }, _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_7.T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(10 : stdgo.GoInt), (2 : stdgo.GoInt), (30 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_i:stdgo.GoInt):Bool {
        return (_i >= (10 : stdgo.GoInt) : Bool);
    }, _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_7.T__struct_7)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _fn : null, _want : (null : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_7.T__struct_7)])) : stdgo.Slice<stdgo._internal.slices.Slices_T__struct_7.T__struct_7>);
