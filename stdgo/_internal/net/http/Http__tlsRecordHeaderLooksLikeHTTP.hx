package stdgo._internal.net.http;
function _tlsRecordHeaderLooksLikeHTTP(_hdr:stdgo.GoArray<stdgo.GoUInt8>):Bool {
        {
            final __value__ = ((_hdr.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
            if (__value__ == (("GET /" : stdgo.GoString)) || __value__ == (("HEAD " : stdgo.GoString)) || __value__ == (("POST " : stdgo.GoString)) || __value__ == (("PUT /" : stdgo.GoString)) || __value__ == (("OPTIO" : stdgo.GoString))) {
                return true;
            };
        };
        return false;
    }
