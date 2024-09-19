package stdgo._internal.html.template;
function _appendCmd(_cmds:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>, _cmd:stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>):stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>> {
        {
            var _n = (_cmds.length : stdgo.GoInt);
            if (_n != ((0 : stdgo.GoInt))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cmds[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : false };
                }, _last = __tmp__._0, _okLast = __tmp__._1;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cmd.args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : false };
                }, _next = __tmp__._0, _okNext = __tmp__._1;
                if (((_okLast && _okNext : Bool) && ((stdgo._internal.html.template.Template__redundantFuncs._redundantFuncs[_last.ident] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>))[_next.ident] ?? false) : Bool)) {
                    return _cmds;
                };
            };
        };
        return (_cmds.__append__(_cmd));
    }
