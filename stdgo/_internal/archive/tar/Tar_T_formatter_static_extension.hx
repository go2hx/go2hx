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
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_formatter_asInterface) class T_formatter_static_extension {
    @:keep
    @:tdfield
    static public function _formatOctal( _f:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_formatter.T_formatter>, _b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_formatter.T_formatter> = _f;
        if (!stdgo._internal.archive.tar.Tar__fitsInOctal._fitsInOctal((_b.length), _x)) {
            _x = (0i64 : stdgo.GoInt64);
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.archive.tar.Tar_errFieldTooLong.errFieldTooLong;
        };
        var _s = (stdgo._internal.strconv.Strconv_formatInt.formatInt(_x, (8 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        {
            var _n = (((_b.length) - (_s.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _s = (stdgo._internal.strings.Strings_repeat.repeat(("0" : stdgo.GoString), _n) + _s?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        @:check2r _f._formatString(_b, _s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _formatNumeric( _f:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_formatter.T_formatter>, _b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_formatter.T_formatter> = _f;
        if (stdgo._internal.archive.tar.Tar__fitsInOctal._fitsInOctal((_b.length), _x)) {
            @:check2r _f._formatOctal(_b, _x);
            return;
        };
        if (stdgo._internal.archive.tar.Tar__fitsInBase256._fitsInBase256((_b.length), _x)) {
            {
                var _i = ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _b[(_i : stdgo.GoInt)] = (_x : stdgo.GoUInt8);
_x = (_x >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
                    _i--;
                };
            };
            _b[(0 : stdgo.GoInt)] = (_b[(0 : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            return;
        };
        @:check2r _f._formatOctal(_b, (0i64 : stdgo.GoInt64));
        (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.archive.tar.Tar_errFieldTooLong.errFieldTooLong;
    }
    @:keep
    @:tdfield
    static public function _formatString( _f:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_formatter.T_formatter>, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_formatter.T_formatter> = _f;
        if (((_s.length) > (_b.length) : Bool)) {
            (@:checkr _f ?? throw "null pointer dereference")._err = stdgo._internal.archive.tar.Tar_errFieldTooLong.errFieldTooLong;
        };
        _b.__copyTo__(_s);
        if (((_s.length) < (_b.length) : Bool)) {
            _b[(_s.length : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        if ((((_s.length) > (_b.length) : Bool) && (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            var _n = (stdgo._internal.strings.Strings_trimRight.trimRight((_s.__slice__(0, (_b.length)) : stdgo.GoString)?.__copy__(), ("/" : stdgo.GoString)).length : stdgo.GoInt);
            _b[(_n : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
}
