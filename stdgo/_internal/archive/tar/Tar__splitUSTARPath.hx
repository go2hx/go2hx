package stdgo._internal.archive.tar;
function _splitUSTARPath(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _prefix = ("" : stdgo.GoString), _suffix = ("" : stdgo.GoString), _ok = false;
        var _length = (_name.length : stdgo.GoInt);
        if (((_length <= (100 : stdgo.GoInt) : Bool) || !stdgo._internal.archive.tar.Tar__isASCII._isASCII(_name?.__copy__()) : Bool)) {
            return { _0 : _prefix = stdgo.Go.str()?.__copy__(), _1 : _suffix = stdgo.Go.str()?.__copy__(), _2 : _ok = false };
        } else if ((_length > (156 : stdgo.GoInt) : Bool)) {
            _length = (156 : stdgo.GoInt);
        } else if (_name[(_length - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
            _length--;
        };
        var _i = (stdgo._internal.strings.Strings_lastIndex.lastIndex((_name.__slice__(0, _length) : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        var _nlen = (((_name.length) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _plen = (_i : stdgo.GoInt);
        if (((((_i <= (0 : stdgo.GoInt) : Bool) || (_nlen > (100 : stdgo.GoInt) : Bool) : Bool) || _nlen == ((0 : stdgo.GoInt)) : Bool) || (_plen > (155 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : _prefix = stdgo.Go.str()?.__copy__(), _1 : _suffix = stdgo.Go.str()?.__copy__(), _2 : _ok = false };
        };
        return { _0 : _prefix = (_name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : _suffix = (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : _ok = true };
    }
