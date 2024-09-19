package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterReadFromMustSetUnderlyingError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _wr:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_writerWithReadFromError.T_writerWithReadFromError() : _internal.bufio_test.Bufio_test_T_writerWithReadFromError.T_writerWithReadFromError)));
        {
            var __tmp__ = _wr.readFrom(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("test2" : stdgo.GoString)))), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("expected ReadFrom returns error, got nil" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _wr.write((("123" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("expected Write returns error, got nil" : stdgo.GoString)));
            };
        };
    }
