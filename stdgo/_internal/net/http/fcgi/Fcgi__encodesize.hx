package stdgo._internal.net.http.fcgi;
function _encodeSize(_b:stdgo.Slice<stdgo.GoUInt8>, _size:stdgo.GoUInt32):stdgo.GoInt {
        if ((_size > (127u32 : stdgo.GoUInt32) : Bool)) {
            _size = (_size | ((-2147483648u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32(_b, _size);
            return (4 : stdgo.GoInt);
        };
        _b[(0 : stdgo.GoInt)] = (_size : stdgo.GoUInt8);
        return (1 : stdgo.GoInt);
    }
