package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReaderWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _input = _internal.bufio_test.Bufio_test__createTestInput._createTestInput((8192 : stdgo.GoInt));
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_input))) : _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader)));
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        {
            var __tmp__ = _r.writeTo(stdgo.Go.asInterface(_w)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (_input.length : stdgo.GoInt64)) : Bool)) {
                _t.fatalf(("r.WriteTo(w) = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
            };
        };
        for (_i => _val in _w.bytes()) {
            if (_val != (_input[(_i : stdgo.GoInt)])) {
                _t.errorf(("after write: out[%d] = %#x, want %#x" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_val), stdgo.Go.toInterface(_input[(_i : stdgo.GoInt)]));
            };
        };
    }
