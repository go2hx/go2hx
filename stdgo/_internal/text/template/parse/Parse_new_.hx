package stdgo._internal.text.template.parse;
function new_(_name:stdgo.GoString, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree> {
        var _funcs = new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>(_funcs.length, 0, ..._funcs);
        return (stdgo.Go.setRef(({ name : _name?.__copy__(), _funcs : _funcs } : stdgo._internal.text.template.parse.Parse_tree.Tree)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_tree.Tree>);
    }
