package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleBuffer_reader():Void {
        var _buf = stdgo._internal.bytes.Bytes_newBufferString.newBufferString(("R29waGVycyBydWxlIQ==" : stdgo.GoString));
        var _dec = (stdgo._internal.encoding.base64.Base64_newDecoder.newDecoder(stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, stdgo.Go.asInterface(_buf)) : stdgo._internal.io.Io_Reader.Reader);
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), _dec);
    }
