package stdgo._internal.net.url;
function _escape(_s:stdgo.GoString, _mode:stdgo._internal.net.url.Url_t_encoding.T_encoding):stdgo.GoString {
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _hexCount = __1, _spaceCount = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (stdgo._internal.net.url.Url__shouldescape._shouldEscape(_c, _mode)) {
                    if (((_c == (32 : stdgo.GoUInt8)) && (_mode == (6 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
                        _spaceCount++;
                    } else {
                        _hexCount++;
                    };
                };
                _i++;
            };
        };
        if (((_spaceCount == (0 : stdgo.GoInt)) && (_hexCount == (0 : stdgo.GoInt)) : Bool)) {
            return _s?.__copy__();
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
        var _t:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _required = ((_s.length) + ((2 : stdgo.GoInt) * _hexCount : stdgo.GoInt) : stdgo.GoInt);
        if ((_required <= (_buf.length) : Bool)) {
            _t = (_buf.__slice__(0, _required) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _t = (new stdgo.Slice<stdgo.GoUInt8>((_required : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (_hexCount == ((0 : stdgo.GoInt))) {
            _t.__copyTo__(_s);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    if (_s[(_i : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                        _t[(_i : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
                    };
                    _i++;
                };
            };
            return (_t : stdgo.GoString)?.__copy__();
        };
        var _j = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c == (32 : stdgo.GoUInt8)) && (_mode == (6 : stdgo._internal.net.url.Url_t_encoding.T_encoding)) : Bool)) {
                        _t[(_j : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
                        _j++;
                    } else if (stdgo._internal.net.url.Url__shouldescape._shouldEscape(_c, _mode)) {
                        _t[(_j : stdgo.GoInt)] = (37 : stdgo.GoUInt8);
                        _t[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
                        _t[(_j + (2 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_c & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                        _j = (_j + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    } else {
                        _t[(_j : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
                        _j++;
                    };
                };
                _i++;
            };
        };
        return (_t : stdgo.GoString)?.__copy__();
    }
