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
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_openDir_asInterface) class T_openDir_static_extension {
    @:keep
    @:tdfield
    static public function readDir( _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir>, _count:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir> = _d;
        var _n = (((@:checkr _d ?? throw "null pointer dereference")._files.length) - (@:checkr _d ?? throw "null pointer dereference")._offset : stdgo.GoInt);
        if (((_count > (0 : stdgo.GoInt) : Bool) && (_n > _count : Bool) : Bool)) {
            _n = _count;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            if ((_count <= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : (null : stdgo.Error) };
            };
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : stdgo._internal.io.Io_eOF.eOF };
        };
        var _list = (new stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>);
        for (_i => _ in _list) {
            var __tmp__ = @:check2 (@:checkr _d ?? throw "null pointer dereference")._files[((@:checkr _d ?? throw "null pointer dereference")._offset + _i : stdgo.GoInt)]._stat(), _s:stdgo._internal.archive.zip.Zip_T_fileInfoDirEntry.T_fileInfoDirEntry = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>), _1 : _err };
            };
            _list[(_i : stdgo.GoInt)] = _s;
        };
        (@:checkr _d ?? throw "null pointer dereference")._offset = ((@:checkr _d ?? throw "null pointer dereference")._offset + (_n) : stdgo.GoInt);
        return { _0 : _list, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function read( _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir>, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir> = _d;
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), path : (@:checkr (@:checkr _d ?? throw "null pointer dereference")._e ?? throw "null pointer dereference")._name?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("is a directory" : stdgo.GoString)) } : stdgo._internal.io.fs.Fs_PathError.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) };
    }
    @:keep
    @:tdfield
    static public function stat( _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir> = _d;
        return @:check2r (@:checkr _d ?? throw "null pointer dereference")._e._stat();
    }
    @:keep
    @:tdfield
    static public function close( _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_openDir.T_openDir> = _d;
        return (null : stdgo.Error);
    }
}
