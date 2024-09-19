package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var __0 = (stdgo._internal.bufio.Bufio_newWriter.newWriter((null : stdgo._internal.io.Io_Writer.Writer)).size() : stdgo.GoInt), __1 = (4096 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("NewWriter\'s Writer.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = (stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize((null : stdgo._internal.io.Io_Writer.Writer), (1234 : stdgo.GoInt)).size() : stdgo.GoInt), __1 = (1234 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("NewWriterSize\'s Writer.Size = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }