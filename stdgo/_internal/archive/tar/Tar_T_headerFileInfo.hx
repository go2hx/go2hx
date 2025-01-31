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
@:structInit @:using(stdgo._internal.archive.tar.Tar_T_headerFileInfo_static_extension.T_headerFileInfo_static_extension) class T_headerFileInfo {
    public var _h : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header> = (null : stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>);
    public function new(?_h:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>) {
        if (_h != null) this._h = _h;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_headerFileInfo(_h);
    }
}
