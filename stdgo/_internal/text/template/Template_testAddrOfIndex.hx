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
function testAddrOfIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _texts = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{range .}}{{.String}}{{end}}" : stdgo.GoString), ("{{with index . 0}}{{.String}}{{end}}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__8 => _text in _texts) {
            var _tmpl = ({
                var __f__ = stdgo._internal.text.template.Template_must.must;
                var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("tmpl" : stdgo.GoString)).parse(_text?.__copy__());
                __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            var _err = (@:check2r _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.text.template.Template_V.V>(1, 1, ...[(new stdgo._internal.text.template.Template_V.V((1 : stdgo.GoInt)) : stdgo._internal.text.template.Template_V.V)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template_V.V)])) : stdgo.Slice<stdgo._internal.text.template.Template_V.V>)))))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatalf(("%s: Execute: %v" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
            };
            if ((@:check2 _buf.string() : stdgo.GoString) != (("<1>" : stdgo.GoString))) {
                @:check2r _t.fatalf(("%s: template output = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>))), stdgo.Go.toInterface(("<1>" : stdgo.GoString)));
            };
        };
    }
