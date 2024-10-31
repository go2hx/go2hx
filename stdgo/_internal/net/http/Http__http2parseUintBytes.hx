package stdgo._internal.net.http;
function _http2parseUintBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
            var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _maxVal = __1, _cutoff = __0;
            if (_bitSize == ((0 : stdgo.GoInt))) {
                _bitSize = (32 : stdgo.GoInt);
            };
            var _s0 = _s;
            if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                @:goto "Error";
            } else if ((((2 : stdgo.GoInt) <= _base : Bool) && (_base <= (36 : stdgo.GoInt) : Bool) : Bool)) {} else if (_base == ((0 : stdgo.GoInt))) {
                if (((_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) && ((_s.length) > (1 : stdgo.GoInt) : Bool) : Bool) && (((_s[(1 : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) || (_s[(1 : stdgo.GoInt)] == (88 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _base = (16 : stdgo.GoInt);
                    _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_s.length) < (1 : stdgo.GoInt) : Bool)) {
                        _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                        @:goto "Error";
                    };
                } else if (_s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8))) {
                    _base = (8 : stdgo.GoInt);
                } else {
                    _base = (10 : stdgo.GoInt);
                };
            } else {
                _err = stdgo._internal.errors.Errors_new_.new_((("invalid base " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_base)?.__copy__() : stdgo.GoString)?.__copy__());
                @:goto "Error";
            };
            _n = (0i64 : stdgo.GoUInt64);
            _cutoff = stdgo._internal.net.http.Http__http2cutoff64._http2cutoff64(_base);
            _maxVal = (((1i64 : stdgo.GoUInt64) << (_bitSize : stdgo.GoUInt) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var _v:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _d = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((((48 : stdgo.GoUInt8) <= _d : Bool) && (_d <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _v = (_d - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    } else if ((((97 : stdgo.GoUInt8) <= _d : Bool) && (_d <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _v = ((_d - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    } else if ((((65 : stdgo.GoUInt8) <= _d : Bool) && (_d <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _v = ((_d - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    } else {
                        _n = (0i64 : stdgo.GoUInt64);
                        _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                        @:goto "Error";
                    };
if (((_v : stdgo.GoInt) >= _base : Bool)) {
                        _n = (0i64 : stdgo.GoUInt64);
                        _err = stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
                        @:goto "Error";
                    };
if ((_n >= _cutoff : Bool)) {
                        _n = (-1i64 : stdgo.GoUInt64);
                        _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                        @:goto "Error";
                    };
_n = (_n * ((_base : stdgo.GoUInt64)) : stdgo.GoUInt64);
var _n1 = (_n + (_v : stdgo.GoUInt64) : stdgo.GoUInt64);
if (((_n1 < _n : Bool) || (_n1 > _maxVal : Bool) : Bool)) {
                        _n = (-1i64 : stdgo.GoUInt64);
                        _err = stdgo._internal.strconv.Strconv_errRange.errRange;
                        @:goto "Error";
                    };
_n = _n1;
                    _i++;
                };
            };
            return { _0 : _n, _1 : (null : stdgo.Error) };
            @:label("Error") return { _0 : _n, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ func : ("ParseUint" : stdgo.GoString), num : (_s0 : stdgo.GoString)?.__copy__(), err : _err } : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) };
        });
    }
