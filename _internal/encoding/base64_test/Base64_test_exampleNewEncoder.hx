package _internal.encoding.base64_test;
function exampleNewEncoder():Void {
        var _input = (stdgo.Go.str("foo", 0, "bar") : stdgo.Slice<stdgo.GoUInt8>);
        var _encoder = (stdgo._internal.encoding.base64.Base64_newEncoder.newEncoder(stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout)) : stdgo._internal.io.Io_WriteCloser.WriteCloser);
        _encoder.write(_input);
        _encoder.close();
    }
