package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testSplit" + " skip function");
        return;
        for (__0 => _tt in _internal.bytes_test.Bytes_test__splittests._splittests) {
            var _a = stdgo._internal.bytes.Bytes_splitN.splitN((_tt._s : stdgo.Slice<stdgo.GoUInt8>), (_tt._sep : stdgo.Slice<stdgo.GoUInt8>), _tt._n);
            var _x:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (__1 => _v in _a) {
                _x = (_v.__append__((122 : stdgo.GoUInt8)));
            };
            var _result = _internal.bytes_test.Bytes_test__sliceOfString._sliceOfString(_a);
            if (!_internal.bytes_test.Bytes_test__eq._eq(_result, _tt._a)) {
                _t.errorf(("Split(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_tt._a));
                continue;
            };
            if (((_tt._n == (0 : stdgo.GoInt)) || (_a.length == (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            {
                var _want = ((_tt._a[((_tt._a.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if ((_x : stdgo.GoString) != (_want)) {
                    _t.errorf(("last appended result was %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_want));
                };
            };
            var _s = stdgo._internal.bytes.Bytes_join.join(_a, (_tt._sep : stdgo.Slice<stdgo.GoUInt8>));
            if ((_s : stdgo.GoString) != (_tt._s)) {
                _t.errorf(("Join(Split(%q, %q, %d), %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_s));
            };
            if ((_tt._n < (0 : stdgo.GoInt) : Bool)) {
                var _b = stdgo._internal.bytes.Bytes_split.split((_tt._s : stdgo.Slice<stdgo.GoUInt8>), (_tt._sep : stdgo.Slice<stdgo.GoUInt8>));
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
                    _t.errorf(("Split disagrees withSplitN(%q, %q, %d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a));
                };
            };
            if (((_a.length) > (0 : stdgo.GoInt) : Bool)) {
                var __0 = _a[(0 : stdgo.GoInt)], __1 = _s;
var _out = __1, _in = __0;
                if (((_in.capacity == _out.capacity) && (stdgo.Go.pointer((_in.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)]) == stdgo.Go.pointer((_out.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)[(0 : stdgo.GoInt)])) : Bool)) {
                    _t.errorf(("Join(%#v, %q) didn\'t copy" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._sep));
                };
            };
        };
    }
