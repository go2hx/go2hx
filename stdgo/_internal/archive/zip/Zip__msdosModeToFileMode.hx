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
function _msdosModeToFileMode(_m:stdgo.GoUInt32):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        var _mode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        if ((_m & (16u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _mode = (-2147483137u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        } else {
            _mode = (438u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        if ((_m & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _mode = (_mode & ((((146u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
        };
        return _mode;
    }
