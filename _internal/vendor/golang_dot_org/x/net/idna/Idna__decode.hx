package _internal.vendor.golang_dot_org.x.net.idna;
function _decode(_encoded:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (_encoded == (stdgo.Go.str())) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _pos = ((1 : stdgo.GoInt) + stdgo._internal.strings.Strings_lastIndex.lastIndex(_encoded?.__copy__(), ("-" : stdgo.GoString)) : stdgo.GoInt);
        if (_pos == ((1 : stdgo.GoInt))) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : _internal.vendor.golang_dot_org.x.net.idna.Idna__punyError._punyError(_encoded?.__copy__()) };
        };
        if (_pos == ((_encoded.length))) {
            return { _0 : (_encoded.__slice__(0, ((_encoded.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _output = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (_encoded.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        if (_pos != ((0 : stdgo.GoInt))) {
            for (__0 => _r in (_encoded.__slice__(0, (_pos - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)) {
                _output = (_output.__append__(_r));
            };
        };
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (128 : stdgo.GoInt32), __2 = (72 : stdgo.GoInt32);
var _bias = __2, _n = __1, _i = __0;
        var _overflow = (false : Bool);
        while ((_pos < (_encoded.length) : Bool)) {
            var __0 = (_i : stdgo.GoInt32), __1 = ((1 : stdgo.GoInt32) : stdgo.GoInt32);
var _w = __1, _oldI = __0;
            {
                var _k = (36 : stdgo.GoInt32);
                stdgo.Go.cfor(true, _k = (_k + ((36 : stdgo.GoInt32)) : stdgo.GoInt32), {
                    if (_pos == ((_encoded.length))) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _internal.vendor.golang_dot_org.x.net.idna.Idna__punyError._punyError(_encoded?.__copy__()) };
                    };
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.idna.Idna__decodeDigit._decodeDigit(_encoded[(_pos : stdgo.GoInt)]), _digit:stdgo.GoInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _internal.vendor.golang_dot_org.x.net.idna.Idna__punyError._punyError(_encoded?.__copy__()) };
                    };
                    _pos++;
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.net.idna.Idna__madd._madd(_i, _digit, _w);
                        _i = __tmp__._0;
                        _overflow = __tmp__._1;
                    };
                    if (_overflow) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _internal.vendor.golang_dot_org.x.net.idna.Idna__punyError._punyError(_encoded?.__copy__()) };
                    };
                    var _t = (_k - _bias : stdgo.GoInt32);
                    if ((_k <= _bias : Bool)) {
                        _t = (1 : stdgo.GoInt32);
                    } else if ((_k >= (_bias + (26 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                        _t = (26 : stdgo.GoInt32);
                    };
                    if ((_digit < _t : Bool)) {
                        break;
                    };
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.net.idna.Idna__madd._madd((0 : stdgo.GoInt32), _w, ((36 : stdgo.GoInt32) - _t : stdgo.GoInt32));
                        _w = __tmp__._0;
                        _overflow = __tmp__._1;
                    };
                    if (_overflow) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _internal.vendor.golang_dot_org.x.net.idna.Idna__punyError._punyError(_encoded?.__copy__()) };
                    };
                });
            };
            if (((_output.length) >= (1024 : stdgo.GoInt) : Bool)) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : _internal.vendor.golang_dot_org.x.net.idna.Idna__punyError._punyError(_encoded?.__copy__()) };
            };
            var _x = (((_output.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
            _bias = _internal.vendor.golang_dot_org.x.net.idna.Idna__adapt._adapt((_i - _oldI : stdgo.GoInt32), _x, _oldI == ((0 : stdgo.GoInt32)));
            _n = (_n + ((_i / _x : stdgo.GoInt32)) : stdgo.GoInt32);
            _i = (_i % (_x) : stdgo.GoInt32);
            if (((_n < (0 : stdgo.GoInt32) : Bool) || (_n > (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : _internal.vendor.golang_dot_org.x.net.idna.Idna__punyError._punyError(_encoded?.__copy__()) };
            };
            _output = (_output.__append__((0 : stdgo.GoInt32)));
            stdgo.Go.copySlice((_output.__slice__((_i + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>), (_output.__slice__(_i) : stdgo.Slice<stdgo.GoInt32>));
            _output[(_i : stdgo.GoInt)] = _n;
            _i++;
        };
        return { _0 : (_output : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
