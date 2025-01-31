package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function trimFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.bytes.Bytes_trimRightFunc.trimRightFunc(stdgo._internal.bytes.Bytes_trimLeftFunc.trimLeftFunc(_s, _f), _f);
    }
