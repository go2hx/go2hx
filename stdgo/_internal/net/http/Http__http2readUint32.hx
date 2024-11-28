package stdgo._internal.net.http;
function _http2readUint32(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt32; var _2 : stdgo.Error; } {
        var _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _v = (0 : stdgo.GoUInt32), _err = (null : stdgo.Error);
        if (((_p.length) < (4 : stdgo.GoInt) : Bool)) {
            return { _0 : _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _v = (0u32 : stdgo.GoUInt32), _2 : _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF };
        };
        return { _0 : _remain = (_p.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : _v = stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_p.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _2 : _err = (null : stdgo.Error) };
    }
