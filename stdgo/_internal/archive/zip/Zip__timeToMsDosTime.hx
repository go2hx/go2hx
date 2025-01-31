package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
function _timeToMsDosTime(_t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } {
        var _fDate = (0 : stdgo.GoUInt16), _fTime = (0 : stdgo.GoUInt16);
        _fDate = (((_t.day() + ((_t.month() : stdgo.GoInt) << (5i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) + (((_t.year() - (1980 : stdgo.GoInt) : stdgo.GoInt)) << (9i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16);
        _fTime = ((((_t.second() / (2 : stdgo.GoInt) : stdgo.GoInt) + (_t.minute() << (5i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) + (_t.hour() << (11i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16);
        return { _0 : _fDate, _1 : _fTime };
    }
