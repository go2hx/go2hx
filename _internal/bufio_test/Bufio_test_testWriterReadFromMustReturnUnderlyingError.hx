package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterReadFromMustReturnUnderlyingError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _wr:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = stdgo._internal.bufio.Bufio_newWriter.newWriter(stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_writeErrorOnlyWriter.T_writeErrorOnlyWriter() : _internal.bufio_test.Bufio_test_T_writeErrorOnlyWriter.T_writeErrorOnlyWriter)));
        var _s = ("test1" : stdgo.GoString);
        var _wantBuffered = (_s.length : stdgo.GoInt);
        {
            var __tmp__ = _wr.writeString(_s?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = (_wr.flush() : stdgo.Error);
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected flush error, got nil" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _wr.readFrom(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("test2" : stdgo.GoString)))), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("expected error, got nil" : stdgo.GoString)));
            };
        };
        {
            var _buffered = (_wr.buffered() : stdgo.GoInt);
            if (_buffered != (_wantBuffered)) {
                _t.fatalf(("Buffered = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_buffered), stdgo.Go.toInterface(_wantBuffered));
            };
        };
    }
