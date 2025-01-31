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
function testMessageForExecuteEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tmpl = stdgo._internal.text.template.Template_new_.new_(("empty" : stdgo.GoString));
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _err = (@:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected initial error" : stdgo.GoString)));
        };
        var _got = (_err.error()?.__copy__() : stdgo.GoString);
        var _want = ("template: empty: \"empty\" is an incomplete or empty template" : stdgo.GoString);
        if (_got != (_want)) {
            @:check2r _t.errorf(("expected error %s got %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(stdgo.Go.str()?.__copy__()).parse(("{{define \"one\"}}one{{end}}{{define \"two\"}}two{{end}}" : stdgo.GoString)), _tests:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        @:check2r _tmpl.addParseTree(("secondary" : stdgo.GoString), (@:checkr _tests ?? throw "null pointer dereference").tree);
        _err = @:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected second error" : stdgo.GoString)));
        };
        _got = _err.error()?.__copy__();
        _want = ("template: empty: \"empty\" is an incomplete or empty template" : stdgo.GoString);
        if (_got != (_want)) {
            @:check2r _t.errorf(("expected error %s got %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        _err = @:check2r _tmpl.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("secondary" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
