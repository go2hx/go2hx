package stdgo._internal.strconv;
function _cloneString(_x:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strconv/atoi.go#L50"
        return ((_x : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
