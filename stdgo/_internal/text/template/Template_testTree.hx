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
function testTree(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tree = (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((1 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((2 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((3 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((4 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((5 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((6 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>)) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((7 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((8 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((9 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((10 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((11 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>)) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>)) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>);
        var __tmp__ = @:check2r @:check2r stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).delims(("(" : stdgo.GoString), (")" : stdgo.GoString)).parse(("\n\t(- define \"tree\" -)\n\t[\n\t\t(- .Val -)\n\t\t(- with .Left -)\n\t\t\t(template \"tree\" . -)\n\t\t(- end -)\n\t\t(- with .Right -)\n\t\t\t(- template \"tree\" . -)\n\t\t(- end -)\n\t]\n\t(- end -)\n" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("parse error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        {};
        _err = @:check2r @:check2r _tmpl.lookup(("tree" : stdgo.GoString)).execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tree)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("exec error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _result = ((@:check2 _b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_result != (("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString)), stdgo.Go.toInterface(_result));
        };
        @:check2 _b.reset();
        _err = @:check2r _tmpl.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("tree" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tree)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("exec error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _result = (@:check2 _b.string() : stdgo.GoString)?.__copy__();
        if (_result != (("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString)), stdgo.Go.toInterface(_result));
        };
    }
