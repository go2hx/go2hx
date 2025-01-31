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
function _msDosTimeToTime(_dosDate:stdgo.GoUInt16, _dosTime:stdgo.GoUInt16):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.time.Time_date.date((((_dosDate >> (9i64 : stdgo.GoUInt64) : stdgo.GoUInt16) + (1980 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt), (((_dosDate >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt16) & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo._internal.time.Time_Month.Month), ((_dosDate & (31 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt), ((_dosTime >> (11i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoInt), (((_dosTime >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt16) & (63 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt), (((_dosTime & (31 : stdgo.GoUInt16) : stdgo.GoUInt16) * (2 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_uTC.uTC)?.__copy__();
    }
