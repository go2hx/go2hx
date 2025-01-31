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
function _fitsInOctal(_n:stdgo.GoInt, _x:stdgo.GoInt64):Bool {
        var _octBits = (((_n - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) * (3u32 : stdgo.GoUInt) : stdgo.GoUInt);
        return ((_x >= (0i64 : stdgo.GoInt64) : Bool) && (((_n >= (22 : stdgo.GoInt) : Bool) || (_x < ((1i64 : stdgo.GoInt64) << _octBits : stdgo.GoInt64) : Bool) : Bool)) : Bool);
    }
