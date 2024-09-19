package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function _testScanInts(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _scan:(stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>, stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) -> stdgo.Error):Void {
        var _r = (stdgo.Go.setRef(({} : _internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt)) : stdgo.Ref<_internal.fmt_test.Fmt_test_RecursiveInt.RecursiveInt>);
        var _ints = _internal.fmt_test.Fmt_test__makeInts._makeInts((800 : stdgo.GoInt));
        var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_ints);
        var _err = (_scan(_r, _buf) : stdgo.Error);
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("unexpected error" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _i = (1 : stdgo.GoInt);
        stdgo.Go.cfor(_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__), _r = _r._next, {
            if (_r._i != (_i)) {
                _t.fatalf(("bad scan: expected %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_r._i));
            };
            _i++;
        });
        if ((_i - (1 : stdgo.GoInt) : stdgo.GoInt) != ((800 : stdgo.GoInt))) {
            _t.fatalf(("bad scan count: expected %d got %d" : stdgo.GoString), stdgo.Go.toInterface((800 : stdgo.GoInt)), stdgo.Go.toInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt)));
        };
    }
