package stdgo._internal.html.template;
function _errorf(_k:stdgo._internal.html.template.Template_ErrorCode.ErrorCode, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _line:stdgo.GoInt, _f:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.html.template.Template_Error.Error> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return (stdgo.Go.setRef((new stdgo._internal.html.template.Template_Error.Error(_k, _node, stdgo.Go.str()?.__copy__(), _line, stdgo._internal.fmt.Fmt_sprintf.sprintf(_f?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__()) : stdgo._internal.html.template.Template_Error.Error)) : stdgo.Ref<stdgo._internal.html.template.Template_Error.Error>);
    }