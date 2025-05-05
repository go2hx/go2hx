package stdgo._internal.crypto.x509;
function _validHostname(_host:stdgo.GoString, _isPattern:Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L966"
        if (!_isPattern) {
            _host = stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_host?.__copy__(), ("." : stdgo.GoString))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L969"
        if ((_host.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L970"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L973"
        for (_i => _part in stdgo._internal.strings.Strings_split.split(_host?.__copy__(), ("." : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L974"
            if (_part == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L976"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L978"
            if (((_isPattern && _i == ((0 : stdgo.GoInt)) : Bool) && (_part == ("*" : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L982"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L984"
            for (_j => _c in _part) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L985"
                if ((((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L986"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L988"
                if ((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L989"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L991"
                if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L992"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L994"
                if (((_c == (45 : stdgo.GoInt32)) && (_j != (0 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L995"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L997"
                if (_c == ((95 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1000"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1002"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L1006"
        return true;
    }
