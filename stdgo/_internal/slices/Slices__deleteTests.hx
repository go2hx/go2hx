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
var _deleteTests : stdgo.Slice<stdgo._internal.slices.Slices_T__struct_6.T__struct_6> = (new stdgo.Slice<stdgo._internal.slices.Slices_T__struct_6.T__struct_6>(5, 5, ...[({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_6.T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (1 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_6.T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (3 : stdgo.GoInt), _j : (3 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_6.T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_6.T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (3 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_6.T__struct_6)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt), _want : (null : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_6.T__struct_6)])) : stdgo.Slice<stdgo._internal.slices.Slices_T__struct_6.T__struct_6>);
