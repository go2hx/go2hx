package stdgo._internal.html.template;
function _appendCmd(_cmds:stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>>, _cmd:stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>):stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>> {
        {
            var _n = (_cmds.length : stdgo.GoInt);
            if (_n != ((0 : stdgo.GoInt))) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _cmds[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : false };
                }, _last = __tmp__._0, _okLast = __tmp__._1;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _cmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : false };
                }, _next = __tmp__._0, _okNext = __tmp__._1;
                if (((_okLast && _okNext : Bool) && ((stdgo._internal.html.template.Template__redundantfuncs._redundantFuncs[(@:checkr _last ?? throw "null pointer dereference").ident] ?? (null : stdgo.GoMap<stdgo.GoString, Bool>))[(@:checkr _next ?? throw "null pointer dereference").ident] ?? false) : Bool)) {
                    return _cmds;
                };
            };
        };
        return (_cmds.__append__(_cmd));
    }
