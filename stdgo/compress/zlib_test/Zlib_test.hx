package stdgo.compress.zlib_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
function exampleNewWriter():Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _w = stdgo.compress.zlib.Zlib.newWriter(Go.asInterface((Go.setRef(_b) : Ref<stdgo.bytes.Bytes.Buffer>)));
        _w.write((("hello, world\n" : GoString) : Slice<GoByte>));
        _w.close();
        stdgo.fmt.Fmt.println(Go.toInterface(_b.bytes()));
    }
function exampleNewReader():Void {
        var _buff = (new Slice<GoUInt8>(
0,
0,
(120 : GoUInt8),
(156 : GoUInt8),
(202 : GoUInt8),
(72 : GoUInt8),
(205 : GoUInt8),
(201 : GoUInt8),
(201 : GoUInt8),
(215 : GoUInt8),
(81 : GoUInt8),
(40 : GoUInt8),
(207 : GoUInt8),
(47 : GoUInt8),
(202 : GoUInt8),
(73 : GoUInt8),
(225 : GoUInt8),
(2 : GoUInt8),
(4 : GoUInt8),
(0 : GoUInt8),
(0 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(33 : GoUInt8),
(231 : GoUInt8),
(4 : GoUInt8),
(147 : GoUInt8)) : Slice<GoUInt8>);
        var _b = stdgo.bytes.Bytes.newReader(_buff);
        var __tmp__ = stdgo.compress.zlib.Zlib.newReader(Go.asInterface(_b)), _r:stdgo.io.Io.ReadCloser = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        stdgo.io.Io.copy(Go.asInterface(stdgo.os.Os.stdout), _r);
        _r.close();
    }
