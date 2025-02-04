package stdgo._internal.archive.tar;
function _formatPAXRecord(_k:stdgo.GoString, _v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (!stdgo._internal.archive.tar.Tar__validpaxrecord._validPAXRecord(_k?.__copy__(), _v?.__copy__())) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
        };
        {};
        var _size = (((_k.length) + (_v.length) : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt);
        _size = (_size + ((stdgo._internal.strconv.Strconv_itoa.itoa(_size).length)) : stdgo.GoInt);
        var _record = ((((((stdgo._internal.strconv.Strconv_itoa.itoa(_size) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _k?.__copy__() : stdgo.GoString) + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if ((_record.length) != (_size)) {
            _size = (_record.length);
            _record = (((((stdgo._internal.strconv.Strconv_itoa.itoa(_size) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _k?.__copy__() : stdgo.GoString) + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _v?.__copy__() : stdgo.GoString) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return { _0 : _record?.__copy__(), _1 : (null : stdgo.Error) };
    }
