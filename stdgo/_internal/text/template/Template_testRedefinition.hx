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
function testRedefinition(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("tmpl1" : stdgo.GoString)).parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString));
                _tmpl = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t.fatalf(("parse 1: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = @:check2r _tmpl.parse(("{{define \"test\"}}bar{{end}}" : stdgo.GoString));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t.fatalf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = @:check2r @:check2r _tmpl.new_(("tmpl2" : stdgo.GoString)).parse(("{{define \"test\"}}bar{{end}}" : stdgo.GoString));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t.fatalf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
