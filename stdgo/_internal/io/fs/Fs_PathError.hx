package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.io.fs.Fs_PathError_static_extension.PathError_static_extension) class PathError {
    public var op : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?path:stdgo.GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (path != null) this.path = path;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PathError(op, path, err);
    }
}
