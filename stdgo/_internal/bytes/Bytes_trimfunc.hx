package stdgo._internal.bytes;
function trimFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.bytes.Bytes_trimrightfunc.trimRightFunc(stdgo._internal.bytes.Bytes_trimleftfunc.trimLeftFunc(_s, _f), _f);
    }
