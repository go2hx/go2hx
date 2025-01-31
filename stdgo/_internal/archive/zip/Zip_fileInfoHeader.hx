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
function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>; var _1 : stdgo.Error; } {
        var _size = (_fi.size() : stdgo.GoInt64);
        var _fh = (stdgo.Go.setRef(({ name : _fi.name()?.__copy__(), uncompressedSize64 : (_size : stdgo.GoUInt64) } : stdgo._internal.archive.zip.Zip_FileHeader.FileHeader)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_FileHeader.FileHeader>);
        @:check2r _fh.setModTime(_fi.modTime()?.__copy__());
        @:check2r _fh.setMode(_fi.mode());
        if (((@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64 > (4294967295i64 : stdgo.GoUInt64) : Bool)) {
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = (-1u32 : stdgo.GoUInt32);
        } else {
            (@:checkr _fh ?? throw "null pointer dereference").uncompressedSize = ((@:checkr _fh ?? throw "null pointer dereference").uncompressedSize64 : stdgo.GoUInt32);
        };
        return { _0 : _fh, _1 : (null : stdgo.Error) };
    }
