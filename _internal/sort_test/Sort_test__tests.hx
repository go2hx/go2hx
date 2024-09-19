package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
var _tests : stdgo.Slice<_internal.sort_test.Sort_test_T__struct_1.T__struct_1> = (new stdgo.Slice<_internal.sort_test.Sort_test_T__struct_1.T__struct_1>(22, 22, ...[
({ _name : ("empty" : stdgo.GoString), _n : (0 : stdgo.GoInt), _f : null, _i : (0 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("1 1" : stdgo.GoString), _n : (1 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return (_i >= (1 : stdgo.GoInt) : Bool);
    }, _i : (1 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("1 true" : stdgo.GoString), _n : (1 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return true;
    }, _i : (0 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("1 false" : stdgo.GoString), _n : (1 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return false;
    }, _i : (1 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("1e9 991" : stdgo.GoString), _n : (1000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return (_i >= (991 : stdgo.GoInt) : Bool);
    }, _i : (991 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("1e9 true" : stdgo.GoString), _n : (1000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return true;
    }, _i : (0 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("1e9 false" : stdgo.GoString), _n : (1000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return false;
    }, _i : (1000000000 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data -20" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (-20 : stdgo.GoInt)), _i : (0 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data -10" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (-10 : stdgo.GoInt)), _i : (0 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data -9" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (-9 : stdgo.GoInt)), _i : (1 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data -6" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (-6 : stdgo.GoInt)), _i : (1 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data -5" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (-5 : stdgo.GoInt)), _i : (1 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data 3" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (3 : stdgo.GoInt)), _i : (5 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data 11" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (11 : stdgo.GoInt)), _i : (8 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data 99" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (99 : stdgo.GoInt)), _i : (9 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data 100" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (100 : stdgo.GoInt)), _i : (9 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data 101" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (101 : stdgo.GoInt)), _i : (12 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data 10000" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (10000 : stdgo.GoInt)), _i : (13 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("data 10001" : stdgo.GoString), _n : (_internal.sort_test.Sort_test__data._data.length), _f : _internal.sort_test.Sort_test__f._f(_internal.sort_test.Sort_test__data._data, (10001 : stdgo.GoInt)), _i : (14 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("descending a" : stdgo.GoString), _n : (7 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return ((new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(99 : stdgo.GoInt), (99 : stdgo.GoInt), (59 : stdgo.GoInt), (42 : stdgo.GoInt), (7 : stdgo.GoInt), (0 : stdgo.GoInt), (-1 : stdgo.GoInt), (-1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)[(_i : stdgo.GoInt)] <= (7 : stdgo.GoInt) : Bool);
    }, _i : (4 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("descending 7" : stdgo.GoString), _n : (1000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return (((1000000000 : stdgo.GoInt) - _i : stdgo.GoInt) <= (7 : stdgo.GoInt) : Bool);
    }, _i : (999999993 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1),
({ _name : ("overflow" : stdgo.GoString), _n : (2000000000 : stdgo.GoInt), _f : function(_i:stdgo.GoInt):Bool {
        return false;
    }, _i : (2000000000 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1)].concat([for (i in 22 ... (22 > 22 ? 22 : 22 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _n : (0 : stdgo.GoInt), _f : null, _i : (0 : stdgo.GoInt) } : _internal.sort_test.Sort_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.sort_test.Sort_test_T__struct_1.T__struct_1>);
