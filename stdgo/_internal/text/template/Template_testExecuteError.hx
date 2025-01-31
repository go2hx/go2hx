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
function testExecuteError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _tmpl = stdgo._internal.text.template.Template_new_.new_(("error" : stdgo.GoString));
        var __tmp__ = @:check2r _tmpl.parse(("{{.MyError true}}" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("parse error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tVal._tVal)));
        if (_err == null) {
            @:check2r _t.errorf(("expected error; got none" : stdgo.GoString));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), stdgo._internal.text.template.Template__myError._myError.error()?.__copy__())) {
            if (stdgo._internal.text.template.Template__debug._debug.value) {
                stdgo._internal.fmt.Fmt_printf.printf(("test execute error: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            @:check2r _t.errorf(("expected myError; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
