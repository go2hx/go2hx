package stdgo._internal.debug.buildinfo;
function _hasPlan9Magic(_magic:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if (((_magic.length) >= (4 : stdgo.GoInt) : Bool)) {
            var _m = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_magic) : stdgo.GoUInt32);
            {
                final __value__ = _m;
                if (__value__ == ((491u32 : stdgo.GoUInt32)) || __value__ == ((35479u32 : stdgo.GoUInt32)) || __value__ == ((1607u32 : stdgo.GoUInt32))) {
                    return true;
                };
            };
        };
        return false;
    }
