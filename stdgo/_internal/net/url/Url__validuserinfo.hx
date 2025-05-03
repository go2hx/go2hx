package stdgo._internal.net.url;
function _validUserinfo(_s:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1224"
        for (__0 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1225"
            if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1226"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1228"
            if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1229"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1231"
            if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1232"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1234"
            {
                final __value__ = _r;
                if (__value__ == ((45 : stdgo.GoInt32)) || __value__ == ((46 : stdgo.GoInt32)) || __value__ == ((95 : stdgo.GoInt32)) || __value__ == ((58 : stdgo.GoInt32)) || __value__ == ((126 : stdgo.GoInt32)) || __value__ == ((33 : stdgo.GoInt32)) || __value__ == ((36 : stdgo.GoInt32)) || __value__ == ((38 : stdgo.GoInt32)) || __value__ == ((39 : stdgo.GoInt32)) || __value__ == ((40 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32)) || __value__ == ((42 : stdgo.GoInt32)) || __value__ == ((43 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32)) || __value__ == ((59 : stdgo.GoInt32)) || __value__ == ((61 : stdgo.GoInt32)) || __value__ == ((37 : stdgo.GoInt32)) || __value__ == ((64 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1237"
                    continue;
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1239"
                    return false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L1242"
        return true;
    }
