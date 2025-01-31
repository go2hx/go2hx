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
function _formatPAXRecord(_k:stdgo.GoString, _v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (!stdgo._internal.archive.tar.Tar__validPAXRecord._validPAXRecord(_k?.__copy__(), _v?.__copy__())) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.archive.tar.Tar_errHeader.errHeader };
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
