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
function testParseGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_parseGlob.parseGlob(("DOES NOT EXIST" : stdgo.GoString)), __8:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected error for non-existent file; got none" : stdgo.GoString)));
        };
        {
            var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("error" : stdgo.GoString)).parseGlob(("[x" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected error for bad pattern; got none" : stdgo.GoString)));
        };
        var _template = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString));
        {
            var __tmp__ = @:check2r _template.parseGlob(("testdata/file*.tmpl" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.text.template.Template__testExecute._testExecute(stdgo._internal.text.template.Template__multiExecTests._multiExecTests, _template, _t);
    }
