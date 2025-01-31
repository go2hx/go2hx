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
function _toValidName(_name:stdgo.GoString):stdgo.GoString {
        _name = stdgo._internal.strings.Strings_replaceAll.replaceAll(_name?.__copy__(), ("\\" : stdgo.GoString), ("/" : stdgo.GoString))?.__copy__();
        var _p = (stdgo._internal.path.Path_clean.clean(_name?.__copy__())?.__copy__() : stdgo.GoString);
        _p = stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_p?.__copy__(), ("/" : stdgo.GoString))?.__copy__();
        while (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_p?.__copy__(), ("../" : stdgo.GoString))) {
            _p = (_p.__slice__((("../" : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
        };
        return _p?.__copy__();
    }
