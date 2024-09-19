package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _matchHostnames(_pattern:stdgo.GoString, _host:stdgo.GoString):Bool {
        _pattern = stdgo._internal.crypto.x509.X509__toLowerCaseASCII._toLowerCaseASCII(_pattern?.__copy__())?.__copy__();
        _host = stdgo._internal.crypto.x509.X509__toLowerCaseASCII._toLowerCaseASCII(stdgo._internal.strings.Strings_trimSuffix.trimSuffix(_host?.__copy__(), ("." : stdgo.GoString))?.__copy__())?.__copy__();
        if (((_pattern.length == (0 : stdgo.GoInt)) || (_host.length == (0 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        var _patternParts = stdgo._internal.strings.Strings_split.split(_pattern?.__copy__(), ("." : stdgo.GoString));
        var _hostParts = stdgo._internal.strings.Strings_split.split(_host?.__copy__(), ("." : stdgo.GoString));
        if ((_patternParts.length) != ((_hostParts.length))) {
            return false;
        };
        for (_i => _patternPart in _patternParts) {
            if (((_i == (0 : stdgo.GoInt)) && (_patternPart == ("*" : stdgo.GoString)) : Bool)) {
                continue;
            };
            if (_patternPart != (_hostParts[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
