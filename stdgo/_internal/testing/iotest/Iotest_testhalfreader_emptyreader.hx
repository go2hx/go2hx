package stdgo._internal.testing.iotest;
function testHalfReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _hr = (stdgo._internal.testing.iotest.Iotest_halfreader.halfReader(stdgo.Go.asInterface(_r)) : stdgo._internal.io.Io_reader.Reader);
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L104"
        {
            var __tmp__ = _hr.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L105"
                _t.errorf(("Empty buffer read returned n=%d err=%v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        _b = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _hr.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L110"
        {
            var __0 = (_err : stdgo.Error), __1 = (stdgo._internal.io.Io_eof.eOF : stdgo.Error);
var _w = __1, _g = __0;
            if (stdgo.Go.toInterface(_g) != (stdgo.Go.toInterface(_w))) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L111"
                _t.errorf(("Error mismatch\n\tGot:  %v\n\tWant: %v" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L113"
        {
            var __0 = (_n : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L114"
                _t.errorf(("Unexpectedly read %d bytes, wanted %d" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
