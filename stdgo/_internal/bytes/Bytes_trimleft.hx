package stdgo._internal.bytes;
function trimLeft(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L965"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L967"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L969"
        if (_cutset == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L970"
            return _s;
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L972"
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L973"
            return stdgo._internal.bytes.Bytes__trimleftbyte._trimLeftByte(_s, _cutset[(0 : stdgo.GoInt)]);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L975"
        {
            var __tmp__ = stdgo._internal.bytes.Bytes__makeasciiset._makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L976"
                return stdgo._internal.bytes.Bytes__trimleftascii._trimLeftASCII(_s, (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet>));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L978"
        return stdgo._internal.bytes.Bytes__trimleftunicode._trimLeftUnicode(_s, _cutset?.__copy__());
    }
