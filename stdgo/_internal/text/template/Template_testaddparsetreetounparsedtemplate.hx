package stdgo._internal.text.template;
function testAddParseTreeToUnparsedTemplate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _master = (("{{define \"master\"}}{{end}}" : stdgo.GoString) : stdgo.GoString);
        var _tmpl = stdgo._internal.text.template.Template_new_.new_(("master" : stdgo.GoString));
        var __tmp__ = stdgo._internal.text.template.parse.Parse_parse.parse(("master" : stdgo.GoString), _master?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), _tree:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L299"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L300"
            _t.fatalf(("unexpected parse err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _masterTree = (_tree[("master" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L303"
        _tmpl.addParseTree(("master" : stdgo.GoString), _masterTree);
    }
