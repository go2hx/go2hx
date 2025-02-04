package stdgo._internal.path.filepath;
function _getEsc(_chunk:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _r = (0 : stdgo.GoInt32), _nchunk = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if ((((_chunk.length) == ((0 : stdgo.GoInt)) || _chunk[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) || (_chunk[(0 : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
            _err = stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern;
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        if (((_chunk[(0 : stdgo.GoInt)] == (92 : stdgo.GoUInt8)) && true : Bool)) {
            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if ((_chunk.length) == ((0 : stdgo.GoInt))) {
                _err = stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern;
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_chunk?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        if (((_r == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
            _err = stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern;
        };
        _nchunk = (_chunk.__slice__(_n) : stdgo.GoString)?.__copy__();
        if ((_nchunk.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern;
        };
        return { _0 : _r, _1 : _nchunk, _2 : _err };
    }
