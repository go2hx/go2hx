package stdgo._internal.net.url;
function _unescape(_s:stdgo.GoString, _mode:stdgo._internal.net.url.Url_t_encoding.T_encoding):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt);
        var _hasPlus = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L204"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L205"
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((37 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L207"
                        _n++;
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L208"
                        if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_s.length) : Bool) || !stdgo._internal.net.url.Url__ishex._ishex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || !stdgo._internal.net.url.Url__ishex._ishex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                            _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L210"
                            if (((_s.length) > (3 : stdgo.GoInt) : Bool)) {
                                _s = (_s.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L213"
                            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((_s : stdgo._internal.net.url.Url_escapeerror.EscapeError)) };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L221"
                        if (((_mode == ((3 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) && (stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) < (8 : stdgo.GoUInt8) : Bool) : Bool) && ((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != ("%25" : stdgo.GoString)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L222"
                            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface(((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) : stdgo._internal.net.url.Url_escapeerror.EscapeError)) };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L224"
                        if (_mode == ((4 : stdgo._internal.net.url.Url_t_encoding.T_encoding))) {
                            var _v = ((stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L233"
                            if ((((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != (("%25" : stdgo.GoString)) && _v != ((32 : stdgo.GoUInt8)) : Bool) && stdgo._internal.net.url.Url__shouldescape._shouldEscape(_v, (3 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L234"
                                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface(((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) : stdgo._internal.net.url.Url_escapeerror.EscapeError)) };
                            };
                        };
                        _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                        _hasPlus = _mode == ((6 : stdgo._internal.net.url.Url_t_encoding.T_encoding));
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L240"
                        _i++;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L242"
                        if ((((((_mode == (3 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) || (_mode == (4 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) && (_s[(_i : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool) && stdgo._internal.net.url.Url__shouldescape._shouldEscape(_s[(_i : stdgo.GoInt)], _mode) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L243"
                            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface(((_s.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) : stdgo._internal.net.url.Url_invalidhosterror.InvalidHostError)) };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L245"
                        _i++;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L249"
        if (((_n == (0 : stdgo.GoInt)) && !_hasPlus : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L250"
            return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _t:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L254"
        _t.grow(((_s.length) - ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L255"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L256"
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((37 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L258"
                        _t.writeByte(((stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt8));
                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L261"
                        if (_mode == ((6 : stdgo._internal.net.url.Url_t_encoding.T_encoding))) {
                            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L262"
                            _t.writeByte((32 : stdgo.GoUInt8));
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L264"
                            _t.writeByte((43 : stdgo.GoUInt8));
                        };
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L267"
                        _t.writeByte(_s[(_i : stdgo.GoInt)]);
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L270"
        return { _0 : (_t.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
