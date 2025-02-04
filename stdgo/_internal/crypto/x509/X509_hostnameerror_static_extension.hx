package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.HostnameError_asInterface) class HostnameError_static_extension {
    @:keep
    @:tdfield
    static public function error( _h:stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError):stdgo.GoString {
        @:recv var _h:stdgo._internal.crypto.x509.X509_hostnameerror.HostnameError = _h?.__copy__();
        var _c = _h.certificate;
        if ((!@:check2r _c._hasSANExtension() && stdgo._internal.crypto.x509.X509__matchhostnames._matchHostnames((@:checkr _c ?? throw "null pointer dereference").subject.commonName?.__copy__(), _h.host?.__copy__()) : Bool)) {
            return ("x509: certificate relies on legacy Common Name field, use SANs instead" : stdgo.GoString);
        };
        var _valid:stdgo.GoString = ("" : stdgo.GoString);
        {
            var _ip = (stdgo._internal.net.Net_parseip.parseIP(_h.host?.__copy__()) : stdgo._internal.net.Net_ip.IP);
            if (_ip != null) {
                if (((@:checkr _c ?? throw "null pointer dereference").iPAddresses.length) == ((0 : stdgo.GoInt))) {
                    return ((("x509: cannot validate certificate for " : stdgo.GoString) + _h.host?.__copy__() : stdgo.GoString) + (" because it doesn\'t contain any IP SANs" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
                for (__1 => _san in (@:checkr _c ?? throw "null pointer dereference").iPAddresses) {
                    if (((_valid.length) > (0 : stdgo.GoInt) : Bool)) {
                        _valid = (_valid + ((", " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    _valid = (_valid + ((_san.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
            } else {
                _valid = stdgo._internal.strings.Strings_join.join((@:checkr _c ?? throw "null pointer dereference").dNSNames, (", " : stdgo.GoString))?.__copy__();
            };
        };
        if ((_valid.length) == ((0 : stdgo.GoInt))) {
            return (("x509: certificate is not valid for any names, but wanted to match " : stdgo.GoString) + _h.host?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (((("x509: certificate is valid for " : stdgo.GoString) + _valid?.__copy__() : stdgo.GoString) + (", not " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _h.host?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
