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
var _insertTests : stdgo.Slice<stdgo._internal.slices.Slices_T__struct_5.T__struct_5> = (new stdgo.Slice<stdgo._internal.slices.Slices_T__struct_5.T__struct_5>(4, 4, ...[({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(4 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_5.T__struct_5), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_5.T__struct_5), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (3 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_5.T__struct_5), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_5.T__struct_5)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _add : (null : stdgo.Slice<stdgo.GoInt>), _want : (null : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.slices.Slices_T__struct_5.T__struct_5)])) : stdgo.Slice<stdgo._internal.slices.Slices_T__struct_5.T__struct_5>);
