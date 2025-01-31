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
@:structInit @:using(stdgo._internal.text.template.Template_T_multiParseTest_static_extension.T_multiParseTest_static_extension) class T_multiParseTest {
    public var _name : stdgo.GoString = "";
    public var _input : stdgo.GoString = "";
    public var _ok : Bool = false;
    public var _names : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _results : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_name:stdgo.GoString, ?_input:stdgo.GoString, ?_ok:Bool, ?_names:stdgo.Slice<stdgo.GoString>, ?_results:stdgo.Slice<stdgo.GoString>) {
        if (_name != null) this._name = _name;
        if (_input != null) this._input = _input;
        if (_ok != null) this._ok = _ok;
        if (_names != null) this._names = _names;
        if (_results != null) this._results = _results;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiParseTest(_name, _input, _ok, _names, _results);
    }
}
