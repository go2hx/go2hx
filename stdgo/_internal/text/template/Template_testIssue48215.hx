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
function testIssue48215(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(stdgo.Go.str()?.__copy__()).parse(("{{ .S }}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        _err = @:check2r _tmpl.execute(stdgo._internal.io.Io_discard.discard, stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.text.template.Template_T_testIssue48215___localname___B_58304.T_testIssue48215___localname___B_58304() : stdgo._internal.text.template.Template_T_testIssue48215___localname___B_58304.T_testIssue48215___localname___B_58304))));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("did not get error for nil embedded struct" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("reflect: indirection through nil pointer to embedded struct field A" : stdgo.GoString))) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
