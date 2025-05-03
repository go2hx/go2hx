package stdgo._internal.crypto.x509;
function _matchHostnames(_pattern:stdgo.GoString, _host:stdgo.GoString):Bool {
        _pattern = stdgo._internal.crypto.x509.X509__tolowercaseascii._toLowerCaseASCII(_pattern?.__copy__())?.__copy__();
        _host = stdgo._internal.crypto.x509.X509__tolowercaseascii._toLowerCaseASCII(stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_host?.__copy__(), ("." : stdgo.GoString))?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1020"
        if (((_pattern.length == (0 : stdgo.GoInt)) || (_host.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1021"
            return false;
        };
        var _patternParts = stdgo._internal.strings.Strings_split.split(_pattern?.__copy__(), ("." : stdgo.GoString));
        var _hostParts = stdgo._internal.strings.Strings_split.split(_host?.__copy__(), ("." : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1027"
        if ((_patternParts.length) != ((_hostParts.length))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1028"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1031"
        for (_i => _patternPart in _patternParts) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1032"
            if (((_i == (0 : stdgo.GoInt)) && (_patternPart == ("*" : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1033"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1035"
            if (_patternPart != (_hostParts[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1036"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1040"
        return true;
    }
