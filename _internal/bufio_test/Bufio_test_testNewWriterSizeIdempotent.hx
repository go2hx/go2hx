package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testNewWriterSizeIdempotent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _b = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (1000 : stdgo.GoInt));
        var _b1 = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_b), (1000 : stdgo.GoInt));
        if (_b1 != (_b)) {
            _t.error(stdgo.Go.toInterface(("NewWriterSize did not detect underlying Writer" : stdgo.GoString)));
        };
        var _b2 = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(_b), (2000 : stdgo.GoInt));
        if (_b2 == (_b)) {
            _t.error(stdgo.Go.toInterface(("NewWriterSize did not enlarge buffer" : stdgo.GoString)));
        };
    }
