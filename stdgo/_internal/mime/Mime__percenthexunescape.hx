package stdgo._internal.mime;
function _percentHexUnescape(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _percents = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L352"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L353"
                if (_s[(_i : stdgo.GoInt)] != ((37 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L354"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L355"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L357"
                _percents++;
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L358"
                if (((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_s.length) : Bool) || !stdgo._internal.mime.Mime__ishex._ishex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || !stdgo._internal.mime.Mime__ishex._ishex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L360"
                    if (((_s.length) > (3 : stdgo.GoInt) : Bool)) {
                        _s = (_s.__slice__((0 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L363"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("mime: bogus characters after %%: %q" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
                };
                _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L367"
        if (_percents == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L368"
            return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _t = (new stdgo.Slice<stdgo.GoUInt8>(((_s.length) - ((2 : stdgo.GoInt) * _percents : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L373"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L374"
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((37 : stdgo.GoUInt8))) {
                        _t[(_j : stdgo.GoInt)] = ((stdgo._internal.mime.Mime__unhex._unhex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | stdgo._internal.mime.Mime__unhex._unhex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L377"
                        _j++;
                        _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    } else {
                        _t[(_j : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
                        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L381"
                        _j++;
                        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L382"
                        _i++;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L385"
        return { _0 : (_t : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
