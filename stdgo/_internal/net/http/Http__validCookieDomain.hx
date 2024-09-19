package stdgo._internal.net.http;
function _validCookieDomain(_v:stdgo.GoString):Bool {
        if (stdgo._internal.net.http.Http__isCookieDomainName._isCookieDomainName(_v?.__copy__())) {
            return true;
        };
        if (((stdgo._internal.net.Net_parseIP.parseIP(_v?.__copy__()) != null) && !stdgo._internal.strings.Strings_contains.contains(_v?.__copy__(), (":" : stdgo.GoString)) : Bool)) {
            return true;
        };
        return false;
    }
