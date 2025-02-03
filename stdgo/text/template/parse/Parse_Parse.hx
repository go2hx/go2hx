package stdgo.text.template.parse;
/**
    Package parse builds parse trees for templates as defined by text/template
    and html/template. Clients should use those packages to construct templates
    rather than this one, which provides shared internal data structures not
    intended for general use.
**/
class Parse {
    /**
        NewIdentifier returns a new IdentifierNode with the given identifier name.
    **/
    static public inline function newIdentifier(_ident:String):IdentifierNode {
        final _ident = (_ident : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_newIdentifier.newIdentifier(_ident);
    }
    /**
        Parse returns a map from template name to parse.Tree, created by parsing the
        templates described in the argument string. The top-level template will be
        given the specified name. If an error is encountered, parsing stops and an
        empty map is returned with the error.
    **/
    static public inline function parse(_name:String, _text:String, _leftDelim:String, _rightDelim:String, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Tuple<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.parse.Parse_Tree.Tree>>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        final _text = (_text : stdgo.GoString);
        final _leftDelim = (_leftDelim : stdgo.GoString);
        final _rightDelim = (_rightDelim : stdgo.GoString);
        return {
            final obj = stdgo._internal.text.template.parse.Parse_parse.parse(_name, _text, _leftDelim, _rightDelim, ...[for (i in _funcs) i]);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        New allocates a new parse tree with the given name.
    **/
    static public inline function new_(_name:String, _funcs:haxe.Rest<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):Tree {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.text.template.parse.Parse_new_.new_(_name, ...[for (i in _funcs) i]);
    }
    /**
        IsEmptyTree reports whether this tree (node) is empty of everything but space or comments.
    **/
    static public inline function isEmptyTree(_n:Node):Bool {
        return stdgo._internal.text.template.parse.Parse_isEmptyTree.isEmptyTree(_n);
    }
}
