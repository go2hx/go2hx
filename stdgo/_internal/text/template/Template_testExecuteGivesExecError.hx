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
function testExecuteGivesExecError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).parse(("hello" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((0 : stdgo._internal.text.template.Template_ErrorWriter.ErrorWriter)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        };
        if (_err.error() != (("always be failing" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected %q error; got %q" : stdgo.GoString), stdgo.Go.toInterface(("always be failing" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).parse(("hello, {{.X.Y}}" : stdgo.GoString));
            _tmpl = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        _err = @:check2r _tmpl.execute(stdgo._internal.io.Io_discard.discard, stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.text.template.Template_ExecError.ExecError)) : stdgo._internal.text.template.Template_ExecError.ExecError), _1 : true };
        } catch(_) {
            { _0 : ({} : stdgo._internal.text.template.Template_ExecError.ExecError), _1 : false };
        }, _eerr = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _t.fatalf(("did not expect ExecError %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_eerr)));
        };
        var _expect = ("field X in type int" : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _expect?.__copy__())) {
            @:check2r _t.errorf(("expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_err));
        };
    }
