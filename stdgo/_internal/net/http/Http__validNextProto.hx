package stdgo._internal.net.http;
function _validNextProto(_proto:stdgo.GoString):Bool {
        {
            final __value__ = _proto;
            if (__value__ == (stdgo.Go.str()) || __value__ == (("http/1.1" : stdgo.GoString)) || __value__ == (("http/1.0" : stdgo.GoString))) {
                return false;
            };
        };
        return true;
    }
