package stdgo._internal.net.http.fcgi;
function _encodeSize(_b:stdgo.Slice<stdgo.GoUInt8>, _size:stdgo.GoUInt32):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L220"
        if ((_size > (127u32 : stdgo.GoUInt32) : Bool)) {
            _size = (_size | ((-2147483648u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L222"
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(_b, _size);
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L223"
            return (4 : stdgo.GoInt);
        };
        _b[(0 : stdgo.GoInt)] = (_size : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L226"
        return (1 : stdgo.GoInt);
    }
