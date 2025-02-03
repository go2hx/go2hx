package stdgo._internal.encoding.asn1;
function _parseBMPString(_bmpString:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (((_bmpString.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("pkcs12: odd-length BMP string" : stdgo.GoString)) };
        };
        {
            var _l = (_bmpString.length : stdgo.GoInt);
            if ((((_l >= (2 : stdgo.GoInt) : Bool) && _bmpString[(_l - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && (_bmpString[(_l - (2 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                _bmpString = (_bmpString.__slice__(0, (_l - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var _s = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), ((_bmpString.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        while (((_bmpString.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s.__append__((((_bmpString[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) + (_bmpString[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)));
            _bmpString = (_bmpString.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : (stdgo._internal.unicode.utf16.Utf16_decode.decode(_s) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
