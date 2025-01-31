package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
function _splitUSTARPath(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _prefix = ("" : stdgo.GoString), _suffix = ("" : stdgo.GoString), _ok = false;
        var _length = (_name.length : stdgo.GoInt);
        if (((_length <= (100 : stdgo.GoInt) : Bool) || !stdgo._internal.archive.tar.Tar__isASCII._isASCII(_name?.__copy__()) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
                _prefix = __tmp__._0;
                _suffix = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        } else if ((_length > (156 : stdgo.GoInt) : Bool)) {
            _length = (156 : stdgo.GoInt);
        } else if (_name[(_length - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
            _length--;
        };
        var _i = (stdgo._internal.strings.Strings_lastIndex.lastIndex((_name.__slice__(0, _length) : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        var _nlen = (((_name.length) - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _plen = (_i : stdgo.GoInt);
        if (((((_i <= (0 : stdgo.GoInt) : Bool) || (_nlen > (100 : stdgo.GoInt) : Bool) : Bool) || _nlen == ((0 : stdgo.GoInt)) : Bool) || (_plen > (155 : stdgo.GoInt) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
                _prefix = __tmp__._0;
                _suffix = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (_name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : true };
            _prefix = __tmp__._0;
            _suffix = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
