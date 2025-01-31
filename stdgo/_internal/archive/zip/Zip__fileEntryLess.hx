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
function _fileEntryLess(_x:stdgo.GoString, _y:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_x?.__copy__()), _xdir:stdgo.GoString = __tmp__._0, _xelem:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
        var __tmp__ = stdgo._internal.archive.zip.Zip__split._split(_y?.__copy__()), _ydir:stdgo.GoString = __tmp__._0, _yelem:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
        return ((_xdir < _ydir : Bool) || (_xdir == (_ydir) && (_xelem < _yelem : Bool) : Bool) : Bool);
    }
