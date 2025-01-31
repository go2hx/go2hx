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
@:keep @:allow(stdgo._internal.text.template.Template.ExecError_asInterface) class ExecError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo._internal.text.template.Template_ExecError.ExecError):stdgo.Error {
        @:recv var _e:stdgo._internal.text.template.Template_ExecError.ExecError = _e?.__copy__();
        return _e.err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.text.template.Template_ExecError.ExecError):stdgo.GoString {
        @:recv var _e:stdgo._internal.text.template.Template_ExecError.ExecError = _e?.__copy__();
        return _e.err.error()?.__copy__();
    }
}
