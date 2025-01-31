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
function testUnterminatedStringError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).parse(("hello\n\n{{`unterminated\n\n\n\n}}\n some more\n\n" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        var _str = (_err.error()?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_contains.contains(_str?.__copy__(), ("X:3: unterminated raw quoted string" : stdgo.GoString))) {
            @:check2r _t.fatalf(("unexpected error: %s" : stdgo.GoString), stdgo.Go.toInterface(_str));
        };
    }
