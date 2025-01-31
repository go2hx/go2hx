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
@:structInit @:using(stdgo._internal.archive.tar.Tar_T_sparseEntry_static_extension.T_sparseEntry_static_extension) class T_sparseEntry {
    public var offset : stdgo.GoInt64 = 0;
    public var length_ : stdgo.GoInt64 = 0;
    public function new(?offset:stdgo.GoInt64, ?length_:stdgo.GoInt64) {
        if (offset != null) this.offset = offset;
        if (length_ != null) this.length_ = length_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sparseEntry(offset, length_);
    }
}
