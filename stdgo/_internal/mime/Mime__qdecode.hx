package stdgo._internal.mime;
function _qDecode(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _dec = (new stdgo.Slice<stdgo.GoUInt8>((_s.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L365"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L366"
                {
                    var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (_c == ((95 : stdgo.GoUInt8))) {
                        _dec[(_n : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                    } else if (_c == ((61 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L370"
                        if (((_i + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_s.length) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L371"
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.mime.Mime__errinvalidword._errInvalidWord };
                        };
                        var __tmp__ = stdgo._internal.mime.Mime__readhexbyte._readHexByte(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)], _s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L374"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L375"
                            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        };
                        _dec[(_n : stdgo.GoInt)] = _b;
                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    } else if (((((((_c <= (126 : stdgo.GoUInt8) : Bool) && (_c >= (32 : stdgo.GoUInt8) : Bool) : Bool)) || _c == ((10 : stdgo.GoUInt8)) : Bool) || _c == ((13 : stdgo.GoUInt8)) : Bool) || (_c == (9 : stdgo.GoUInt8)) : Bool)) {
                        _dec[(_n : stdgo.GoInt)] = _c;
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L382"
                        return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.mime.Mime__errinvalidword._errInvalidWord };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L384"
                _n++;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L387"
        return { _0 : (_dec.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
