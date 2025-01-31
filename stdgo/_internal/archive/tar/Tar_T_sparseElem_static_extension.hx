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
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_sparseElem_asInterface) class T_sparseElem_static_extension {
    @:keep
    @:tdfield
    static public function _length( _s:stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem = _s;
        return ((_s.__slice__((12 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem).__slice__(0, (12 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem);
    }
    @:keep
    @:tdfield
    static public function _offset( _s:stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem = _s;
        return ((_s.__slice__((0 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem).__slice__(0, (12 : stdgo.GoInt)) : stdgo._internal.archive.tar.Tar_T_sparseElem.T_sparseElem);
    }
}
