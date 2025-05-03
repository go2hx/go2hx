package stdgo._internal.net.http.fcgi;
function _readString(_s:stdgo.Slice<stdgo.GoUInt8>, _size:stdgo.GoUInt32):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L213"
        if ((_size > (_s.length : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L214"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L216"
        return ((_s.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
