package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleBuffer():Void {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _b.write((("Hello " : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("world!" : stdgo.GoString));
        _b.writeTo(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
    }
