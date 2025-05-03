package stdgo._internal.testing.iotest;
function testTruncateWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer_test.go#L25"
        for (__0 => _tt in stdgo._internal.testing.iotest.Iotest__truncatewritertests._truncateWriterTests) {
            var _buf = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
            var _tw = (stdgo._internal.testing.iotest.Iotest_truncatewriter.truncateWriter(stdgo.Go.asInterface(_buf), _tt._trunc) : stdgo._internal.io.Io_writer.Writer);
            var __tmp__ = _tw.write((_tt._in : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer_test.go#L29"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer_test.go#L30"
                _t.errorf(("Unexpected error %v for\n\t%+v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt)));
            };
            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer_test.go#L32"
            {
                var __0 = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (_tt._want?.__copy__() : stdgo.GoString);
var _w = __1, _g = __0;
                if (_g != (_w)) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer_test.go#L33"
                    _t.errorf(("got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer_test.go#L35"
            {
                var __0 = (_n : stdgo.GoInt), __1 = (_tt._n : stdgo.GoInt);
var _w = __1, _g = __0;
                if (_g != (_w)) {
                    //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer_test.go#L36"
                    _t.errorf(("read %d bytes, but expected to have read %d bytes for\n\t%+v" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt)));
                };
            };
        };
    }
