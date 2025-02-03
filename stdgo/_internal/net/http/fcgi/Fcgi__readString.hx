package stdgo._internal.net.http.fcgi;
function _readString(_s:stdgo.Slice<stdgo.GoUInt8>, _size:stdgo.GoUInt32):stdgo.GoString {
        if ((_size > (_s.length : stdgo.GoUInt32) : Bool)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return ((_s.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
