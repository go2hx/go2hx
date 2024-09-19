package stdgo._internal.net.url;
function _unescape(_s:stdgo.GoString, _mode:stdgo._internal.net.url.Url_T_encoding.T_encoding):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt);
        var _hasPlus = (false : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((37 : stdgo.GoUInt8))) {
                        _n++;
                        if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_s.length) : Bool) || !stdgo._internal.net.url.Url__ishex._ishex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || !stdgo._internal.net.url.Url__ishex._ishex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                            _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
                            if (((_s.length) > (3 : stdgo.GoInt) : Bool)) {
                                _s = (_s.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface((_s : stdgo._internal.net.url.Url_EscapeError.EscapeError)) };
                        };
                        if (((_mode == ((3 : stdgo._internal.net.url.Url_T_encoding.T_encoding)) && (stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) < (8 : stdgo.GoUInt8) : Bool) : Bool) && ((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != ("%25" : stdgo.GoString)) : Bool)) {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface(((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) : stdgo._internal.net.url.Url_EscapeError.EscapeError)) };
                        };
                        if (_mode == ((4 : stdgo._internal.net.url.Url_T_encoding.T_encoding))) {
                            var _v = ((stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt8);
                            if ((((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != (("%25" : stdgo.GoString)) && _v != ((32 : stdgo.GoUInt8)) : Bool) && stdgo._internal.net.url.Url__shouldEscape._shouldEscape(_v, (3 : stdgo._internal.net.url.Url_T_encoding.T_encoding)) : Bool)) {
                                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface(((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) : stdgo._internal.net.url.Url_EscapeError.EscapeError)) };
                            };
                        };
                        _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                        _hasPlus = _mode == ((6 : stdgo._internal.net.url.Url_T_encoding.T_encoding));
                        _i++;
                    } else {
                        if ((((((_mode == (3 : stdgo._internal.net.url.Url_T_encoding.T_encoding)) || (_mode == (4 : stdgo._internal.net.url.Url_T_encoding.T_encoding)) : Bool)) && (_s[(_i : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool) && stdgo._internal.net.url.Url__shouldEscape._shouldEscape(_s[(_i : stdgo.GoInt)], _mode) : Bool)) {
                            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.asInterface(((_s.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) : stdgo._internal.net.url.Url_InvalidHostError.InvalidHostError)) };
                        };
                        _i++;
                    };
                };
            };
        };
        if (((_n == (0 : stdgo.GoInt)) && !_hasPlus : Bool)) {
            return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _t:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _t.grow(((_s.length) - ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : stdgo.GoInt));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((37 : stdgo.GoUInt8))) {
                        _t.writeByte(((stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | stdgo._internal.net.url.Url__unhex._unhex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt8));
                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                        if (_mode == ((6 : stdgo._internal.net.url.Url_T_encoding.T_encoding))) {
                            _t.writeByte((32 : stdgo.GoUInt8));
                        } else {
                            _t.writeByte((43 : stdgo.GoUInt8));
                        };
                    } else {
                        _t.writeByte(_s[(_i : stdgo.GoInt)]);
                    };
                };
            });
        };
        return { _0 : (_t.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
