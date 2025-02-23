package stdgo._internal.crypto.tls;
function _hostnameInSNI(_name:stdgo.GoString):stdgo.GoString {
        var _host = (_name?.__copy__() : stdgo.GoString);
        if (((((_host.length) > (0 : stdgo.GoInt) : Bool) && _host[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8)) : Bool) && (_host[((_host.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
            _host = (_host.__slice__((1 : stdgo.GoInt), ((_host.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        {
            var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_host?.__copy__(), ("%" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _host = (_host.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            };
        };
        if (stdgo._internal.net.Net_parseip.parseIP(_host?.__copy__()) != null) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        while ((((_name.length) > (0 : stdgo.GoInt) : Bool) && (_name[((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
            _name = (_name.__slice__(0, ((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _name?.__copy__();
    }
