package stdgo.compress.zlib_test;
import stdgo.compress.zlib.Zlib;
function exampleNewWriter():Void {
        var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _w = stdgo.compress.zlib.Zlib.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        _w.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        _w.close();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_b.bytes()));
    }
function exampleNewReader():Void {
        var _buff = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
25,
25,
(120 : stdgo.StdGoTypes.GoUInt8),
(156 : stdgo.StdGoTypes.GoUInt8),
(202 : stdgo.StdGoTypes.GoUInt8),
(72 : stdgo.StdGoTypes.GoUInt8),
(205 : stdgo.StdGoTypes.GoUInt8),
(201 : stdgo.StdGoTypes.GoUInt8),
(201 : stdgo.StdGoTypes.GoUInt8),
(215 : stdgo.StdGoTypes.GoUInt8),
(81 : stdgo.StdGoTypes.GoUInt8),
(40 : stdgo.StdGoTypes.GoUInt8),
(207 : stdgo.StdGoTypes.GoUInt8),
(47 : stdgo.StdGoTypes.GoUInt8),
(202 : stdgo.StdGoTypes.GoUInt8),
(73 : stdgo.StdGoTypes.GoUInt8),
(225 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8),
(4 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(33 : stdgo.StdGoTypes.GoUInt8),
(231 : stdgo.StdGoTypes.GoUInt8),
(4 : stdgo.StdGoTypes.GoUInt8),
(147 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _b = stdgo.bytes.Bytes.newReader(_buff);
        var __tmp__ = stdgo.compress.zlib.Zlib.newReader(stdgo.Go.asInterface(_b)), _r:stdgo.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo.io.Io.copy(stdgo.Go.asInterface(stdgo.os.Os.stdout), _r);
        _r.close();
    }
