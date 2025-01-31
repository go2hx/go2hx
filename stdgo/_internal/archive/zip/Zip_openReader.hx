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
function openReader(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = @:check2r _f.stat(), _fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _f.close();
            return { _0 : null, _1 : _err };
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser)) : stdgo.Ref<stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser>);
        {
            _err = @:check2r _r._init(stdgo.Go.asInterface(_f), _fi.size());
            if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.archive.zip.Zip_errInsecurePath.errInsecurePath)) : Bool)) {
                @:check2r _f.close();
                return { _0 : null, _1 : _err };
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._f = _f;
        return { _0 : _r, _1 : _err };
    }
