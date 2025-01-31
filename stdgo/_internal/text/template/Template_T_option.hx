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
@:structInit @:using(stdgo._internal.text.template.Template_T_option_static_extension.T_option_static_extension) class T_option {
    public var _missingKey : stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction = ((0 : stdgo.GoInt) : stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction);
    public function new(?_missingKey:stdgo._internal.text.template.Template_T_missingKeyAction.T_missingKeyAction) {
        if (_missingKey != null) this._missingKey = _missingKey;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_option(_missingKey);
    }
}
