package stdgo._internal.text.template;
function testAddToZeroTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.parse.Parse_parse.parse(("c" : stdgo.GoString), ("{{define \"c\"}}root{{end}}" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>), stdgo._internal.text.template.Template__builtins._builtins()), _tree:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L459"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L460"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _tmpl:stdgo._internal.text.template.Template_template.Template = ({} : stdgo._internal.text.template.Template_template.Template);
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L463"
        _tmpl.addParseTree(("x" : stdgo.GoString), (_tree[("c" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>)));
    }
