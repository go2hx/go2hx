package stdgo._internal.time;
function _cloneString(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L838"
        return ((_s : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
