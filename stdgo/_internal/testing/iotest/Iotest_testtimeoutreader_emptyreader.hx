package stdgo._internal.testing.iotest;
function testTimeOutReader_emptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _tor = (stdgo._internal.testing.iotest.Iotest_timeoutreader.timeoutReader(stdgo.Go.asInterface(_r)) : stdgo._internal.io.Io_reader.Reader);
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L158"
        {
            var __tmp__ = _tor.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L159"
                _t.errorf(("Empty buffer read returned n=%d err=%v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = _tor.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L163"
        {
            var __0 = (_err : stdgo.Error), __1 = (stdgo._internal.testing.iotest.Iotest_errtimeout.errTimeout : stdgo.Error);
var _w = __1, _g = __0;
            if (stdgo.Go.toInterface(_g) != (stdgo.Go.toInterface(_w))) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L164"
                _t.errorf(("Error mismatch\n\tGot:  %v\n\tWant: %v" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L166"
        {
            var __0 = (_n : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L167"
                _t.errorf(("Unexpectedly read %d bytes, wanted %d" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        var _tor2 = (stdgo._internal.testing.iotest.Iotest_timeoutreader.timeoutReader(stdgo.Go.asInterface(_r)) : stdgo._internal.io.Io_reader.Reader);
        _b = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L172"
        {
            var __tmp__ = _tor2.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) || (_n != (0 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L173"
                _t.errorf(("Empty buffer read returned n=%d err=%v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _tor2.read(_b);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L177"
        {
            var __0 = (_err : stdgo.Error), __1 = (stdgo._internal.testing.iotest.Iotest_errtimeout.errTimeout : stdgo.Error);
var _w = __1, _g = __0;
            if (stdgo.Go.toInterface(_g) != (stdgo.Go.toInterface(_w))) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L178"
                _t.errorf(("Error mismatch\n\tGot:  %v\n\tWant: %v" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L180"
        {
            var __0 = (_n : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader_test.go#L181"
                _t.errorf(("Unexpectedly read %d bytes, wanted %d" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
