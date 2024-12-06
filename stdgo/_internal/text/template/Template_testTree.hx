package stdgo._internal.text.template;
function testTree(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tree = (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((1 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((2 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((3 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((4 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((5 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((6 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>)) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((7 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((8 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((9 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((10 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.text.template.Template_Tree.Tree((11 : stdgo.GoInt), null, null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>), null) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>)) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>)) : stdgo._internal.text.template.Template_Tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.Template_Tree.Tree>);
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).delims(("(" : stdgo.GoString), (")" : stdgo.GoString)).parse(("\n\t(- define \"tree\" -)\n\t[\n\t\t(- .Val -)\n\t\t(- with .Left -)\n\t\t\t(template \"tree\" . -)\n\t\t(- end -)\n\t\t(- with .Right -)\n\t\t\t(- template \"tree\" . -)\n\t\t(- end -)\n\t]\n\t(- end -)\n" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("parse error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        {};
        _err = _tmpl.lookup(("tree" : stdgo.GoString)).execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(_tree));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("exec error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _result = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_result != (("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString))) {
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString)), stdgo.Go.toInterface(_result));
        };
        _b.reset();
        _err = _tmpl.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("tree" : stdgo.GoString), stdgo.Go.toInterface(_tree));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("exec error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _result = (_b.string() : stdgo.GoString)?.__copy__();
        if (_result != (("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString))) {
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("[1[2[3[4]][5[6]]][7[8[9]][10[11]]]]" : stdgo.GoString)), stdgo.Go.toInterface(_result));
        };
    }
