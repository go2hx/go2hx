package stdgo._internal.net.http.fcgi;
function _readSize(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoInt; } {
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L197"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L198"
            return { _0 : (0u32 : stdgo.GoUInt32), _1 : (0 : stdgo.GoInt) };
        };
        var __0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt32), __1 = (1 : stdgo.GoInt);
var _n = __1, _size = __0;
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L201"
        if ((_size & (128u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L202"
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L203"
                return { _0 : (0u32 : stdgo.GoUInt32), _1 : (0 : stdgo.GoInt) };
            };
            _n = (4 : stdgo.GoInt);
            _size = stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_s);
            _size = (_size & ((((-2147483648u32 : stdgo.GoUInt32)) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L209"
        return { _0 : _size, _1 : _n };
    }
