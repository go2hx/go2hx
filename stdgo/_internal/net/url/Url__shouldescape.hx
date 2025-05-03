package stdgo._internal.net.url;
function _shouldEscape(_c:stdgo.GoUInt8, _mode:stdgo._internal.net.url.Url_t_encoding.T_encoding):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L103"
        if ((((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L104"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L107"
        if (((_mode == (3 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) || (_mode == (4 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L117"
            {
                final __value__ = _c;
                if (__value__ == ((33 : stdgo.GoUInt8)) || __value__ == ((36 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((39 : stdgo.GoUInt8)) || __value__ == ((40 : stdgo.GoUInt8)) || __value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((44 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((61 : stdgo.GoUInt8)) || __value__ == ((58 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8)) || __value__ == ((60 : stdgo.GoUInt8)) || __value__ == ((62 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L119"
                    return false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L123"
        {
            final __value__ = _c;
            if (__value__ == ((45 : stdgo.GoUInt8)) || __value__ == ((95 : stdgo.GoUInt8)) || __value__ == ((46 : stdgo.GoUInt8)) || __value__ == ((126 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L125"
                return false;
            } else if (__value__ == ((36 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((44 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((58 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((61 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((64 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L130"
                {
                    final __value__ = _mode;
                    if (__value__ == ((1 : stdgo._internal.net.url.Url_t_encoding.T_encoding))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L136"
                        return _c == ((63 : stdgo.GoUInt8));
                    } else if (__value__ == ((2 : stdgo._internal.net.url.Url_t_encoding.T_encoding))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L141"
                        return (((_c == ((47 : stdgo.GoUInt8)) || _c == ((59 : stdgo.GoUInt8)) : Bool) || _c == ((44 : stdgo.GoUInt8)) : Bool) || (_c == (63 : stdgo.GoUInt8)) : Bool);
                    } else if (__value__ == ((5 : stdgo._internal.net.url.Url_t_encoding.T_encoding))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L148"
                        return (((_c == ((64 : stdgo.GoUInt8)) || _c == ((47 : stdgo.GoUInt8)) : Bool) || _c == ((63 : stdgo.GoUInt8)) : Bool) || (_c == (58 : stdgo.GoUInt8)) : Bool);
                    } else if (__value__ == ((6 : stdgo._internal.net.url.Url_t_encoding.T_encoding))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L152"
                        return true;
                    } else if (__value__ == ((7 : stdgo._internal.net.url.Url_t_encoding.T_encoding))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L157"
                        return false;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L161"
        if (_mode == ((7 : stdgo._internal.net.url.Url_t_encoding.T_encoding))) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L168"
            {
                final __value__ = _c;
                if (__value__ == ((33 : stdgo.GoUInt8)) || __value__ == ((40 : stdgo.GoUInt8)) || __value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((42 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L170"
                    return false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L175"
        return true;
    }
