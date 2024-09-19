package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test__fieldstests._fieldstests) {
            var _b = (_tt._s : stdgo.Slice<stdgo.GoUInt8>);
            var _a = stdgo._internal.bytes.Bytes_fields.fields(_b);
            var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)));
            };
            var _result = _internal.bytes_test.Bytes_test__sliceOfString._sliceOfString(_a);
            if (!_internal.bytes_test.Bytes_test__eq._eq(_result, _tt._a)) {
                _t.errorf(("Fields(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            if ((_b : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("slice changed to %s; want %s" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(_tt._s));
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
