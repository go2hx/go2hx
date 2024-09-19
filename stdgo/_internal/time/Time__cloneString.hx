package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _cloneString(_s:stdgo.GoString):stdgo.GoString {
        return ((_s : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
