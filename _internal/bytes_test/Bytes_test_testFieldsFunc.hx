package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testFieldsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test__fieldstests._fieldstests) {
            var _a = stdgo._internal.bytes.Bytes_fieldsFunc.fieldsFunc((_tt._s : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isSpace.isSpace);
            var _result = _internal.bytes_test.Bytes_test__sliceOfString._sliceOfString(_a);
            if (!_internal.bytes_test.Bytes_test__eq._eq(_result, _tt._a)) {
                _t.errorf(("FieldsFunc(%q, unicode.IsSpace) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
        };
        var _pred = (function(_c:stdgo.GoInt32):Bool {
            return _c == ((88 : stdgo.GoInt32));
        } : stdgo.GoInt32 -> Bool);
        var _fieldsFuncTests:stdgo.Slice<_internal.bytes_test.Bytes_test_FieldsTest.FieldsTest> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_FieldsTest.FieldsTest>(4, 4, ...[(new _internal.bytes_test.Bytes_test_FieldsTest.FieldsTest(stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.bytes_test.Bytes_test_FieldsTest.FieldsTest), (new _internal.bytes_test.Bytes_test_FieldsTest.FieldsTest(("XX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.bytes_test.Bytes_test_FieldsTest.FieldsTest), (new _internal.bytes_test.Bytes_test_FieldsTest.FieldsTest(("XXhiXXX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("hi" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.bytes_test.Bytes_test_FieldsTest.FieldsTest), (new _internal.bytes_test.Bytes_test_FieldsTest.FieldsTest(("aXXbXXXcX" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString), ("c" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.bytes_test.Bytes_test_FieldsTest.FieldsTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.bytes_test.Bytes_test_FieldsTest.FieldsTest)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_FieldsTest.FieldsTest>);
        for (__1 => _tt in _fieldsFuncTests) {
            var _b = (_tt._s : stdgo.Slice<stdgo.GoUInt8>);
            var _a = stdgo._internal.bytes.Bytes_fieldsFunc.fieldsFunc(_b, _pred);
            var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (__2 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)));
            };
            var _result = _internal.bytes_test.Bytes_test__sliceOfString._sliceOfString(_a);
            if (!_internal.bytes_test.Bytes_test__eq._eq(_result, _tt._a)) {
                _t.errorf(("FieldsFunc(%q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
            };
            if ((_b : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("slice changed to %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_tt._s));
            };
            if (((_tt._a.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var _want = ((_tt._a[((_tt._a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if ((_x : stdgo.GoString) != (_want)) {
                        _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
    }
