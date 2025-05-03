package stdgo._internal.net.url;
function _escape(_s:stdgo.GoString, _mode:stdgo._internal.net.url.Url_t_encoding.T_encoding):stdgo.GoString {
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _hexCount = __1, _spaceCount = __0;
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L287"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L289"
                if (stdgo._internal.net.url.Url__shouldescape._shouldEscape(_c, _mode)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L290"
                    if (((_c == (32 : stdgo.GoUInt8)) && (_mode == (6 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L291"
                        _spaceCount++;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L293"
                        _hexCount++;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L298"
        if (((_spaceCount == (0 : stdgo.GoInt)) && (_hexCount == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L299"
            return _s?.__copy__();
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
        var _t:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _required = ((_s.length) + ((2 : stdgo.GoInt) * _hexCount : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L306"
        if ((_required <= (_buf.length) : Bool)) {
            _t = (_buf.__slice__(0, _required) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _t = (new stdgo.Slice<stdgo.GoUInt8>((_required : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L312"
        if (_hexCount == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L313"
            _t.__copyTo__(_s);
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L314"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L315"
                    if (_s[(_i : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                        _t[(_i : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L319"
            return (_t : stdgo.GoString)?.__copy__();
        };
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L323"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L324"
                {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c == (32 : stdgo.GoUInt8)) && (_mode == (6 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
                        _t[(_j : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L327"
                        _j++;
                    } else if (stdgo._internal.net.url.Url__shouldescape._shouldEscape(_c, _mode)) {
                        _t[(_j : stdgo.GoInt)] = (37 : stdgo.GoUInt8);
                        _t[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
                        _t[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_c & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                        _j = (_j + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    } else {
                        _t[(_j : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
                        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L335"
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L338"
        return (_t : stdgo.GoString)?.__copy__();
    }
