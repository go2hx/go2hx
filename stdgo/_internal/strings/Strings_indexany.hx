package stdgo._internal.strings;
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L146"
        if (_chars == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L148"
            return (-1 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L150"
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _r = (_chars[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L153"
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                _r = (65533 : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L156"
            return stdgo._internal.strings.Strings_indexrune.indexRune(_s?.__copy__(), _r);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L158"
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L159"
            {
                var __tmp__ = stdgo._internal.strings.Strings__makeasciiset._makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.strings.Strings_t_asciiset.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L160"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (_s.length) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L161"
                            if (_as._contains(_s[(_i : stdgo.GoInt)])) {
                                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L162"
                                return _i;
                            };
                            _i++;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L165"
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L168"
        for (_i => _c in _s) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L169"
            if ((stdgo._internal.strings.Strings_indexrune.indexRune(_chars?.__copy__(), _c) >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L170"
                return _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L173"
        return (-1 : stdgo.GoInt);
    }
