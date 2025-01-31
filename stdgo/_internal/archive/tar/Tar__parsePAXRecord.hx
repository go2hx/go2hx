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
function _parsePAXRecord(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : stdgo.Error; } {
        var _k = ("" : stdgo.GoString), _v = ("" : stdgo.GoString), _r = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), (" " : stdgo.GoString)), _nStr:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : _s?.__copy__(), _3 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
                _k = __tmp__._0;
                _v = __tmp__._1;
                _r = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_nStr?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _perr:stdgo.Error = __tmp__._1;
        if (((_perr != null || (_n < (5i64 : stdgo.GoInt64) : Bool) : Bool) || (_n > (_s.length : stdgo.GoInt64) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : _s?.__copy__(), _3 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
                _k = __tmp__._0;
                _v = __tmp__._1;
                _r = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        _n = (_n - ((((_nStr.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt64);
        if ((_n <= (0i64 : stdgo.GoInt64) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : _s?.__copy__(), _3 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
                _k = __tmp__._0;
                _v = __tmp__._1;
                _r = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        var __0 = ((_rest.__slice__(0, (_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_rest.__slice__((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64), _n) : stdgo.GoString)?.__copy__() : stdgo.GoString), __2 = ((_rest.__slice__(_n) : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _rem = __2, _nl = __1, _rec = __0;
        if (_nl != (("\n" : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : _s?.__copy__(), _3 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
                _k = __tmp__._0;
                _v = __tmp__._1;
                _r = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_rec?.__copy__(), ("=" : stdgo.GoString));
            _k = @:tmpset0 __tmp__._0?.__copy__();
            _v = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        if (!_ok) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : _s?.__copy__(), _3 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
                _k = __tmp__._0;
                _v = __tmp__._1;
                _r = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        if (!stdgo._internal.archive.tar.Tar__validPAXRecord._validPAXRecord(_k?.__copy__(), _v?.__copy__())) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : _s?.__copy__(), _3 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
                _k = __tmp__._0;
                _v = __tmp__._1;
                _r = __tmp__._2;
                _err = __tmp__._3;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : stdgo.Error; } = { _0 : _k?.__copy__(), _1 : _v?.__copy__(), _2 : _rem?.__copy__(), _3 : (null : stdgo.Error) };
            _k = __tmp__._0;
            _v = __tmp__._1;
            _r = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
