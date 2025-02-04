package stdgo._internal.path.filepath;
function rel(_basepath:stdgo.GoString, _targpath:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _baseVol = (stdgo._internal.path.filepath.Filepath_volumename.volumeName(_basepath?.__copy__())?.__copy__() : stdgo.GoString);
        var _targVol = (stdgo._internal.path.filepath.Filepath_volumename.volumeName(_targpath?.__copy__())?.__copy__() : stdgo.GoString);
        var _base = (stdgo._internal.path.filepath.Filepath_clean.clean(_basepath?.__copy__())?.__copy__() : stdgo.GoString);
        var _targ = (stdgo._internal.path.filepath.Filepath_clean.clean(_targpath?.__copy__())?.__copy__() : stdgo.GoString);
        if (stdgo._internal.path.filepath.Filepath__sameword._sameWord(_targ?.__copy__(), _base?.__copy__())) {
            return { _0 : ("." : stdgo.GoString), _1 : (null : stdgo.Error) };
        };
        _base = (_base.__slice__((_baseVol.length)) : stdgo.GoString)?.__copy__();
        _targ = (_targ.__slice__((_targVol.length)) : stdgo.GoString)?.__copy__();
        if (_base == (("." : stdgo.GoString))) {
            _base = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        } else if (((_base == (stdgo.Go.str() : stdgo.GoString)) && (stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_baseVol?.__copy__()) > (2 : stdgo.GoInt) : Bool) : Bool)) {
            _base = ((47 : stdgo.GoInt32) : stdgo.GoString);
        };
        var _baseSlashed = (((_base.length) > (0 : stdgo.GoInt) : Bool) && (_base[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
        var _targSlashed = (((_targ.length) > (0 : stdgo.GoInt) : Bool) && (_targ[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
        if (((_baseSlashed != _targSlashed) || !stdgo._internal.path.filepath.Filepath__sameword._sameWord(_baseVol?.__copy__(), _targVol?.__copy__()) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_((((("Rel: can\'t make " : stdgo.GoString) + _targpath?.__copy__() : stdgo.GoString) + (" relative to " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _basepath?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        var _bl = (_base.length : stdgo.GoInt);
        var _tl = (_targ.length : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt);
var _ti = __3, _t0 = __2, _bi = __1, _b0 = __0;
        while (true) {
            while (((_bi < _bl : Bool) && (_base[(_bi : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                _bi++;
            };
            while (((_ti < _tl : Bool) && (_targ[(_ti : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                _ti++;
            };
            if (!stdgo._internal.path.filepath.Filepath__sameword._sameWord((_targ.__slice__(_t0, _ti) : stdgo.GoString)?.__copy__(), (_base.__slice__(_b0, _bi) : stdgo.GoString)?.__copy__())) {
                break;
            };
            if ((_bi < _bl : Bool)) {
                _bi++;
            };
            if ((_ti < _tl : Bool)) {
                _ti++;
            };
            _b0 = _bi;
            _t0 = _ti;
        };
        if ((_base.__slice__(_b0, _bi) : stdgo.GoString) == ((".." : stdgo.GoString))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_((((("Rel: can\'t make " : stdgo.GoString) + _targpath?.__copy__() : stdgo.GoString) + (" relative to " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _basepath?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        if (_b0 != (_bl)) {
            var _seps = (stdgo._internal.strings.Strings_count.count((_base.__slice__(_b0, _bl) : stdgo.GoString)?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)) : stdgo.GoInt);
            var _size = ((2 : stdgo.GoInt) + (_seps * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            if (_tl != (_t0)) {
                _size = (_size + ((((1 : stdgo.GoInt) + _tl : stdgo.GoInt) - _t0 : stdgo.GoInt)) : stdgo.GoInt);
            };
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _n = (_buf.__copyTo__((".." : stdgo.GoString)) : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _seps : Bool)) {
                    _buf[(_n : stdgo.GoInt)] = (47 : stdgo.GoUInt8);
(_buf.__slice__((_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((".." : stdgo.GoString));
_n = (_n + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    _i++;
                };
            };
            if (_t0 != (_tl)) {
                _buf[(_n : stdgo.GoInt)] = (47 : stdgo.GoUInt8);
                (_buf.__slice__((_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_targ.__slice__(_t0) : stdgo.GoString));
            };
            return { _0 : (_buf : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : (_targ.__slice__(_t0) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
