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
function _errRecover(_errp:stdgo.Ref<stdgo.Error>):Void {
        var _e = (stdgo._internal.text.template.Template__recover._recover() : stdgo.AnyInterface);
        if (_e != null) {
            {
                final __type__ = _e;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.runtime.Runtime_Error.Error))) {
                    var _err:stdgo._internal.runtime.Runtime_Error.Error = __type__ == null ? (null : stdgo._internal.runtime.Runtime_Error.Error) : __type__.__underlying__() == null ? (null : stdgo._internal.runtime.Runtime_Error.Error) : __type__ == null ? (null : stdgo._internal.runtime.Runtime_Error.Error) : __type__.__underlying__().value;
                    throw stdgo.Go.toInterface(_e);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.text.template.Template_T_writeError.T_writeError))) {
                    var _err:stdgo._internal.text.template.Template_T_writeError.T_writeError = __type__ == null ? ({} : stdgo._internal.text.template.Template_T_writeError.T_writeError) : __type__.__underlying__() == null ? ({} : stdgo._internal.text.template.Template_T_writeError.T_writeError) : __type__ == null ? ({} : stdgo._internal.text.template.Template_T_writeError.T_writeError) : __type__.__underlying__().value;
                    {
                        var __tmp__ = _err.err;
                        var x = (_errp : stdgo.Error);
                        x.error = __tmp__.error;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.text.template.Template_ExecError.ExecError))) {
                    var _err:stdgo._internal.text.template.Template_ExecError.ExecError = __type__ == null ? ({} : stdgo._internal.text.template.Template_ExecError.ExecError) : __type__.__underlying__() == null ? ({} : stdgo._internal.text.template.Template_ExecError.ExecError) : __type__ == null ? ({} : stdgo._internal.text.template.Template_ExecError.ExecError) : __type__.__underlying__().value;
                    {
                        var __tmp__ = stdgo.Go.asInterface(_err);
                        var x = (_errp : stdgo.Error);
                        x.error = __tmp__.error;
                    };
                } else {
                    var _err:stdgo.AnyInterface = __type__?.__underlying__();
                    throw stdgo.Go.toInterface(_e);
                };
            };
        };
    }
