package stdgo._internal.text.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.net.url.Url;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.internal.fmtsort.Fmtsort;
@:structInit @:using(stdgo._internal.text.template.Template_T_cmpTest_static_extension.T_cmpTest_static_extension) class T_cmpTest {
    public var _expr : stdgo.GoString = "";
    public var _truth : stdgo.GoString = "";
    public var _ok : Bool = false;
    public function new(?_expr:stdgo.GoString, ?_truth:stdgo.GoString, ?_ok:Bool) {
        if (_expr != null) this._expr = _expr;
        if (_truth != null) this._truth = _truth;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cmpTest(_expr, _truth, _ok);
    }
}
