package stdgo._internal.slices;
private var __go2hxdoc__package : Bool;
final _unknownHint : stdgo._internal.slices.Slices.T_sortedHint = (2 : stdgo._internal.slices.Slices.T_sortedHint);
final _increasingHint = (2 : stdgo._internal.slices.Slices.T_sortedHint);
final _decreasingHint = (2 : stdgo._internal.slices.Slices.T_sortedHint);
final n : stdgo.GoUInt64 = (100000i64 : stdgo.GoUInt64);
var _equalIntTests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(4, 4, ...[({ _s1 : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (null : stdgo.Slice<stdgo.GoInt>), _want : false } : T__struct_0), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (null : stdgo.Slice<stdgo.GoInt>), _want : true } : T__struct_0), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : true } : T__struct_0), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : false } : T__struct_0)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _s1 : (null : stdgo.Slice<stdgo.GoInt>), _s2 : (null : stdgo.Slice<stdgo.GoInt>), _want : false } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
var _equalFloatTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(2, 2, ...[({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(2, 2, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(2, 2, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _wantEqual : true, _wantEqualNaN : true } : T__struct_1), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo._internal.math.Math.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo._internal.math.Math.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _wantEqual : false, _wantEqualNaN : true } : T__struct_1)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _s1 : (null : stdgo.Slice<stdgo.GoFloat64>), _s2 : (null : stdgo.Slice<stdgo.GoFloat64>), _wantEqual : false, _wantEqualNaN : false } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
var _compareIntTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(10, 10, ...[({ _s1 : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (0 : stdgo.GoInt) } : T__struct_2), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (1 : stdgo.GoInt) } : T__struct_2), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (-1 : stdgo.GoInt) } : T__struct_2), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (0 : stdgo.GoInt) } : T__struct_2), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (0 : stdgo.GoInt) } : T__struct_2), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (-1 : stdgo.GoInt) } : T__struct_2), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (1 : stdgo.GoInt) } : T__struct_2), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (-1 : stdgo.GoInt) } : T__struct_2), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (1 : stdgo.GoInt) } : T__struct_2), ({ _s1 : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _s2 : (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (8 : stdgo.GoInt), (9 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (1 : stdgo.GoInt) } : T__struct_2)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _s1 : (null : stdgo.Slice<stdgo.GoInt>), _s2 : (null : stdgo.Slice<stdgo.GoInt>), _want : (0 : stdgo.GoInt) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
var _compareFloatTests : stdgo.Slice<T__struct_3> = (new stdgo.Slice<T__struct_3>(10, 10, ...[({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (0 : stdgo.GoInt) } : T__struct_3), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(1, 1, ...[(1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(1, 1, ...[(1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (0 : stdgo.GoInt) } : T__struct_3), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(1, 1, ...[stdgo._internal.math.Math.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(1, 1, ...[stdgo._internal.math.Math.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (0 : stdgo.GoInt) } : T__struct_3), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo._internal.math.Math.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo._internal.math.Math.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (0 : stdgo.GoInt) } : T__struct_3), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), stdgo._internal.math.Math.naN(), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), stdgo._internal.math.Math.naN(), (4 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (-1 : stdgo.GoInt) } : T__struct_3), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), stdgo._internal.math.Math.naN(), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (4 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (-1 : stdgo.GoInt) } : T__struct_3), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), stdgo._internal.math.Math.naN(), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo._internal.math.Math.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (-1 : stdgo.GoInt) } : T__struct_3), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo._internal.math.Math.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (1 : stdgo.GoInt) } : T__struct_3), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), stdgo._internal.math.Math.naN(), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (1 : stdgo.GoInt) } : T__struct_3), ({ _s1 : (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[(1 : stdgo.GoFloat64), stdgo._internal.math.Math.naN(), (3 : stdgo.GoFloat64), (4 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _s2 : (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), stdgo._internal.math.Math.naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>), _want : (-1 : stdgo.GoInt) } : T__struct_3)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({ _s1 : (null : stdgo.Slice<stdgo.GoFloat64>), _s2 : (null : stdgo.Slice<stdgo.GoFloat64>), _want : (0 : stdgo.GoInt) } : T__struct_3)])) : stdgo.Slice<T__struct_3>);
var _indexTests : stdgo.Slice<T__struct_4> = (new stdgo.Slice<T__struct_4>(5, 5, ...[({ _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (0 : stdgo.GoInt), _want : (-1 : stdgo.GoInt) } : T__struct_4), ({ _s : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (0 : stdgo.GoInt), _want : (-1 : stdgo.GoInt) } : T__struct_4), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (2 : stdgo.GoInt), _want : (1 : stdgo.GoInt) } : T__struct_4), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (2 : stdgo.GoInt), _want : (1 : stdgo.GoInt) } : T__struct_4), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (2 : stdgo.GoInt), _want : (1 : stdgo.GoInt) } : T__struct_4)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (0 : stdgo.GoInt), _want : (0 : stdgo.GoInt) } : T__struct_4)])) : stdgo.Slice<T__struct_4>);
var _insertTests : stdgo.Slice<T__struct_5> = (new stdgo.Slice<T__struct_5>(4, 4, ...[({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(4 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_5), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (4 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_5), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (3 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_5), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _add : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_5)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _add : (null : stdgo.Slice<stdgo.GoInt>), _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
var _deleteTests : stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(5, 5, ...[({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (1 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (3 : stdgo.GoInt), _j : (3 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_6), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (3 : stdgo.GoInt), _want : (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_6)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt), _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_6)])) : stdgo.Slice<T__struct_6>);
var _deleteFuncTests : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(6, 6, ...[({ _s : (null : stdgo.Slice<stdgo.GoInt>), _fn : function(_0:stdgo.GoInt):Bool {
        return true;
    }, _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_0:stdgo.GoInt):Bool {
        return true;
    }, _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_0:stdgo.GoInt):Bool {
        return false;
    }, _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_i:stdgo.GoInt):Bool {
        return (_i > (2 : stdgo.GoInt) : Bool);
    }, _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_i:stdgo.GoInt):Bool {
        return (_i < (2 : stdgo.GoInt) : Bool);
    }, _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_7), ({ _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(10 : stdgo.GoInt), (2 : stdgo.GoInt), (30 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _fn : function(_i:stdgo.GoInt):Bool {
        return (_i >= (10 : stdgo.GoInt) : Bool);
    }, _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_7)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _fn : null, _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_7)])) : stdgo.Slice<T__struct_7>);
