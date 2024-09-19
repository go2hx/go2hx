package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _runIndexTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<_internal.bytes_test.Bytes_test_BinOpTest.BinOpTest>):Void {
        for (__0 => _test in _testCases) {
            var _a = (_test._a : stdgo.Slice<stdgo.GoUInt8>);
            var _b = (_test._b : stdgo.Slice<stdgo.GoUInt8>);
            var _actual = (_f(_a, _b) : stdgo.GoInt);
            if (_actual != (_test._i)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._i));
            };
        };
        var _allocTests:stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_1.T__struct_1> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_1.T__struct_1>(2, 2, ...[({ _a : (("000000000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _b : (("0000000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _i : (5 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_1.T__struct_1), ({ _a : (("000000000000000000000000000000000000000000000000000000000000000010000" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _b : (("00000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _i : (3 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_1.T__struct_1)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _a : (null : stdgo.Slice<stdgo.GoUInt8>), _b : (null : stdgo.Slice<stdgo.GoUInt8>), _i : (0 : stdgo.GoInt) } : _internal.bytes_test.Bytes_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_1.T__struct_1>);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            {
                var _i = (stdgo._internal.bytes.Bytes_index.index(_allocTests[(1 : stdgo.GoInt)]._a, _allocTests[(1 : stdgo.GoInt)]._b) : stdgo.GoInt);
                if (_i != (_allocTests[(1 : stdgo.GoInt)]._i)) {
                    _t.errorf(("Index([]byte(%q), []byte(%q)) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_allocTests[(1 : stdgo.GoInt)]._a), stdgo.Go.toInterface(_allocTests[(1 : stdgo.GoInt)]._b), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_allocTests[(1 : stdgo.GoInt)]._i));
                };
            };
            {
                var _i = (stdgo._internal.bytes.Bytes_lastIndex.lastIndex(_allocTests[(0 : stdgo.GoInt)]._a, _allocTests[(0 : stdgo.GoInt)]._b) : stdgo.GoInt);
                if (_i != (_allocTests[(0 : stdgo.GoInt)]._i)) {
                    _t.errorf(("LastIndex([]byte(%q), []byte(%q)) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_allocTests[(0 : stdgo.GoInt)]._a), stdgo.Go.toInterface(_allocTests[(0 : stdgo.GoInt)]._b), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_allocTests[(0 : stdgo.GoInt)]._i));
                };
            };
        }) : stdgo.GoFloat64);
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("expected no allocations, got %f" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
