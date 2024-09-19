package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testIndexFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in _internal.bytes_test.Bytes_test__indexFuncTests._indexFuncTests) {
            var _first = (stdgo._internal.bytes.Bytes_indexFunc.indexFunc((_tc._in : stdgo.Slice<stdgo.GoUInt8>), _tc._f._f) : stdgo.GoInt);
            if (_first != (_tc._first)) {
                _t.errorf(("IndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_first), stdgo.Go.toInterface(_tc._first));
            };
            var _last = (stdgo._internal.bytes.Bytes_lastIndexFunc.lastIndexFunc((_tc._in : stdgo.Slice<stdgo.GoUInt8>), _tc._f._f) : stdgo.GoInt);
            if (_last != (_tc._last)) {
                _t.errorf(("LastIndexFunc(%q, %s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._f._name), stdgo.Go.toInterface(_last), stdgo.Go.toInterface(_tc._last));
            };
        };
    }
