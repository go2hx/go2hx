package _internal.compress.zlib_test;
import _internal.compress.zlib.Zlib;
function exampleNewWriter():Void {
        var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _w = _internal.compress.zlib.Zlib.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        _w.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
        _w.close();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_b.bytes()));
    }
function exampleNewReader():Void {
        var _buff = (new stdgo.Slice<stdgo.GoUInt8>(25, 25, ...[
(120 : stdgo.GoUInt8),
(156 : stdgo.GoUInt8),
(202 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(205 : stdgo.GoUInt8),
(201 : stdgo.GoUInt8),
(201 : stdgo.GoUInt8),
(215 : stdgo.GoUInt8),
(81 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(207 : stdgo.GoUInt8),
(47 : stdgo.GoUInt8),
(202 : stdgo.GoUInt8),
(73 : stdgo.GoUInt8),
(225 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(231 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(147 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = stdgo._internal.bytes.Bytes.newReader(_buff);
        var __tmp__ = _internal.compress.zlib.Zlib.newReader(stdgo.Go.asInterface(_b)), _r:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.io.Io.copy(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), _r);
        _r.close();
    }
