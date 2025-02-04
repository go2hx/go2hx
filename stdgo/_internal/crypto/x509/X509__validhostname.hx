package stdgo._internal.crypto.x509;
function _validHostname(_host:stdgo.GoString, _isPattern:Bool):Bool {
        if (!_isPattern) {
            _host = stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_host?.__copy__(), ("." : stdgo.GoString))?.__copy__();
        };
        if ((_host.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        for (_i => _part in stdgo._internal.strings.Strings_split.split(_host?.__copy__(), ("." : stdgo.GoString))) {
            if (_part == ((stdgo.Go.str() : stdgo.GoString))) {
                return false;
            };
            if (((_isPattern && _i == ((0 : stdgo.GoInt)) : Bool) && (_part == ("*" : stdgo.GoString)) : Bool)) {
                continue;
            };
            for (_j => _c in _part) {
                if ((((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                    continue;
                };
                if ((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                    continue;
                };
                if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                    continue;
                };
                if (((_c == (45 : stdgo.GoInt32)) && (_j != (0 : stdgo.GoInt)) : Bool)) {
                    continue;
                };
                if (_c == ((95 : stdgo.GoInt32))) {
                    continue;
                };
                return false;
            };
        };
        return true;
    }
