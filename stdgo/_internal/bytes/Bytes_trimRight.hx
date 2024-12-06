package stdgo._internal.bytes;
function trimRight(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        if (((_s.length == (0 : stdgo.GoInt)) || (_cutset == stdgo.Go.str()) : Bool)) {
            return _s;
        };
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            return stdgo._internal.bytes.Bytes__trimRightByte._trimRightByte(_s, _cutset[(0 : stdgo.GoInt)]);
        };
        {
            var __tmp__ = stdgo._internal.bytes.Bytes__makeASCIISet._makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.bytes.Bytes_T_asciiSet.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return stdgo._internal.bytes.Bytes__trimRightASCII._trimRightASCII(_s, (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.bytes.Bytes_T_asciiSet.T_asciiSet>));
            };
        };
        return stdgo._internal.bytes.Bytes__trimRightUnicode._trimRightUnicode(_s, _cutset?.__copy__());
    }
