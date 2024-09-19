package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReadEmptyBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _l = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (16 : stdgo.GoInt));
        var __tmp__ = _l.readLine(), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _isPrefix:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _t.errorf(("expected EOF from ReadLine, got \'%s\' %t %s" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_isPrefix), stdgo.Go.toInterface(_err));
        };
    }
