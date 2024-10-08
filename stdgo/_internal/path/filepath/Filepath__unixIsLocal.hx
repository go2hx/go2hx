package stdgo._internal.path.filepath;
function _unixIsLocal(_path:stdgo.GoString):Bool {
        if ((stdgo._internal.path.filepath.Filepath_isAbs.isAbs(_path?.__copy__()) || (_path == stdgo.Go.str()) : Bool)) {
            return false;
        };
        var _hasDots = (false : Bool);
        {
            var _p = (_path?.__copy__() : stdgo.GoString);
            while (_p != (stdgo.Go.str())) {
                var _part:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_p?.__copy__(), ("/" : stdgo.GoString));
                    _part = __tmp__._0?.__copy__();
                    _p = __tmp__._1?.__copy__();
                };
                if (((_part == ("." : stdgo.GoString)) || (_part == (".." : stdgo.GoString)) : Bool)) {
                    _hasDots = true;
                    break;
                };
            };
        };
        if (_hasDots) {
            _path = stdgo._internal.path.filepath.Filepath_clean.clean(_path?.__copy__())?.__copy__();
        };
        if (((_path == (".." : stdgo.GoString)) || stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_path?.__copy__(), ("../" : stdgo.GoString)) : Bool)) {
            return false;
        };
        return true;
    }
