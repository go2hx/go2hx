package stdgo._internal.text.template;
function testAddToZeroTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template__parse._parse.parse(("c" : stdgo.GoString), ("{{define \"c\"}}root{{end}}" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), stdgo._internal.text.template.Template__builtins._builtins()), _tree:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _tmpl:stdgo._internal.text.template.Template_Template.Template = ({} : stdgo._internal.text.template.Template_Template.Template);
        _tmpl.addParseTree(("x" : stdgo.GoString), (_tree[("c" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>)));
    }