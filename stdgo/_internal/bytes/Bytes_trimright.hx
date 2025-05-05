package stdgo._internal.bytes;
function trimRight(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1027"
        if (((_s.length == (0 : stdgo.GoInt)) || (_cutset == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1028"
            return _s;
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1030"
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1031"
            return stdgo._internal.bytes.Bytes__trimrightbyte._trimRightByte(_s, _cutset[(0 : stdgo.GoInt)]);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1033"
        {
            var __tmp__ = stdgo._internal.bytes.Bytes__makeasciiset._makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1034"
                return stdgo._internal.bytes.Bytes__trimrightascii._trimRightASCII(_s, (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet>));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1036"
        return stdgo._internal.bytes.Bytes__trimrightunicode._trimRightUnicode(_s, _cutset?.__copy__());
    }
