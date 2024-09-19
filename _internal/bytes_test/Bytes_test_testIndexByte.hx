package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testIndexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test__indexTests._indexTests) {
            if ((_tt._b.length) != ((1 : stdgo.GoInt))) {
                continue;
            };
            var _a = (_tt._a : stdgo.Slice<stdgo.GoUInt8>);
            var _b = (_tt._b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _pos = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_a, _b) : stdgo.GoInt);
            if (_pos != (_tt._i)) {
                _t.errorf(("IndexByte(%q, \'%c\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_pos));
            };
            var _posp = (stdgo._internal.bytes.Bytes_indexBytePortable.indexBytePortable(_a, _b) : stdgo.GoInt);
            if (_posp != (_tt._i)) {
                _t.errorf(("indexBytePortable(%q, \'%c\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_posp));
            };
        };
    }
