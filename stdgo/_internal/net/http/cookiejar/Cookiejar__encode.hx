package stdgo._internal.net.http.cookiejar;
function _encode(_prefix:stdgo.GoString, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _output = (new stdgo.Slice<stdgo.GoUInt8>((_prefix.length : stdgo.GoInt).toBasic(), (((_prefix.length) + (1 : stdgo.GoInt) : stdgo.GoInt) + ((2 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L37"
        _output.__copyTo__(_prefix);
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (128 : stdgo.GoInt32), __2 = (72 : stdgo.GoInt32);
var _bias = __2, _n = __1, _delta = __0;
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
var _remaining = __1, _b = __0;
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L40"
        for (__0 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L41"
            if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L42"
                _b++;
                _output = (_output.__append__((_r : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L45"
                _remaining++;
            };
        };
        var _h = (_b : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L49"
        if ((_b > (0 : stdgo.GoInt32) : Bool)) {
            _output = (_output.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L52"
        while (_remaining != ((0 : stdgo.GoInt32))) {
            var _m = ((2147483647 : stdgo.GoInt32) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L54"
            for (__1 => _r in _s) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L55"
                if (((_m > _r : Bool) && (_r >= _n : Bool) : Bool)) {
                    _m = _r;
                };
            };
            _delta = (_delta + ((((_m - _n : stdgo.GoInt32)) * ((_h + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32)) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L60"
            if ((_delta < (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L61"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cookiejar: invalid label %q" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
            };
            _n = _m;
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L64"
            for (__2 => _r in _s) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L65"
                if ((_r < _n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L66"
                    _delta++;
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L67"
                    if ((_delta < (0 : stdgo.GoInt32) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L68"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cookiejar: invalid label %q" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L70"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L72"
                if ((_r > _n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L73"
                    continue;
                };
                var _q = (_delta : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L76"
                {
                    var _k = (36 : stdgo.GoInt32);
                    while (true) {
                        var _t = (_k - _bias : stdgo.GoInt32);
//"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L78"
                        if ((_t < (1 : stdgo.GoInt32) : Bool)) {
                            _t = (1 : stdgo.GoInt32);
                        } else if ((_t > (26 : stdgo.GoInt32) : Bool)) {
                            _t = (26 : stdgo.GoInt32);
                        };
//"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L83"
                        if ((_q < _t : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L84"
                            break;
                        };
_output = (_output.__append__(stdgo._internal.net.http.cookiejar.Cookiejar__encodedigit._encodeDigit((_t + (((_q - _t : stdgo.GoInt32)) % (((36 : stdgo.GoInt32) - _t : stdgo.GoInt32)) : stdgo.GoInt32) : stdgo.GoInt32))) : stdgo.Slice<stdgo.GoUInt8>);
_q = (((_q - _t : stdgo.GoInt32)) / (((36 : stdgo.GoInt32) - _t : stdgo.GoInt32)) : stdgo.GoInt32);
                        _k = (_k + ((36 : stdgo.GoInt32)) : stdgo.GoInt32);
                    };
                };
                _output = (_output.__append__(stdgo._internal.net.http.cookiejar.Cookiejar__encodedigit._encodeDigit(_q)) : stdgo.Slice<stdgo.GoUInt8>);
                _bias = stdgo._internal.net.http.cookiejar.Cookiejar__adapt._adapt(_delta, (_h + (1 : stdgo.GoInt32) : stdgo.GoInt32), _h == (_b));
                _delta = (0 : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L92"
                _h++;
                //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L93"
                _remaining--;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L95"
            _delta++;
            //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L96"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/punycode.go#L98"
        return { _0 : (_output : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
