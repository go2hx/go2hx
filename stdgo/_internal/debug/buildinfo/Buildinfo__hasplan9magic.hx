package stdgo._internal.debug.buildinfo;
function _hasPlan9Magic(_magic:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L225"
        if (((_magic.length) >= (4 : stdgo.GoInt) : Bool)) {
            var _m = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_magic) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L227"
            {
                final __value__ = _m;
                if (__value__ == ((491u32 : stdgo.GoUInt32)) || __value__ == ((35479u32 : stdgo.GoUInt32)) || __value__ == ((1607u32 : stdgo.GoUInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L229"
                    return true;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/buildinfo/buildinfo.go#L232"
        return false;
    }