var _compactTests : stdgo.Slice<T__struct_9> = (new stdgo.Slice<T__struct_9>(6, 6, ...[({ _name : ("nil" : stdgo.GoString), _s : (null : stdgo.Slice<stdgo.GoInt>), _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("one" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("sorted" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("1 item" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("unsorted" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_9), ({ _name : ("many" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _want : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : T__struct_9)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _s : (null : stdgo.Slice<stdgo.GoInt>), _want : (null : stdgo.Slice<stdgo.GoInt>) } : T__struct_9)])) : stdgo.Slice<T__struct_9>);
var _ints : stdgo.GoArray<stdgo.GoInt> = (new stdgo.GoArray<stdgo.GoInt>(13, 13, ...[
(74 : stdgo.GoInt),
(59 : stdgo.GoInt),
(238 : stdgo.GoInt),
(-784 : stdgo.GoInt),
(9845 : stdgo.GoInt),
(959 : stdgo.GoInt),
(905 : stdgo.GoInt),
(0 : stdgo.GoInt),
(0 : stdgo.GoInt),
(42 : stdgo.GoInt),
(7586 : stdgo.GoInt),
(-5467984 : stdgo.GoInt),
(7586 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>);
var _float64s : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(18, 18, ...[
(74.3 : stdgo.GoFloat64),
(59 : stdgo.GoFloat64),
stdgo._internal.math.Math.inf((1 : stdgo.GoInt)),
(238.2 : stdgo.GoFloat64),
(-784 : stdgo.GoFloat64),
(2.3 : stdgo.GoFloat64),
stdgo._internal.math.Math.inf((-1 : stdgo.GoInt)),
(9845.768 : stdgo.GoFloat64),
(-959.7485 : stdgo.GoFloat64),
(905 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64),
(74.3 : stdgo.GoFloat64),
(59 : stdgo.GoFloat64),
stdgo._internal.math.Math.inf((1 : stdgo.GoInt)),
(238.2 : stdgo.GoFloat64),
(-784 : stdgo.GoFloat64),
(2.3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _float64sWithNaNs : stdgo.GoArray<stdgo.GoFloat64> = (new stdgo.GoArray<stdgo.GoFloat64>(14, 14, ...[
(74.3 : stdgo.GoFloat64),
(59 : stdgo.GoFloat64),
stdgo._internal.math.Math.inf((1 : stdgo.GoInt)),
(238.2 : stdgo.GoFloat64),
(-784 : stdgo.GoFloat64),
(2.3 : stdgo.GoFloat64),
stdgo._internal.math.Math.naN(),
stdgo._internal.math.Math.naN(),
stdgo._internal.math.Math.inf((-1 : stdgo.GoInt)),
(9845.768 : stdgo.GoFloat64),
(-959.7485 : stdgo.GoFloat64),
(905 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64),
(7.8 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>);
var _strs : stdgo.GoArray<stdgo.GoString> = (new stdgo.GoArray<stdgo.GoString>(8, 8, ...[stdgo.Go.str()?.__copy__(), ("Hello" : stdgo.GoString), ("foo" : stdgo.GoString), ("bar" : stdgo.GoString), ("foo" : stdgo.GoString), ("f00" : stdgo.GoString), ("%*&^*&^&" : stdgo.GoString), ("***" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>);
@:structInit @:private class T_myStruct {
    public var _a : stdgo.GoString = "";
    public var _b : stdgo.GoString = "";
    public var _c : stdgo.GoString = "";
    public var _d : stdgo.GoString = "";
    public var _n : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:stdgo.GoString, ?_d:stdgo.GoString, ?_n:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
        if (_c != null) this._c = _c;
        if (_d != null) this._d = _d;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_myStruct(_a, _b, _c, _d, _n);
    }
}
@:structInit @:private class T_intPair {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoInt = 0;
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoInt) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_intPair(_a, _b);
    }
}
@:structInit class S {
    public var _a : stdgo.GoInt = 0;
    public var _b : stdgo.GoString = "";
    public function new(?_a:stdgo.GoInt, ?_b:stdgo.GoString) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S(_a, _b);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _s1 : stdgo.Slice<stdgo.GoInt>;
    public var _s2 : stdgo.Slice<stdgo.GoInt>;
    public var _want : Bool;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _s1 : stdgo.Slice<stdgo.GoFloat64>;
    public var _s2 : stdgo.Slice<stdgo.GoFloat64>;
    public var _wantEqual : Bool;
    public var _wantEqualNaN : Bool;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _s1 : stdgo.Slice<stdgo.GoInt>;
    public var _s2 : stdgo.Slice<stdgo.GoInt>;
    public var _want : stdgo.GoInt;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _s1 : stdgo.Slice<stdgo.GoFloat64>;
    public var _s2 : stdgo.Slice<stdgo.GoFloat64>;
    public var _want : stdgo.GoInt;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_4_static_extension) typedef T__struct_4 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _v : stdgo.GoInt;
    public var _want : stdgo.GoInt;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _add : stdgo.Slice<stdgo.GoInt>;
    public var _want : stdgo.Slice<stdgo.GoInt>;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
    public var _want : stdgo.Slice<stdgo.GoInt>;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _fn : stdgo.GoInt -> Bool;
    public var _want : stdgo.Slice<stdgo.GoInt>;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _name : stdgo.GoString;
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _name : stdgo.GoString;
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _want : stdgo.Slice<stdgo.GoInt>;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _v : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _name : stdgo.GoString;
    public var _s : stdgo.Slice<stdgo.GoInt>;
    public var _v : stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_12_static_extension) typedef T__struct_12 = {
    public var _name : stdgo.GoString;
    public var _s : () -> stdgo.Slice<stdgo.GoInt>;
    public var _v : () -> stdgo.Slice<stdgo.GoInt>;
    public var _i : stdgo.GoInt;
    public var _j : stdgo.GoInt;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_13_static_extension) typedef T__struct_13 = {
    public var _data : stdgo.Slice<stdgo.GoInt>;
    public var _wantMin : stdgo.GoInt;
    public var _wantMax : stdgo.GoInt;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _data : stdgo.Slice<stdgo.GoString>;
    public var _target : stdgo.GoString;
    public var _wantPos : stdgo.GoInt;
    public var _wantFound : Bool;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _target : stdgo.GoInt;
    public var _wantPos : stdgo.GoInt;
    public var _wantFound : Bool;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo._internal.slices.Slices.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _target : stdgo.GoFloat64;
    public var _wantPos : stdgo.GoInt;
    public var _wantFound : Bool;
};
@:named typedef T_sortedHint = stdgo.GoInt;
@:named @:using(stdgo._internal.slices.Slices.T_xorshift_static_extension) typedef T_xorshift = stdgo.GoUInt64;
@:named @:using(stdgo._internal.slices.Slices.T_myStructs_static_extension) typedef T_myStructs = stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>>;
@:named @:using(stdgo._internal.slices.Slices.T_intPairs_static_extension) typedef T_intPairs = stdgo.Slice<stdgo._internal.slices.Slices.T_intPair>;
macro function equal<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s1:haxe.macro.Expr.ExprOf<S>, _s2:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Bool>;
macro function equalFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr.ExprOf<S1>, __generic__1:haxe.macro.Expr.ExprOf<S2>, __generic__2:haxe.macro.Expr.ExprOf<E1>, __generic__3:haxe.macro.Expr.ExprOf<E2>, _s1:haxe.macro.Expr.ExprOf<S1>, _s2:haxe.macro.Expr.ExprOf<S2>, _eq:haxe.macro.Expr.ExprOf<($E1, $E2) -> Bool>):haxe.macro.Expr.ExprOf<Bool>;
macro function compare<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s1:haxe.macro.Expr.ExprOf<S>, _s2:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function compareFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr.ExprOf<S1>, __generic__1:haxe.macro.Expr.ExprOf<S2>, __generic__2:haxe.macro.Expr.ExprOf<E1>, __generic__3:haxe.macro.Expr.ExprOf<E2>, _s1:haxe.macro.Expr.ExprOf<S1>, _s2:haxe.macro.Expr.ExprOf<S2>, _cmp:haxe.macro.Expr.ExprOf<($E1, $E2) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function index<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _v:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function indexFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _f:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function contains<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _v:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<Bool>;
macro function containsFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _f:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<Bool>;
macro function insert<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S>;
macro function delete<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<S>;
macro function deleteFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _del:haxe.macro.Expr.ExprOf<$E -> Bool>):haxe.macro.Expr.ExprOf<S>;
macro function replace<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S>;
macro function clone<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S>;
macro function compact<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S>;
macro function compactFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _eq:haxe.macro.Expr.ExprOf<($E, $E) -> Bool>):haxe.macro.Expr.ExprOf<S>;
macro function grow<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<S>;
macro function clip<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<S>;
macro function _rotateLeft<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _r:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _rotateRight<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _r:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _swap<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _y:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):haxe.macro.Expr.ExprOf<Void>;
macro function _overlaps<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _a:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _b:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):haxe.macro.Expr.ExprOf<Bool>;
macro function _startIdx<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _haystack:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _needle:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function reverse<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Void>;
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _equalIntTests) {
            {
                var _got:Bool = equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s1, _test._s2);
                if (_got != (_test._want)) {
                    _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__9 => _test in _equalFloatTests) {
            {
                var _got:Bool = equal((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _test._s1, _test._s2);
                if (_got != (_test._wantEqual)) {
                    _t.errorf(("Equal(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqual));
                };
            };
        };
    }
macro function _equal<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v1:haxe.macro.Expr.ExprOf<T_>, _v2:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<Bool>;
macro function _equalNaN<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v1:haxe.macro.Expr.ExprOf<T_>, _v2:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<Bool>;
function _offByOne(_v1:stdgo.GoInt, _v2:stdgo.GoInt):Bool {
        return ((_v1 == (_v2 + (1 : stdgo.GoInt) : stdgo.GoInt)) || (_v1 == (_v2 - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool);
    }
function testEqualFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _equalIntTests) {
            {
                var _got:Bool = equalFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _test._s1, _test._s2, function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), _0, _1));
                if (_got != (_test._want)) {
                    _t.errorf(("EqualFunc(%v, %v, equal[int]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__9 => _test in _equalFloatTests) {
            {
                var _got:Bool = equalFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return _equal((0 : stdgo.GoFloat64), _0, _1));
                if (_got != (_test._wantEqual)) {
                    _t.errorf(("Equal(%v, %v, equal[float64]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqual));
                };
            };
            {
                var _got:Bool = equalFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _test._s1, _test._s2, function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return _equalNaN((0 : stdgo.GoFloat64), _0, _1));
                if (_got != (_test._wantEqualNaN)) {
                    _t.errorf(("Equal(%v, %v, equalNaN[float64]) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._wantEqualNaN));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s2 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (equalFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _s1, _s1, _offByOne)) {
            _t.errorf(("EqualFunc(%v, %v, offByOne) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s1));
        };
        if (!equalFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _s1, _s2, _offByOne)) {
            _t.errorf(("EqualFunc(%v, %v, offByOne) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2));
        };
        var _s3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _s4 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("A" : stdgo.GoString), ("B" : stdgo.GoString), ("C" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        if (!equalFunc((null : stdgo.Slice<stdgo.GoString>), (null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), ("" : stdgo.GoString), _s3, _s4, stdgo._internal.strings.Strings.equalFold)) {
            _t.errorf(("EqualFunc(%v, %v, strings.EqualFold) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4));
        };
        var _cmpIntString:(stdgo.GoInt, stdgo.GoString) -> Bool = function(_v1:stdgo.GoInt, _v2:stdgo.GoString):Bool {
            return ((((_v1 : stdgo.GoRune) - (1 : stdgo.GoInt32) : stdgo.GoInt32) + (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString) == (_v2);
        };
        if (!equalFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoString>), (0 : stdgo.GoInt), ("" : stdgo.GoString), _s1, _s3, _cmpIntString)) {
            _t.errorf(("EqualFunc(%v, %v, cmpIntString) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s3));
        };
    }
@:named typedef T_benchmarkEqualFunc_Large___localname___Large_2927 = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkEqualFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        var _xs = (new stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927>);
        var _ys = (new stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = equalFunc((null : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927>), (null : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927>), new stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), new stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large___localname___Large_2927(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _xs, _ys, function(_x:T_benchmarkEqualFunc_Large___localname___Large_2927, _y:T_benchmarkEqualFunc_Large___localname___Large_2927):Bool {
                    return stdgo.Go.toInterface(_x) == stdgo.Go.toInterface(_y);
                });
            });
        };
    }
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _intWant:Bool -> stdgo.GoString = function(_want:Bool):stdgo.GoString {
            if (_want) {
                return ("0" : stdgo.GoString);
            };
            return ("!= 0" : stdgo.GoString);
        };
        for (__0 => _test in _equalIntTests) {
            {
                var _got:stdgo.GoInt = compare((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s1, _test._s2);
                if ((_got == (0 : stdgo.GoInt)) != (_test._want)) {
                    _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._want)));
                };
            };
        };
        for (__9 => _test in _equalFloatTests) {
            {
                var _got:stdgo.GoInt = compare((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _test._s1, _test._s2);
                if ((_got == (0 : stdgo.GoInt)) != (_test._wantEqualNaN)) {
                    _t.errorf(("Compare(%v, %v) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._wantEqualNaN)));
                };
            };
        };
        for (__18 => _test in _compareIntTests) {
            {
                var _got:stdgo.GoInt = compare((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s1, _test._s2);
                if (_got != (_test._want)) {
                    _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__27 => _test in _compareFloatTests) {
            {
                var _got:stdgo.GoInt = compare((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _test._s1, _test._s2);
                if (_got != (_test._want)) {
                    _t.errorf(("Compare(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
macro function _equalToCmp<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _eq:haxe.macro.Expr.ExprOf<($T_, $T_) -> Bool>):haxe.macro.Expr.ExprOf<(T_, T_) -> stdgo.GoInt>;
function testCompareFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _intWant:Bool -> stdgo.GoString = function(_want:Bool):stdgo.GoString {
            if (_want) {
                return ("0" : stdgo.GoString);
            };
            return ("!= 0" : stdgo.GoString);
        };
        for (__0 => _test in _equalIntTests) {
            {
                var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _test._s1, _test._s2, _equalToCmp((0 : stdgo.GoInt), function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), _0, _1)));
                if ((_got == (0 : stdgo.GoInt)) != (_test._want)) {
                    _t.errorf(("CompareFunc(%v, %v, equalToCmp(equal[int])) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._want)));
                };
            };
        };
        for (__9 => _test in _equalFloatTests) {
            {
                var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _test._s1, _test._s2, _equalToCmp((0 : stdgo.GoFloat64), function(_0:stdgo.GoFloat64, _1:stdgo.GoFloat64):Bool return _equal((0 : stdgo.GoFloat64), _0, _1)));
                if ((_got == (0 : stdgo.GoInt)) != (_test._wantEqual)) {
                    _t.errorf(("CompareFunc(%v, %v, equalToCmp(equal[float64])) = %d, want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_intWant(_test._wantEqual)));
                };
            };
        };
        for (__18 => _test in _compareIntTests) {
            {
                var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _test._s1, _test._s2, function(x:T_, y:T_):stdgo.GoInt return stdgo._internal.cmp.Cmp.compare(x, y));
                if (_got != (_test._want)) {
                    _t.errorf(("CompareFunc(%v, %v, cmp[int]) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        for (__27 => _test in _compareFloatTests) {
            {
                var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _test._s1, _test._s2, function(x:T_, y:T_):stdgo.GoInt return stdgo._internal.cmp.Cmp.compare(x, y));
                if (_got != (_test._want)) {
                    _t.errorf(("CompareFunc(%v, %v, cmp[float64]) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s1), stdgo.Go.toInterface(_test._s2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s2 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _s1, _s2, _equalToCmp((0 : stdgo.GoInt), _offByOne));
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("CompareFunc(%v, %v, offByOne) = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_got));
            };
        };
        var _s3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _s4 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("A" : stdgo.GoString), ("B" : stdgo.GoString), ("C" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoString>), (null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), ("" : stdgo.GoString), _s3, _s4, stdgo._internal.strings.Strings.compare);
            if (_got != ((1 : stdgo.GoInt))) {
                _t.errorf(("CompareFunc(%v, %v, strings.Compare) = %d, want 1" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4), stdgo.Go.toInterface(_got));
            };
        };
        var _compareLower:(stdgo.GoString, stdgo.GoString) -> stdgo.GoInt = function(_v1:stdgo.GoString, _v2:stdgo.GoString):stdgo.GoInt {
            return stdgo._internal.strings.Strings.compare(stdgo._internal.strings.Strings.toLower(_v1?.__copy__())?.__copy__(), stdgo._internal.strings.Strings.toLower(_v2?.__copy__())?.__copy__());
        };
        {
            var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoString>), (null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), ("" : stdgo.GoString), _s3, _s4, _compareLower);
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("CompareFunc(%v, %v, compareLower) = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_s4), stdgo.Go.toInterface(_got));
            };
        };
        var _cmpIntString:(stdgo.GoInt, stdgo.GoString) -> stdgo.GoInt = function(_v1:stdgo.GoInt, _v2:stdgo.GoString):stdgo.GoInt {
            return stdgo._internal.strings.Strings.compare(((((_v1 : stdgo.GoRune) - (1 : stdgo.GoInt32) : stdgo.GoInt32) + (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString)?.__copy__(), _v2?.__copy__());
        };
        {
            var _got:stdgo.GoInt = compareFunc((null : stdgo.Slice<stdgo.GoInt>), (null : stdgo.Slice<stdgo.GoString>), (0 : stdgo.GoInt), ("" : stdgo.GoString), _s1, _s3, _cmpIntString);
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("CompareFunc(%v, %v, cmpIntString) = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s3), stdgo.Go.toInterface(_got));
            };
        };
    }
function testIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _indexTests) {
            {
                var _got:stdgo.GoInt = index((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _test._v);
                if (_got != (_test._want)) {
                    _t.errorf(("Index(%v, %v) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
macro function _equalToIndex<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<($T_, $T_) -> Bool>, _v1:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<T_ -> Bool>;
@:named typedef T_benchmarkIndex_Large___localname___Large_7963 = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkIndex_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        var _ss = (new stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkIndex_Large___localname___Large_7963>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices.T_benchmarkIndex_Large___localname___Large_7963(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkIndex_Large___localname___Large_7963>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = index((null : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkIndex_Large___localname___Large_7963>), new stdgo._internal.slices.Slices.T_benchmarkIndex_Large___localname___Large_7963(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _ss, (new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo._internal.slices.Slices.T_benchmarkIndex_Large___localname___Large_7963)?.__copy__());
            });
        };
    }
function testIndexFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _indexTests) {
            {
                var _got:stdgo.GoInt = indexFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _equalToIndex((0 : stdgo.GoInt), function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), _0, _1), _test._v));
                if (_got != (_test._want)) {
                    _t.errorf(("IndexFunc(%v, equalToIndex(equal[int], %v)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hi" : stdgo.GoString), ("HI" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _got:stdgo.GoInt = indexFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), function(key:stdgo.GoString, value:stdgo.GoString):Bool return _equal(("" : stdgo.GoString), key, value), ("HI" : stdgo.GoString)));
            if (_got != ((1 : stdgo.GoInt))) {
                _t.errorf(("IndexFunc(%v, equalToIndex(equal[string], %q)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((1 : stdgo.GoInt)));
            };
        };
        {
            var _got:stdgo.GoInt = indexFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), stdgo._internal.strings.Strings.equalFold, ("HI" : stdgo.GoString)));
            if (_got != ((0 : stdgo.GoInt))) {
                _t.errorf(("IndexFunc(%v, equalToIndex(strings.EqualFold, %q)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            };
        };
    }
@:named typedef T_benchmarkIndexFunc_Large___localname___Large_8766 = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkIndexFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        var _ss = (new stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkIndexFunc_Large___localname___Large_8766>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices.T_benchmarkIndexFunc_Large___localname___Large_8766(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkIndexFunc_Large___localname___Large_8766>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = indexFunc((null : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkIndexFunc_Large___localname___Large_8766>), new stdgo._internal.slices.Slices.T_benchmarkIndexFunc_Large___localname___Large_8766(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _ss, function(_e:T_benchmarkIndexFunc_Large___localname___Large_8766):Bool {
                    return stdgo.Go.toInterface(_e) == stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo._internal.slices.Slices.T_benchmarkIndexFunc_Large___localname___Large_8766));
                });
            });
        };
    }
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _indexTests) {
            {
                var _got:Bool = contains((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _test._v);
                if (_got != ((_test._want != (-1 : stdgo.GoInt)))) {
                    _t.errorf(("Contains(%v, %v) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want != ((-1 : stdgo.GoInt))));
                };
            };
        };
    }
function testContainsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _indexTests) {
            {
                var _got:Bool = containsFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _equalToIndex((0 : stdgo.GoInt), function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), _0, _1), _test._v));
                if (_got != ((_test._want != (-1 : stdgo.GoInt)))) {
                    _t.errorf(("ContainsFunc(%v, equalToIndex(equal[int], %v)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want != ((-1 : stdgo.GoInt))));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hi" : stdgo.GoString), ("HI" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _got:Bool = containsFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), function(key:stdgo.GoString, value:stdgo.GoString):Bool return _equal(("" : stdgo.GoString), key, value), ("HI" : stdgo.GoString)));
            if (_got != (true)) {
                _t.errorf(("ContainsFunc(%v, equalToContains(equal[string], %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("HI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(true));
            };
        };
        {
            var _got:Bool = containsFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), function(key:stdgo.GoString, value:stdgo.GoString):Bool return _equal(("" : stdgo.GoString), key, value), ("hI" : stdgo.GoString)));
            if (_got != (false)) {
                _t.errorf(("ContainsFunc(%v, equalToContains(strings.EqualFold, %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("hI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(false));
            };
        };
        {
            var _got:Bool = containsFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1, _equalToIndex(("" : stdgo.GoString), stdgo._internal.strings.Strings.equalFold, ("hI" : stdgo.GoString)));
            if (_got != (true)) {
                _t.errorf(("ContainsFunc(%v, equalToContains(strings.EqualFold, %q)) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(("hI" : stdgo.GoString)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(true));
            };
        };
    }
function testInsert(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _got = insert((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s, (0 : stdgo.GoInt));
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _s)) {
                _t.errorf(("Insert(%v, 0) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_s));
            };
        };
        for (__8 => _test in _insertTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = insert((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, _test._i, ...(_test._add : Array<stdgo.GoInt>));
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("Insert(%v, %d, %v...) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._add), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        if ((!stdgo._internal.internal.testenv.Testenv.optimizationOff() && true : Bool)) {
            {};
            var _n:stdgo.GoFloat64 = stdgo._internal.testing.Testing.allocsPerRun((10 : stdgo.GoInt), function():Void {
                var _s = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (50 : stdgo.GoInt) : Bool), _i++, {
                        _s = insert((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s, (0 : stdgo.GoInt), (1 : stdgo.GoInt));
                    });
                };
            });
            if ((_n > (25 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("too many allocations inserting %d elements: got %v, want less than %d" : stdgo.GoString), stdgo.Go.toInterface((50 : stdgo.GoInt)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((25 : stdgo.GoInt)));
            };
        };
    }
function testInsertOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _a = (new stdgo.Slice<stdgo.GoInt>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _want = (new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (10 : stdgo.GoInt) : Bool), _n++, {
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i <= _n : Bool), _i++, {
                        {
                            var _x:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_x <= (10 : stdgo.GoInt) : Bool), _x++, {
                                {
                                    var _y:stdgo.GoInt = _x;
                                    stdgo.Go.cfor((_y <= (10 : stdgo.GoInt) : Bool), _y++, {
                                        {
                                            var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                                            stdgo.Go.cfor((_k < (10 : stdgo.GoInt) : Bool), _k++, {
                                                _a[(_k : stdgo.GoInt)] = _k;
                                            });
                                        };
                                        _want = (_want.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                                        _want = (_want.__append__(...((_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
                                        _want = (_want.__append__(...((_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
                                        _want = (_want.__append__(...((_a.__slice__(_i, _n) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
                                        var _got = insert((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_a.__slice__(0, _n) : stdgo.Slice<stdgo.GoInt>), _i, ...((_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>));
                                        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _want)) {
                                            _t.errorf(("Insert with overlap failed n=%d i=%d x=%d y=%d, got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                        };
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testDelete(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _deleteTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = delete((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, _test._i, _test._j);
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("Delete(%v, %d, %d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._j), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function testDeleteFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _test in _deleteFuncTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = deleteFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, _test._fn);
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("DeleteFunc case %d: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function _panics(_f:() -> Void):Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _b:Bool = false;
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _x:stdgo.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_x != null) {
                            _b = true;
                        };
                    };
                };
                a();
            });
            _f();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _b;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _b;
        };
    }
function testDeletePanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_8>(5, 5, ...[({ _name : ("with negative first index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (-2 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : T__struct_8), ({ _name : ("with negative second index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (-1 : stdgo.GoInt) } : T__struct_8), ({ _name : ("with out-of-bounds first index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _j : (3 : stdgo.GoInt) } : T__struct_8), ({ _name : ("with out-of-bounds second index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_8), ({ _name : ("with invalid i>j" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(42 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : T__struct_8)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _s : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : T__struct_8)])) : stdgo.Slice<T__struct_8>)) {
            if (!_panics(function():Void {
                delete((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _test._i, _test._j);
            })) {
                _t.errorf(("Delete %s: got no panic, want panic" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s2 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s2)) {
            _t.errorf(("Clone(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        _s1[(0 : stdgo.GoInt)] = (4 : stdgo.GoInt);
        var _want = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s2, _want)) {
            _t.errorf(("Clone(%v) changed unexpectedly to %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_s2));
        };
        {
            var _got = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoInt>));
            if (_got != null) {
                _t.errorf(("Clone(nil) = %#v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
        {
            var _got = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            if (((_got == null) || (_got.length != (0 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("Clone(%v) = %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((_s1.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)));
            };
        };
    }
function testCompact(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _compactTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = compact((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy);
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("Compact(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
function benchmarkCompact(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _c in _compactTests) {
            _b.run(_c._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                var _ss = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                {
                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < _b.n : Bool), _k++, {
                        _ss = (_ss.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                        _ss = (_ss.__append__(...(_c._s : Array<stdgo.GoInt>)));
                        var __blank__ = compact((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ss);
                    });
                };
            });
        };
    }
@:named typedef T_benchmarkCompact_Large___localname___Large_15129 = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkCompact_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        var _ss = (new stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkCompact_Large___localname___Large_15129>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices.T_benchmarkCompact_Large___localname___Large_15129(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkCompact_Large___localname___Large_15129>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = compact((null : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkCompact_Large___localname___Large_15129>), new stdgo._internal.slices.Slices.T_benchmarkCompact_Large___localname___Large_15129(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _ss);
            });
        };
    }
function testCompactFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _compactTests) {
            var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s);
            {
                var _got = compactFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, function(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return _equal((0 : stdgo.GoInt), _0, _1));
                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _test._want)) {
                    _t.errorf(("CompactFunc(%v, equal[int]) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
        var _s1 = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("a" : stdgo.GoString), ("a" : stdgo.GoString), ("A" : stdgo.GoString), ("B" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _copy = clone((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _s1);
        var _want = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("B" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _got = compactFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _copy, stdgo._internal.strings.Strings.equalFold);
            if (!equal((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _got, _want)) {
                _t.errorf(("CompactFunc(%v, strings.EqualFold) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
@:named typedef T_benchmarkCompactFunc_Large___localname___Large_15780 = stdgo.GoArray<stdgo.GoUInt8>;
function benchmarkCompactFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        var _ss = (new stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkCompactFunc_Large___localname___Large_15780>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices.T_benchmarkCompactFunc_Large___localname___Large_15780(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkCompactFunc_Large___localname___Large_15780>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = compactFunc((null : stdgo.Slice<stdgo._internal.slices.Slices.T_benchmarkCompactFunc_Large___localname___Large_15780>), new stdgo._internal.slices.Slices.T_benchmarkCompactFunc_Large___localname___Large_15780(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)]), _ss, function(_a:T_benchmarkCompactFunc_Large___localname___Large_15780, _b:T_benchmarkCompactFunc_Large___localname___Large_15780):Bool {
                    return stdgo.Go.toInterface(_a) == stdgo.Go.toInterface(_b);
                });
            });
        };
    }
function testGrow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        var _s2 = grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _copy, (1000 : stdgo.GoInt));
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s2)) {
            _t.errorf(("Grow(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        if ((_s2.capacity < ((1000 : stdgo.GoInt) + (_s1.length) : stdgo.GoInt) : Bool)) {
            _t.errorf(("after Grow(%v) cap = %d, want >= %d" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2.capacity), stdgo.Go.toInterface(((1000 : stdgo.GoInt) + (_s1.length) : stdgo.GoInt)));
        };
        _copy = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        var _s3 = (grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_copy.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), (2 : stdgo.GoInt)).__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s3)) {
            _t.errorf(("Grow should not mutate elements between length and capacity" : stdgo.GoString));
        };
        _s3 = (grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_copy.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>), (1000 : stdgo.GoInt)).__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s3)) {
            _t.errorf(("Grow should not mutate elements between length and capacity" : stdgo.GoString));
        };
        {
            var _n:stdgo.GoFloat64 = stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s2, (_s2.capacity - (_s2.length) : stdgo.GoInt));
            });
            if (_n != (0 : stdgo.GoFloat64)) {
                _t.errorf(("Grow should not allocate when given sufficient capacity; allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n:stdgo.GoFloat64 = stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s2, ((_s2.capacity - (_s2.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt));
            });
            if (_n != (1 : stdgo.GoFloat64)) {
                var _errorf = _t.errorf;
                if ((false || stdgo._internal.internal.testenv.Testenv.optimizationOff() : Bool)) {
                    _errorf = _t.logf;
                };
                _errorf(("Grow should allocate once when given insufficient capacity; allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        var _gotPanic:Bool = false;
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            _gotPanic = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            }) != null;
                        };
                        a();
                    });
                    grow((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, (-1 : stdgo.GoInt));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            a();
        };
        if (!_gotPanic) {
            _t.errorf(("Grow(-1) did not panic; expected a panic" : stdgo.GoString));
        };
    }
function testClip(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s1 = ((new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>).__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        var _orig = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        if ((_s1.length) != ((3 : stdgo.GoInt))) {
            _t.errorf(("len(%v) = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface((_s1.length)));
        };
        if ((_s1.capacity < (6 : stdgo.GoInt) : Bool)) {
            _t.errorf(("cap(%v[:3]) = %d, want >= 6" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_s1.capacity));
        };
        var _s2 = clip((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1);
        if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _s2)) {
            _t.errorf(("Clip(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_s1));
        };
        if (_s2.capacity != ((3 : stdgo.GoInt))) {
            _t.errorf(("cap(Clip(%v)) = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface(_s2.capacity));
        };
    }
function testReverse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _even = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        reverse((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _even);
        {
            var _want = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(9 : stdgo.GoInt), (5 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _even, _want)) {
                _t.errorf(("Reverse(even) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_even), stdgo.Go.toInterface(_want));
            };
        };
        var _odd = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (9 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        reverse((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _odd);
        {
            var _want = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(2 : stdgo.GoInt), (9 : stdgo.GoInt), (5 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _odd, _want)) {
                _t.errorf(("Reverse(odd) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_odd), stdgo.Go.toInterface(_want));
            };
        };
        var _words = stdgo._internal.strings.Strings.fields(("one two three" : stdgo.GoString));
        reverse((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _words);
        {
            var _want = stdgo._internal.strings.Strings.fields(("three two one" : stdgo.GoString));
            if (!equal((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _words, _want)) {
                _t.errorf(("Reverse(words) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_words), stdgo.Go.toInterface(_want));
            };
        };
        var _singleton = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("one" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        reverse((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _singleton);
        {
            var _want = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("one" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if (!equal((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _singleton, _want)) {
                _t.errorf(("Reverse(singeleton) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_singleton), stdgo.Go.toInterface(_want));
            };
        };
        reverse((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), (null : stdgo.Slice<stdgo.GoString>));
    }
macro function _naiveReplace<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):haxe.macro.Expr.ExprOf<S>;
function testReplace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_10>(4, 4, ...[({ _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : T__struct_10), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_10), ({ _s : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_10), ({ _s : {
            var a = function():stdgo.Slice<stdgo.GoInt> {
                var _s = (new stdgo.Slice<stdgo.GoInt>((3 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                _s[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _s[(1 : stdgo.GoInt)] = (1 : stdgo.GoInt);
                _s[(2 : stdgo.GoInt)] = (2 : stdgo.GoInt);
                return _s;
            };
            a();
        }, _v : (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : T__struct_10)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : T__struct_10)])) : stdgo.Slice<T__struct_10>)) {
            var __0 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s), __1 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._v), _vv = __1, _ss = __0;
            var _want = _naiveReplace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ss, _test._i, _test._j, ...(_vv : Array<stdgo.GoInt>));
            var _got = replace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s, _test._i, _test._j, ...(_test._v : Array<stdgo.GoInt>));
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _want)) {
                _t.errorf(("Replace(%v, %v, %v, %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_test._j), stdgo.Go.toInterface(_test._v), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testReplacePanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<T__struct_11>(3, 3, ...[({ _name : ("indexes out of order" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (2 : stdgo.GoInt), _j : (1 : stdgo.GoInt) } : T__struct_11), ({ _name : ("large index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (1 : stdgo.GoInt), _j : (10 : stdgo.GoInt) } : T__struct_11), ({ _name : ("negative index" : stdgo.GoString), _s : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _v : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _i : (-1 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_11)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _s : (null : stdgo.Slice<stdgo.GoInt>), _v : (null : stdgo.Slice<stdgo.GoInt>), _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : T__struct_11)])) : stdgo.Slice<T__struct_11>)) {
            var __0 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._s), __1 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _test._v), _vv = __1, _ss = __0;
            if (!_panics(function():Void {
                replace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ss, _test._i, _test._j, ...(_vv : Array<stdgo.GoInt>));
            })) {
                _t.errorf(("Replace %s: should have panicked" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
            };
        };
    }
function testReplaceOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _a = (new stdgo.Slice<stdgo.GoInt>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _want = (new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n <= (10 : stdgo.GoInt) : Bool), _n++, {
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i <= _n : Bool), _i++, {
                        {
                            var _j:stdgo.GoInt = _i;
                            stdgo.Go.cfor((_j <= _n : Bool), _j++, {
                                {
                                    var _x:stdgo.GoInt = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_x <= (10 : stdgo.GoInt) : Bool), _x++, {
                                        {
                                            var _y:stdgo.GoInt = _x;
                                            stdgo.Go.cfor((_y <= (10 : stdgo.GoInt) : Bool), _y++, {
                                                {
                                                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                                                    stdgo.Go.cfor((_k < (10 : stdgo.GoInt) : Bool), _k++, {
                                                        _a[(_k : stdgo.GoInt)] = _k;
                                                    });
                                                };
                                                _want = (_want.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                                                _want = (_want.__append__(...((_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
                                                _want = (_want.__append__(...((_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
                                                _want = (_want.__append__(...((_a.__slice__(_j, _n) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
                                                var _got = replace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_a.__slice__(0, _n) : stdgo.Slice<stdgo.GoInt>), _i, _j, ...((_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>));
                                                if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _got, _want)) {
                                                    _t.errorf(("Insert with overlap failed n=%d i=%d j=%d x=%d y=%d, got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                                };
                                            });
                                        };
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function benchmarkReplace(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _cases = (new stdgo.Slice<T__struct_12>(2, 2, ...[({ _name : ("fast" : stdgo.GoString), _s : function():stdgo.Slice<stdgo.GoInt> {
            return (new stdgo.Slice<stdgo.GoInt>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        }, _v : function():stdgo.Slice<stdgo.GoInt> {
            return (new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        }, _i : (10 : stdgo.GoInt), _j : (40 : stdgo.GoInt) } : T__struct_12), ({ _name : ("slow" : stdgo.GoString), _s : function():stdgo.Slice<stdgo.GoInt> {
            return (new stdgo.Slice<stdgo.GoInt>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        }, _v : function():stdgo.Slice<stdgo.GoInt> {
            return (new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        }, _i : (0 : stdgo.GoInt), _j : (2 : stdgo.GoInt) } : T__struct_12)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _s : null, _v : null, _i : (0 : stdgo.GoInt), _j : (0 : stdgo.GoInt) } : T__struct_12)])) : stdgo.Slice<T__struct_12>);
        for (__0 => _c in _cases) {
            _b.run((("naive-" : stdgo.GoString) + _c._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < _b.n : Bool), _k++, {
                        var _s = _c._s();
                        var _v = _c._v();
                        var __blank__ = _naiveReplace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s, _c._i, _c._j, ...(_v : Array<stdgo.GoInt>));
                    });
                };
            });
            _b.run((("optimized-" : stdgo.GoString) + _c._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                {
                    var _k:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_k < _b.n : Bool), _k++, {
                        var _s = _c._s();
                        var _v = _c._v();
                        var __blank__ = replace((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s, _c._i, _c._j, ...(_v : Array<stdgo.GoInt>));
                    });
                };
            });
        };
    }
function testRotate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _s = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (10 : stdgo.GoInt) : Bool), _n++, {
                {
                    var _r:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_r < _n : Bool), _r++, {
                        _s = (_s.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                        {
                            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                _s = (_s.__append__(_i));
                            });
                        };
                        _rotateLeft((0 : stdgo.GoInt), _s, _r);
                        {
                            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                if (_s[(_i : stdgo.GoInt)] != ((((_i + _r : stdgo.GoInt)) % _n : stdgo.GoInt))) {
                                    _t.errorf(("expected n=%d r=%d i:%d want:%d got:%d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((((_i + _r : stdgo.GoInt)) % _n : stdgo.GoInt)), stdgo.Go.toInterface(_s[(_i : stdgo.GoInt)]));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function testInsertGrowthRate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _maxCap:stdgo.GoInt = _b.capacity;
        var _nGrow:stdgo.GoInt = (0 : stdgo.GoInt);
        {};
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000000 : stdgo.GoInt) : Bool), _i++, {
                _b = insert((null : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8), _b, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt), (0 : stdgo.GoUInt8));
                if ((_b.capacity > _maxCap : Bool)) {
                    _maxCap = _b.capacity;
                    _nGrow++;
                };
            });
        };
        var _want:stdgo.GoInt = ((stdgo._internal.math.Math.log((1e+06 : stdgo.GoFloat64)) / stdgo._internal.math.Math.log((1.25 : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt);
        if ((_nGrow > _want : Bool)) {
            _t.errorf(("too many grows. got:%d want:%d" : stdgo.GoString), stdgo.Go.toInterface(_nGrow), stdgo.Go.toInterface(_want));
        };
    }
function testReplaceGrowthRate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _maxCap:stdgo.GoInt = _b.capacity;
        var _nGrow:stdgo.GoInt = (0 : stdgo.GoInt);
        {};
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000000 : stdgo.GoInt) : Bool), _i++, {
                _b = replace((null : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8), _b, ((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt), ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
                if ((_b.capacity > _maxCap : Bool)) {
                    _maxCap = _b.capacity;
                    _nGrow++;
                };
            });
        };
        var _want:stdgo.GoInt = ((stdgo._internal.math.Math.log((1e+06 : stdgo.GoFloat64)) / stdgo._internal.math.Math.log((1.25 : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt);
        if ((_nGrow > _want : Bool)) {
            _t.errorf(("too many grows. got:%d want:%d" : stdgo.GoString), stdgo.Go.toInterface(_nGrow), stdgo.Go.toInterface(_want));
        };
    }
macro function _apply<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<$T_ -> Void>):haxe.macro.Expr.ExprOf<Void>;
@:named typedef T_testInference___localname___S_22782 = stdgo.Slice<stdgo.GoInt>;
function testInference(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s1 = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _apply((null : stdgo.Slice<stdgo.GoInt>), _s1, reverse);
        {
            var _want = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            if (!equal((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _s1, _want)) {
                _t.errorf(("Reverse(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface(_s1), stdgo.Go.toInterface(_want));
            };
        };
        {};
        var _s2:stdgo._internal.slices.Slices.S = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.slices.Slices.S);
        _apply(new stdgo._internal.slices.Slices.S(0, 0), _s2, reverse);
        {
            var _want:stdgo._internal.slices.Slices.S = ((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(6 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.slices.Slices.S));
            if (!equal(new stdgo._internal.slices.Slices.S(0, 0), (0 : stdgo.GoInt), _s2, _want)) {
                _t.errorf(("Reverse(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.slices.Slices.S)), stdgo.Go.toInterface(_s2), stdgo.Go.toInterface(_want));
            };
        };
    }
macro function sort<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Void>;
macro function sortFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function sortStableFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function isSorted<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<Bool>;
macro function isSortedFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool>;
macro function min<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<E>;
macro function minFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<E>;
macro function max<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):haxe.macro.Expr.ExprOf<E>;
macro function maxFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<E>;
macro function binarySearch<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _target:haxe.macro.Expr.ExprOf<E>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }>;
macro function binarySearchFunc<S, E, T_>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, __generic__2:haxe.macro.Expr.ExprOf<T_>, _x:haxe.macro.Expr.ExprOf<S>, _target:haxe.macro.Expr.ExprOf<T_>, _cmp:haxe.macro.Expr.ExprOf<($E, $T_) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }>;
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt {
        return ((1u32 : stdgo.GoUInt) << stdgo._internal.math.bits.Bits.len((_length : stdgo.GoUInt)) : stdgo.GoUInt);
    }
macro function _isNaN<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _x:haxe.macro.Expr.ExprOf<T_>):haxe.macro.Expr.ExprOf<Bool>;
function _makeRandomInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        stdgo._internal.math.rand.Rand.seed((42i64 : stdgo.GoInt64));
        var _ints = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _ints[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand.intn(_n);
            });
        };
        return _ints;
    }
function _makeSortedInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _ints = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _ints[(_i : stdgo.GoInt)] = _i;
            });
        };
        return _ints;
    }
function _makeReversedInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _ints = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _ints[(_i : stdgo.GoInt)] = (_n - _i : stdgo.GoInt);
            });
        };
        return _ints;
    }
function benchmarkSortInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ints = _makeRandomInts((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo._internal.sort.Sort.ints(_ints);
            });
        };
    }
function _makeSortedStrings(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _x = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _x[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv.itoa(_i)?.__copy__();
            });
        };
        sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _x);
        return _x;
    }
function benchmarkSlicesSortInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ints = _makeRandomInts((100000 : stdgo.GoInt));
                _b.startTimer();
                sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
            });
        };
    }
function benchmarkSlicesSortInts_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ints = _makeSortedInts((100000 : stdgo.GoInt));
                _b.startTimer();
                sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
            });
        };
    }
function benchmarkSlicesSortInts_Reversed(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ints = _makeReversedInts((100000 : stdgo.GoInt));
                _b.startTimer();
                sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
            });
        };
    }
function benchmarkIntsAreSorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ints = _makeSortedInts((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo._internal.sort.Sort.intsAreSorted(_ints);
            });
        };
    }
function benchmarkIsSorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ints = _makeSortedInts((100000 : stdgo.GoInt));
                _b.startTimer();
                isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
            });
        };
    }
function testIntSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _ints = _makeRandomInts((200 : stdgo.GoInt));
        var _ints2 = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints);
        stdgo._internal.sort.Sort.ints(_ints);
        sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _ints2);
        for (_i => _ in _ints) {
            if (_ints[(_i : stdgo.GoInt)] != (_ints2[(_i : stdgo.GoInt)])) {
                _t.fatalf(("ints2 mismatch at %d; %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ints[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ints2[(_i : stdgo.GoInt)]));
            };
        };
    }
function _makeRandomStrings(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        stdgo._internal.math.rand.Rand.seed((42i64 : stdgo.GoInt64));
        var _letters:stdgo.Slice<stdgo.GoInt32> = (("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString) : stdgo.Slice<stdgo.GoRune>);
        var _ss = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _sb:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
                var _slen:stdgo.GoInt = ((2 : stdgo.GoInt) + stdgo._internal.math.rand.Rand.intn((50 : stdgo.GoInt)) : stdgo.GoInt);
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < _slen : Bool), _j++, {
                        _sb.writeRune(_letters[(stdgo._internal.math.rand.Rand.intn((_letters.length)) : stdgo.GoInt)]);
                    });
                };
                _ss[(_i : stdgo.GoInt)] = (_sb.string() : stdgo.GoString)?.__copy__();
            });
        };
        return _ss;
    }
function testStringSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _ss = _makeRandomStrings((200 : stdgo.GoInt));
        var _ss2 = clone((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _ss);
        stdgo._internal.sort.Sort.strings(_ss);
        sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _ss2);
        for (_i => _ in _ss) {
            if (_ss[(_i : stdgo.GoInt)] != (_ss2[(_i : stdgo.GoInt)])) {
                _t.fatalf(("ss2 mismatch at %d; %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ss[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ss2[(_i : stdgo.GoInt)]));
            };
        };
    }
function benchmarkSortStrings(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ss = _makeRandomStrings((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo._internal.sort.Sort.strings(_ss);
            });
        };
    }
function benchmarkSortStrings_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _ss = _makeSortedStrings((100000 : stdgo.GoInt));
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.sort.Sort.strings(_ss);
            });
        };
    }
function benchmarkSlicesSortStrings(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ss = _makeRandomStrings((100000 : stdgo.GoInt));
                _b.startTimer();
                sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _ss);
            });
        };
    }
function benchmarkSlicesSortStrings_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _ss = _makeSortedStrings((100000 : stdgo.GoInt));
        _b.resetTimer();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _ss);
            });
        };
    }
function _makeRandomStructs(_n:stdgo.GoInt):T_myStructs {
        stdgo._internal.math.rand.Rand.seed((42i64 : stdgo.GoInt64));
        var _structs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _structs[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : stdgo._internal.math.rand.Rand.intn(_n) } : stdgo._internal.slices.Slices.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>);
            });
        };
        return _structs;
    }
function testStructSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _ss:stdgo._internal.slices.Slices.T_myStructs = _makeRandomStructs((200 : stdgo.GoInt));
        var _ss2 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>>((_ss.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>>);
        for (_i => _ in _ss) {
            _ss2[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : _ss[(_i : stdgo.GoInt)]._n } : stdgo._internal.slices.Slices.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>);
        };
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_ss));
        sortFunc((null : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>>), (null : stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>), _ss2, function(_a:stdgo.Ref<T_myStruct>, _b:stdgo.Ref<T_myStruct>):stdgo.GoInt {
            return (_a._n - _b._n : stdgo.GoInt);
        });
        for (_i => _ in _ss) {
            if (stdgo.Go.toInterface((_ss[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices.T_myStruct)) != stdgo.Go.toInterface((_ss2[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices.T_myStruct))) {
                _t.fatalf(("ints2 mismatch at %d; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_ss[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices.T_myStruct)), stdgo.Go.toInterface((_ss2[(_i : stdgo.GoInt)] : stdgo._internal.slices.Slices.T_myStruct)));
            };
        };
    }
function benchmarkSortStructs(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ss:stdgo._internal.slices.Slices.T_myStructs = _makeRandomStructs((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_ss));
            });
        };
    }
function benchmarkSortFuncStructs(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _cmpFunc = function(_a:stdgo.Ref<T_myStruct>, _b:stdgo.Ref<T_myStruct>):stdgo.GoInt {
            return (_a._n - _b._n : stdgo.GoInt);
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ss:stdgo._internal.slices.Slices.T_myStructs = _makeRandomStructs((100000 : stdgo.GoInt));
                _b.startTimer();
                sortFunc(new stdgo._internal.slices.Slices.T_myStructs(0, 0), (null : stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>), _ss, _cmpFunc);
            });
        };
    }
function benchmarkBinarySearchFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt), (128 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("Size%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                var _floats = (new stdgo.Slice<stdgo.GoFloat64>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
                for (_i => _ in _floats) {
                    _floats[(_i : stdgo.GoInt)] = (_i : stdgo.GoFloat64);
                };
                var _midpoint:stdgo.GoInt = ((_floats.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
                var _needle:stdgo.GoFloat64 = (((_floats[(_midpoint : stdgo.GoInt)] + _floats[(_midpoint + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64)) / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _b.resetTimer();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        binarySearch((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _floats, _needle);
                    });
                };
            });
        };
    }
function benchmarkBinarySearchFuncStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt), (128 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("Size%d" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                var _structs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>>((_size : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>>);
                for (_i => _ in _structs) {
                    _structs[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _n : _i } : stdgo._internal.slices.Slices.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>);
                };
                var _midpoint:stdgo.GoInt = ((_structs.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
                var _needle = (stdgo.Go.setRef(({ _n : (((_structs[(_midpoint : stdgo.GoInt)]._n + _structs[(_midpoint + (1 : stdgo.GoInt) : stdgo.GoInt)]._n : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) } : stdgo._internal.slices.Slices.T_myStruct)) : stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>);
                var _lessFunc = function(_a:stdgo.Ref<T_myStruct>, _b:stdgo.Ref<T_myStruct>):stdgo.GoInt {
                    return (_a._n - _b._n : stdgo.GoInt);
                };
                _b.resetTimer();
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        binarySearchFunc((null : stdgo.Slice<stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>>), (null : stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>), (null : stdgo.Ref<stdgo._internal.slices.Slices.T_myStruct>), _structs, _needle, _lessFunc);
                    });
                };
            });
        };
    }
function testSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_ints.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data);
        if (!isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_ints));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortFuncIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = clone((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (_ints.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        sortFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data, function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return (_a - _b : stdgo.GoInt);
        });
        if (!isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_ints));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortFloat64Slice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = clone((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (_float64s.__slice__(0) : stdgo.Slice<stdgo.GoFloat64>));
        sort((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data);
        if (!isSorted((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_float64s));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortFloat64SliceWithNaNs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = (_float64sWithNaNs.__slice__(0) : stdgo.Slice<stdgo.GoFloat64>);
        var _data2 = clone((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data);
        sort((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data);
        stdgo._internal.sort.Sort.float64s(_data2);
        if (!isSorted((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data)) {
            _t.error(stdgo.Go.toInterface(("IsSorted indicates data isn\'t sorted" : stdgo.GoString)));
        };
        if (!equalFunc((null : stdgo.Slice<stdgo.GoFloat64>), (null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), _data, _data2, function(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
            return stdgo._internal.cmp.Cmp.compare((0 : stdgo.GoFloat64), _a, _b) == ((0 : stdgo.GoInt));
        })) {
            _t.errorf(("mismatch between Sort and sort.Float64: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_data2));
        };
    }
function testSortStringSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = clone((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), (_strs.__slice__(0) : stdgo.Slice<stdgo.GoString>));
        sort((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _data);
        if (!isSorted((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_strs));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
function testSortLarge_Random(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _n:stdgo.GoInt = (1000000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            _n = (_n / ((100 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _data = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                _data[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand.intn((100 : stdgo.GoInt));
            });
        };
        if (isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data)) {
            _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        sort((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data);
        if (!isSorted((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data)) {
            _t.errorf(("sort didn\'t sort - 1M ints" : stdgo.GoString));
        };
    }
function _intPairCmp(_x:T_intPair, _y:T_intPair):stdgo.GoInt {
        return (_x._a - _y._a : stdgo.GoInt);
    }
function testStability(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.GoInt = (100000 : stdgo.GoInt), __1:stdgo.GoInt = (1000 : stdgo.GoInt), _m:stdgo.GoInt = __1, _n:stdgo.GoInt = __0;
        if (stdgo._internal.testing.Testing.short()) {
            {
                final __tmp__0 = (1000 : stdgo.GoInt);
                final __tmp__1 = (100 : stdgo.GoInt);
                _n = __tmp__0;
                _m = __tmp__1;
            };
        };
        var _data:stdgo._internal.slices.Slices.T_intPairs = (new stdgo.Slice<stdgo._internal.slices.Slices.T_intPair>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.slices.Slices.T_intPair)]) : stdgo._internal.slices.Slices.T_intPairs);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                _data[(_i : stdgo.GoInt)]._a = stdgo._internal.math.rand.Rand.intn(_m);
            });
        };
        if (isSortedFunc(new stdgo._internal.slices.Slices.T_intPairs(0, 0), ({} : stdgo._internal.slices.Slices.T_intPair), _data, _intPairCmp)) {
            _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        _data._initB();
        sortStableFunc(new stdgo._internal.slices.Slices.T_intPairs(0, 0), ({} : stdgo._internal.slices.Slices.T_intPair), _data, _intPairCmp);
        if (!isSortedFunc(new stdgo._internal.slices.Slices.T_intPairs(0, 0), ({} : stdgo._internal.slices.Slices.T_intPair), _data, _intPairCmp)) {
            _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _data._initB();
        sortStableFunc(new stdgo._internal.slices.Slices.T_intPairs(0, 0), ({} : stdgo._internal.slices.Slices.T_intPair), _data, _intPairCmp);
        if (!isSortedFunc(new stdgo._internal.slices.Slices.T_intPairs(0, 0), ({} : stdgo._internal.slices.Slices.T_intPair), _data, _intPairCmp)) {
            _t.errorf(("Stable shuffled sorted %d ints (order)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(("Stable shuffled sorted %d ints (stability)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                _data[(_i : stdgo.GoInt)]._a = ((_data.length) - _i : stdgo.GoInt);
            });
        };
        _data._initB();
        sortStableFunc(new stdgo._internal.slices.Slices.T_intPairs(0, 0), ({} : stdgo._internal.slices.Slices.T_intPair), _data, _intPairCmp);
        if (!isSortedFunc(new stdgo._internal.slices.Slices.T_intPairs(0, 0), ({} : stdgo._internal.slices.Slices.T_intPair), _data, _intPairCmp)) {
            _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
function _cmpS(_s1:S, _s2:S):stdgo.GoInt {
        return stdgo._internal.cmp.Cmp.compare((0 : stdgo.GoInt), _s1._a, _s2._a);
    }
function testMinMax(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _intCmp:(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt = function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return (_a - _b : stdgo.GoInt);
        };
        var _tests = (new stdgo.Slice<T__struct_13>(9, 9, ...[({ _data : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (7 : stdgo.GoInt), _wantMax : (7 : stdgo.GoInt) } : T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (2 : stdgo.GoInt) } : T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (2 : stdgo.GoInt) } : T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (1 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (1 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(2 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (2 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(3 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (2 : stdgo.GoInt), _wantMax : (3 : stdgo.GoInt) } : T__struct_13), ({ _data : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (2 : stdgo.GoInt), (-9 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _wantMin : (-9 : stdgo.GoInt), _wantMax : (2 : stdgo.GoInt) } : T__struct_13)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _data : (null : stdgo.Slice<stdgo.GoInt>), _wantMin : (0 : stdgo.GoInt), _wantMax : (0 : stdgo.GoInt) } : T__struct_13)])) : stdgo.Slice<T__struct_13>);
        for (__0 => _tt in _tests) {
            _t.run(stdgo._internal.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_tt._data))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _gotMin:stdgo.GoInt = min((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _tt._data);
                if (_gotMin != (_tt._wantMin)) {
                    _t.errorf(("Min got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMin), stdgo.Go.toInterface(_tt._wantMin));
                };
                var _gotMinFunc:stdgo.GoInt = minFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _tt._data, _intCmp);
                if (_gotMinFunc != (_tt._wantMin)) {
                    _t.errorf(("MinFunc got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMinFunc), stdgo.Go.toInterface(_tt._wantMin));
                };
                var _gotMax:stdgo.GoInt = max((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _tt._data);
                if (_gotMax != (_tt._wantMax)) {
                    _t.errorf(("Max got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMax), stdgo.Go.toInterface(_tt._wantMax));
                };
                var _gotMaxFunc:stdgo.GoInt = maxFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _tt._data, _intCmp);
                if (_gotMaxFunc != (_tt._wantMax)) {
                    _t.errorf(("MaxFunc got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_gotMaxFunc), stdgo.Go.toInterface(_tt._wantMax));
                };
            });
        };
        var _svals = (new stdgo.Slice<stdgo._internal.slices.Slices.S>(4, 4, ...[(new stdgo._internal.slices.Slices.S((1 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo._internal.slices.Slices.S), (new stdgo._internal.slices.Slices.S((2 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo._internal.slices.Slices.S), (new stdgo._internal.slices.Slices.S((1 : stdgo.GoInt), ("b" : stdgo.GoString)) : stdgo._internal.slices.Slices.S), (new stdgo._internal.slices.Slices.S((2 : stdgo.GoInt), ("b" : stdgo.GoString)) : stdgo._internal.slices.Slices.S)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.slices.Slices.S)])) : stdgo.Slice<stdgo._internal.slices.Slices.S>);
        var _gotMin:stdgo._internal.slices.Slices.S = minFunc((null : stdgo.Slice<stdgo._internal.slices.Slices.S>), ({} : stdgo._internal.slices.Slices.S), _svals, _cmpS)?.__copy__();
        var _wantMin:stdgo._internal.slices.Slices.S = (new stdgo._internal.slices.Slices.S((1 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo._internal.slices.Slices.S);
        if (stdgo.Go.toInterface(_gotMin) != stdgo.Go.toInterface(_wantMin)) {
            _t.errorf(("MinFunc(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_svals), stdgo.Go.toInterface(_gotMin), stdgo.Go.toInterface(_wantMin));
        };
        var _gotMax:stdgo._internal.slices.Slices.S = maxFunc((null : stdgo.Slice<stdgo._internal.slices.Slices.S>), ({} : stdgo._internal.slices.Slices.S), _svals, _cmpS)?.__copy__();
        var _wantMax:stdgo._internal.slices.Slices.S = (new stdgo._internal.slices.Slices.S((2 : stdgo.GoInt), ("a" : stdgo.GoString)) : stdgo._internal.slices.Slices.S);
        if (stdgo.Go.toInterface(_gotMax) != stdgo.Go.toInterface(_wantMax)) {
            _t.errorf(("MaxFunc(%v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_svals), stdgo.Go.toInterface(_gotMax), stdgo.Go.toInterface(_wantMax));
        };
    }
function testMinMaxNaNs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _fs = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(1 : stdgo.GoFloat64), (999.9 : stdgo.GoFloat64), (3.14 : stdgo.GoFloat64), (-400.4 : stdgo.GoFloat64), (-5.14 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        if (min((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs) != (-400.4 : stdgo.GoFloat64)) {
            _t.errorf(("got min %v, want -400.4" : stdgo.GoString), stdgo.Go.toInterface(min((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs)));
        };
        if (max((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs) != (999.9 : stdgo.GoFloat64)) {
            _t.errorf(("got max %v, want 999.9" : stdgo.GoString), stdgo.Go.toInterface(max((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs)));
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_fs.length) : Bool), _i++, {
                var _testfs = clone((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _fs);
                _testfs[(_i : stdgo.GoInt)] = stdgo._internal.math.Math.naN();
                var _fmin:stdgo.GoFloat64 = min((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _testfs);
                if (!stdgo._internal.math.Math.isNaN(_fmin)) {
                    _t.errorf(("got min %v, want NaN" : stdgo.GoString), stdgo.Go.toInterface(_fmin));
                };
                var _fmax:stdgo.GoFloat64 = max((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _testfs);
                if (!stdgo._internal.math.Math.isNaN(_fmax)) {
                    _t.errorf(("got max %v, want NaN" : stdgo.GoString), stdgo.Go.toInterface(_fmax));
                };
            });
        };
    }
function testMinMaxPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _intCmp:(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt = function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return (_a - _b : stdgo.GoInt);
        };
        var _emptySlice = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (!_panics(function():Void {
            min((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _emptySlice);
        })) {
            _t.errorf(("Min([]): got no panic, want panic" : stdgo.GoString));
        };
        if (!_panics(function():Void {
            max((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _emptySlice);
        })) {
            _t.errorf(("Max([]): got no panic, want panic" : stdgo.GoString));
        };
        if (!_panics(function():Void {
            minFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _emptySlice, _intCmp);
        })) {
            _t.errorf(("MinFunc([]): got no panic, want panic" : stdgo.GoString));
        };
        if (!_panics(function():Void {
            maxFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _emptySlice, _intCmp);
        })) {
            _t.errorf(("MaxFunc([]): got no panic, want panic" : stdgo.GoString));
        };
    }
function testBinarySearch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _str1 = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("foo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _str2 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("ab" : stdgo.GoString), ("ca" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _str3 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("mo" : stdgo.GoString), ("qo" : stdgo.GoString), ("vo" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _str4 = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("ab" : stdgo.GoString), ("ad" : stdgo.GoString), ("ca" : stdgo.GoString), ("xy" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _strRepeats = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("ba" : stdgo.GoString), ("ca" : stdgo.GoString), ("da" : stdgo.GoString), ("da" : stdgo.GoString), ("da" : stdgo.GoString), ("ka" : stdgo.GoString), ("ma" : stdgo.GoString), ("ma" : stdgo.GoString), ("ta" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _strSame = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("xx" : stdgo.GoString), ("xx" : stdgo.GoString), ("xx" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _tests = (new stdgo.Slice<T__struct_14>(34, 34, ...[
({ _data : (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), _target : ("foo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), _target : stdgo.Go.str()?.__copy__(), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str1, _target : ("foo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str1, _target : ("bar" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str1, _target : ("zx" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str2, _target : ("aa" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str2, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str2, _target : ("ad" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str2, _target : ("ca" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str2, _target : ("ra" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str3, _target : ("bb" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str3, _target : ("mo" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str3, _target : ("nb" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str3, _target : ("qo" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str3, _target : ("tr" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str3, _target : ("vo" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str3, _target : ("xr" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("aa" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str4, _target : ("ac" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("ad" : stdgo.GoString), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str4, _target : ("ax" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("ca" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str4, _target : ("cc" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("dd" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _str4, _target : ("xy" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _str4, _target : ("zz" : stdgo.GoString), _wantPos : (4 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _strRepeats, _target : ("da" : stdgo.GoString), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _strRepeats, _target : ("db" : stdgo.GoString), _wantPos : (5 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _strRepeats, _target : ("ma" : stdgo.GoString), _wantPos : (6 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _strRepeats, _target : ("mb" : stdgo.GoString), _wantPos : (8 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _strSame, _target : ("xx" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_14),
({ _data : _strSame, _target : ("ab" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14),
({ _data : _strSame, _target : ("zz" : stdgo.GoString), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_14)].concat([for (i in 34 ... (34 > 34 ? 34 : 34 : stdgo.GoInt).toBasic()) ({ _data : (null : stdgo.Slice<stdgo.GoString>), _target : ("" : stdgo.GoString), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_14)])) : stdgo.Slice<T__struct_14>);
        for (__0 => _tt in _tests) {
            _t.run(_tt._target?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                {
                    var __tmp__ = binarySearch((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), _tt._data, _tt._target?.__copy__()), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                        _t.errorf(("BinarySearch got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
                {
                    var __tmp__ = binarySearchFunc((null : stdgo.Slice<stdgo.GoString>), ("" : stdgo.GoString), ("" : stdgo.GoString), _tt._data, _tt._target?.__copy__(), stdgo._internal.strings.Strings.compare), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                        _t.errorf(("BinarySearchFunc got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
            });
        };
    }
function testBinarySearchInts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt), (50 : stdgo.GoInt), (60 : stdgo.GoInt), (70 : stdgo.GoInt), (80 : stdgo.GoInt), (90 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tests = (new stdgo.Slice<T__struct_15>(4, 4, ...[({ _target : (20 : stdgo.GoInt), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_15), ({ _target : (23 : stdgo.GoInt), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_15), ({ _target : (43 : stdgo.GoInt), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : T__struct_15), ({ _target : (80 : stdgo.GoInt), _wantPos : (6 : stdgo.GoInt), _wantFound : true } : T__struct_15)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _target : (0 : stdgo.GoInt), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_15)])) : stdgo.Slice<T__struct_15>);
        for (__0 => _tt in _tests) {
            _t.run(stdgo._internal.strconv.Strconv.itoa(_tt._target)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                {
                    var __tmp__ = binarySearch((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), _data, _tt._target), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                        _t.errorf(("BinarySearch got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
                {
                    var _cmp:(stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt = function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
                        return (_a - _b : stdgo.GoInt);
                    };
                    var __tmp__ = binarySearchFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _data, _tt._target, _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                        _t.errorf(("BinarySearchFunc got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
            });
        };
    }
function testBinarySearchFloats(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[stdgo._internal.math.Math.naN(), (-0.25 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (1.4 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _tests = (new stdgo.Slice<T__struct_16>(6, 6, ...[({ _target : stdgo._internal.math.Math.naN(), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : T__struct_16), ({ _target : stdgo._internal.math.Math.inf((-1 : stdgo.GoInt)), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : T__struct_16), ({ _target : (-0.25 : stdgo.GoFloat64), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : T__struct_16), ({ _target : (0 : stdgo.GoFloat64), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : T__struct_16), ({ _target : (1.4 : stdgo.GoFloat64), _wantPos : (3 : stdgo.GoInt), _wantFound : true } : T__struct_16), ({ _target : (1.5 : stdgo.GoFloat64), _wantPos : (4 : stdgo.GoInt), _wantFound : false } : T__struct_16)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _target : (0 : stdgo.GoFloat64), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : T__struct_16)])) : stdgo.Slice<T__struct_16>);
        for (__0 => _tt in _tests) {
            _t.run(stdgo._internal.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_tt._target))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                {
                    var __tmp__ = binarySearch((null : stdgo.Slice<stdgo.GoFloat64>), (0 : stdgo.GoFloat64), _data, _tt._target), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                        _t.errorf(("BinarySearch got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
            });
        };
    }
function testBinarySearchFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (10 : stdgo.GoInt), (11 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _cmp:(stdgo.GoInt, stdgo.GoString) -> stdgo.GoInt = function(_a:stdgo.GoInt, _b:stdgo.GoString):stdgo.GoInt {
            return stdgo._internal.strings.Strings.compare(stdgo._internal.strconv.Strconv.itoa(_a)?.__copy__(), _b?.__copy__());
        };
        var __tmp__ = binarySearchFunc((null : stdgo.Slice<stdgo.GoInt>), (0 : stdgo.GoInt), ("" : stdgo.GoString), _data, ("2" : stdgo.GoString), _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
        if (((_pos != (3 : stdgo.GoInt)) || !_found : Bool)) {
            _t.errorf(("BinarySearchFunc(%v, %q, cmp) = %v, %v, want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(("2" : stdgo.GoString)), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface(true));
        };
    }
macro function _insertionSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _siftDownCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _lo:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _hi:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _first:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _heapSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _pdqsortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _limit:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _partitionCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }>;
macro function _partitionEqualCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function _partialInsertionSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool>;
macro function _breakPatternsCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _choosePivotCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; }>;
macro function _order2CmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; }>;
macro function _medianCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _c:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function _medianAdjacentCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function _reverseRangeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _swapRangeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _stableCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _symMergeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _rotateCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _insertionSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _siftDownOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _lo:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _hi:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _first:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _heapSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _pdqsortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _limit:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _partitionOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : Bool; }>;
macro function _partitionEqualOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function _partialInsertionSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Bool>;
macro function _breakPatternsOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _choosePivotOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; }>;
macro function _order2Ordered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):haxe.macro.Expr.ExprOf<{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; }>;
macro function _medianOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _c:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function _medianAdjacentOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):haxe.macro.Expr.ExprOf<stdgo.GoInt>;
macro function _reverseRangeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _swapRangeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _stableOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _symMergeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
macro function _rotateOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):haxe.macro.Expr.ExprOf<Void>;
class T_xorshift_asInterface {
    @:keep
    @:pointer
    public dynamic function next():stdgo.GoUInt64 return __self__.value.next(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_xorshift>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T_xorshift_asInterface) class T_xorshift_static_extension {
    @:keep
    @:pointer
    static public function next(____:T_xorshift,  _r:stdgo.Pointer<T_xorshift>):stdgo.GoUInt64 {
        _r.value = (_r.value ^ ((_r.value << (13i64 : stdgo.GoUInt64) : stdgo._internal.slices.Slices.T_xorshift)) : stdgo._internal.slices.Slices.T_xorshift);
        _r.value = (_r.value ^ ((_r.value >> (17i64 : stdgo.GoUInt64) : stdgo._internal.slices.Slices.T_xorshift)) : stdgo._internal.slices.Slices.T_xorshift);
        _r.value = (_r.value ^ ((_r.value << (5i64 : stdgo.GoUInt64) : stdgo._internal.slices.Slices.T_xorshift)) : stdgo._internal.slices.Slices.T_xorshift);
        return (_r.value : stdgo.GoUInt64);
    }
}
class T_myStructs_asInterface {
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_myStructs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T_myStructs_asInterface) class T_myStructs_static_extension {
    @:keep
    static public function swap( _s:T_myStructs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:T_myStructs = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            final __tmp__2 = _s;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _s:T_myStructs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:T_myStructs = _s;
        return (_s[(_i : stdgo.GoInt)]._n < _s[(_j : stdgo.GoInt)]._n : Bool);
    }
    @:keep
    static public function len( _s:T_myStructs):stdgo.GoInt {
        @:recv var _s:T_myStructs = _s;
        return (_s.length);
    }
}
class T_intPairs_asInterface {
    @:keep
    public dynamic function _inOrder():Bool return __self__.value._inOrder();
    @:keep
    public dynamic function _initB():Void __self__.value._initB();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intPairs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.slices.Slices.T_intPairs_asInterface) class T_intPairs_static_extension {
    @:keep
    static public function _inOrder( _d:T_intPairs):Bool {
        @:recv var _d:T_intPairs = _d;
        var __0:stdgo.GoInt = (-1 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _lastB:stdgo.GoInt = __1, _lastA:stdgo.GoInt = __0;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_d.length) : Bool), _i++, {
                if (_lastA != (_d[(_i : stdgo.GoInt)]._a)) {
                    _lastA = _d[(_i : stdgo.GoInt)]._a;
                    _lastB = _d[(_i : stdgo.GoInt)]._b;
                    continue;
                };
                if ((_d[(_i : stdgo.GoInt)]._b <= _lastB : Bool)) {
                    return false;
                };
                _lastB = _d[(_i : stdgo.GoInt)]._b;
            });
        };
        return true;
    }
    @:keep
    static public function _initB( _d:T_intPairs):Void {
        @:recv var _d:T_intPairs = _d;
        for (_i => _ in _d) {
            _d[(_i : stdgo.GoInt)]._b = _i;
        };
    }
}
