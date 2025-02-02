package stdgo._internal.strconv;
function _cloneString(_x:stdgo.GoString):stdgo.GoString {
        return ((_x : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
