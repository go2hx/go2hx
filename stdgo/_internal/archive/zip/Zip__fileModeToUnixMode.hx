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
function _fileModeToUnixMode(_mode:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo.GoUInt32 {
        var _m:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            final __value__ = (_mode & (-1893203968u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode);
            if (__value__ == ((-2147483648u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _m = (16384u32 : stdgo.GoUInt32);
            } else if (__value__ == ((134217728u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _m = (40960u32 : stdgo.GoUInt32);
            } else if (__value__ == ((33554432u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _m = (4096u32 : stdgo.GoUInt32);
            } else if (__value__ == ((16777216u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _m = (49152u32 : stdgo.GoUInt32);
            } else if (__value__ == ((67108864u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _m = (24576u32 : stdgo.GoUInt32);
            } else if (__value__ == ((69206016u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
                _m = (8192u32 : stdgo.GoUInt32);
            } else {
                _m = (32768u32 : stdgo.GoUInt32);
            };
        };
        if ((_mode & (8388608u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _m = (_m | ((2048u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        if ((_mode & (4194304u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _m = (_m | ((1024u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        if ((_mode & (1048576u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode))) {
            _m = (_m | ((512u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        return (_m | ((_mode & (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo._internal.io.fs.Fs_FileMode.FileMode) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
