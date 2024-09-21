package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testLastIndexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testCases = (new stdgo.Slice<_internal.bytes_test.Bytes_test_BinOpTest.BinOpTest>(6, 6, ...[(new _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest(stdgo.Go.str()?.__copy__(), ("q" : stdgo.GoString), (-1 : stdgo.GoInt)) : _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest), (new _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest(("abcdef" : stdgo.GoString), ("q" : stdgo.GoString), (-1 : stdgo.GoInt)) : _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest), (new _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest(("abcdefabcdef" : stdgo.GoString), ("a" : stdgo.GoString), (("abcdef" : stdgo.GoString).length)) : _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest), (new _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest(("abcdefabcdef" : stdgo.GoString), ("f" : stdgo.GoString), (("abcdefabcde" : stdgo.GoString).length)) : _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest), (new _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest(("zabcdefabcdef" : stdgo.GoString), ("z" : stdgo.GoString), (0 : stdgo.GoInt)) : _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest), (new _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest(("a☺b☻c☹d" : stdgo.GoString), ("b" : stdgo.GoString), (("a☺" : stdgo.GoString).length)) : _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : _internal.bytes_test.Bytes_test_BinOpTest.BinOpTest)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_BinOpTest.BinOpTest>);
        for (__0 => _test in _testCases) {
            var _actual = (stdgo._internal.bytes.Bytes_lastIndexByte.lastIndexByte((_test._a : stdgo.Slice<stdgo.GoUInt8>), _test._b[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            if (_actual != (_test._i)) {
                _t.errorf(("LastIndexByte(%q,%c) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._a), stdgo.Go.toInterface(_test._b[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._i));
            };
        };
    }
