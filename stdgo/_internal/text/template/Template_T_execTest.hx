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
@:structInit @:using(stdgo._internal.text.template.Template_T_execTest_static_extension.T_execTest_static_extension) class T_execTest {
    public var _name : stdgo.GoString = "";
    public var _input : stdgo.GoString = "";
    public var _output : stdgo.GoString = "";
    public var _data : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _ok : Bool = false;
    public function new(?_name:stdgo.GoString, ?_input:stdgo.GoString, ?_output:stdgo.GoString, ?_data:stdgo.AnyInterface, ?_ok:Bool) {
        if (_name != null) this._name = _name;
        if (_input != null) this._input = _input;
        if (_output != null) this._output = _output;
        if (_data != null) this._data = _data;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_execTest(_name, _input, _output, _data, _ok);
    }
}
