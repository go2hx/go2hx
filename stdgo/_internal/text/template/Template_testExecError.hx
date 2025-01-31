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
function testExecError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("top" : stdgo.GoString)).parse(("line 1\nline 2\nline 3\n{{template \"one\" .}}\n{{define \"one\"}}{{template \"two\" .}}{{end}}\n{{define \"two\"}}{{template \"three\" .}}{{end}}\n{{define \"three\"}}{{index \"hi\" $}}{{end}}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("parse error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.toInterface((5 : stdgo.GoInt)));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        {};
        var _got = (_err.error()?.__copy__() : stdgo.GoString);
        if (_got != (("template: top:7:20: executing \"three\" at <index \"hi\" $>: error calling index: index out of range: 5" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected\n%q\ngot\n%q" : stdgo.GoString), stdgo.Go.toInterface(("template: top:7:20: executing \"three\" at <index \"hi\" $>: error calling index: index out of range: 5" : stdgo.GoString)), stdgo.Go.toInterface(_got));
        };
    }
