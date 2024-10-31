package stdgo._internal.net.url;
function _getScheme(_rawURL:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _scheme = ("" : stdgo.GoString), _path = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_rawURL.length) : Bool)) {
                var _c = (_rawURL[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {} else if (((((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) || _c == ((43 : stdgo.GoUInt8)) : Bool) || _c == ((45 : stdgo.GoUInt8)) : Bool) || (_c == (46 : stdgo.GoUInt8)) : Bool)) {
                    if (_i == ((0 : stdgo.GoInt))) {
                        return { _0 : stdgo.Go.str().__copy__(), _1 : _rawURL.__copy__(), _2 : (null : stdgo.Error) };
                    };
                } else if (_c == ((58 : stdgo.GoUInt8))) {
                    if (_i == ((0 : stdgo.GoInt))) {
                        return { _0 : stdgo.Go.str().__copy__(), _1 : stdgo.Go.str().__copy__(), _2 : stdgo._internal.errors.Errors_new_.new_(("missing protocol scheme" : stdgo.GoString)) };
                    };
                    return { _0 : (_rawURL.__slice__(0, _i) : stdgo.GoString).__copy__(), _1 : (_rawURL.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__(), _2 : (null : stdgo.Error) };
                } else {
                    return { _0 : stdgo.Go.str().__copy__(), _1 : _rawURL.__copy__(), _2 : (null : stdgo.Error) };
                };
                _i++;
            };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _rawURL?.__copy__(), _2 : (null : stdgo.Error) };
    }
