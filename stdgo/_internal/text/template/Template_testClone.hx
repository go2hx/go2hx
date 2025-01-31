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
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parse(("{{define \"a\"}}{{template \"b\"}}{{template \"c\"}}{{end}}" : stdgo.GoString)), _root:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = @:check2r _root.parse(("{{define \"b\"}}b{{end}}" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _clone = ({
            var __f__ = stdgo._internal.text.template.Template_must.must;
            var __tmp__ = @:check2r _root.clone();
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        {
            var __tmp__ = @:check2r _root.parse(("{{define \"c\"}}root{{end}}" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = @:check2r _clone.parse(("{{define \"c\"}}clone{{end}}" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (_k => _v in (@:checkr _clone ?? throw "null pointer dereference")._common._tmpl) {
            if (((_k == (@:checkr _clone ?? throw "null pointer dereference")._name) && (((@:checkr _v ?? throw "null pointer dereference")._common._tmpl[_k] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>)) != _clone) : Bool)) {
                @:check2r _t.error(stdgo.Go.toInterface(("clone does not contain root" : stdgo.GoString)));
            };
            if (_v != (((@:checkr _v ?? throw "null pointer dereference")._common._tmpl[(@:checkr _v ?? throw "null pointer dereference")._name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>)))) {
                @:check2r _t.errorf(("clone does not contain self for %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            };
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _err = @:check2r _root.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("a" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((@:check2 _b.string() : stdgo.GoString) != (("broot" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("broot" : stdgo.GoString)), stdgo.Go.toInterface((@:check2 _b.string() : stdgo.GoString)));
        };
        @:check2 _b.reset();
        _err = @:check2r _clone.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("a" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((@:check2 _b.string() : stdgo.GoString) != (("bclone" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("bclone" : stdgo.GoString)), stdgo.Go.toInterface((@:check2 _b.string() : stdgo.GoString)));
        };
    }
