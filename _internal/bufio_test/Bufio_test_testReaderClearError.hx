package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReaderClearError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = (stdgo.Go.setRef((new _internal.bufio_test.Bufio_test_T_errorThenGoodReader.T_errorThenGoodReader() : _internal.bufio_test.Bufio_test_T_errorThenGoodReader.T_errorThenGoodReader)) : stdgo.Ref<_internal.bufio_test.Bufio_test_T_errorThenGoodReader.T_errorThenGoodReader>);
        var _b = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_r));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _b.read((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("1st nil Read = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _b.read(_buf), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_internal.bufio_test.Bufio_test__errFake._errFake))) {
                _t.fatalf(("1st Read = %v; want errFake" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _b.read((null : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("2nd nil Read = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _b.read(_buf), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("3rd Read with buffer = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_r._nread != ((2 : stdgo.GoInt))) {
            _t.errorf(("num reads = %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_r._nread));
        };
    }
