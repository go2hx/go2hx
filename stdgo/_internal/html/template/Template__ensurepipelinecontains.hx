package stdgo._internal.html.template;
function _ensurePipelineContains(_p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _s:stdgo.Slice<stdgo.GoString>):Void {
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L278"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L280"
            return;
        };
        var _pipelineLen = ((@:checkr _p ?? throw "null pointer dereference").cmds.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L286"
        if ((_pipelineLen > (0 : stdgo.GoInt) : Bool)) {
            var _lastCmd = (@:checkr _p ?? throw "null pointer dereference").cmds[(_pipelineLen - (1 : stdgo.GoInt) : stdgo.GoInt)];
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L288"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _lastCmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : false };
                }, _idNode = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L289"
                    {
                        var _esc = ((@:checkr _idNode ?? throw "null pointer dereference").ident?.__copy__() : stdgo.GoString);
                        if ((stdgo._internal.html.template.Template__predefinedescapers._predefinedEscapers[_esc] ?? false)) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L291"
                            if ((((@:checkr _p ?? throw "null pointer dereference").cmds.length == (1 : stdgo.GoInt)) && (((@:checkr _lastCmd ?? throw "null pointer dereference").args.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                                (@:checkr _lastCmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)] = stdgo.Go.asInterface(stdgo._internal.text.template.parse.Parse_newidentifier.newIdentifier(("_eval_args_" : stdgo.GoString)).setTree(null).setPos((@:checkr _lastCmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)].position()));
                                (@:checkr _p ?? throw "null pointer dereference").cmds = stdgo._internal.html.template.Template__appendcmd._appendCmd((@:checkr _p ?? throw "null pointer dereference").cmds, stdgo._internal.html.template.Template__newidentcmd._newIdentCmd(_esc?.__copy__(), (@:checkr _p ?? throw "null pointer dereference").position()));
                                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L299"
                                _pipelineLen++;
                            };
                            var _dup = (false : Bool);
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L304"
                            for (_i => _escaper in _s) {
                                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L305"
                                if (stdgo._internal.html.template.Template__escfnseq._escFnsEq(_esc?.__copy__(), _escaper?.__copy__())) {
                                    _s[(_i : stdgo.GoInt)] = (@:checkr _idNode ?? throw "null pointer dereference").ident?.__copy__();
                                    _dup = true;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L310"
                            if (_dup) {
                                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L313"
                                _pipelineLen--;
                            };
                        };
                    };
                };
            };
        };
        var _newCmds = (new stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>>((_pipelineLen : stdgo.GoInt).toBasic(), (_pipelineLen + (_s.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_commandnode.CommandNode>>);
        var _insertedIdents = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L321"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _pipelineLen : Bool)) {
                var _cmd = (@:checkr _p ?? throw "null pointer dereference").cmds[(_i : stdgo.GoInt)];
_newCmds[(_i : stdgo.GoInt)] = _cmd;
//"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L324"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _cmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : false };
                    }, _idNode = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _insertedIdents[stdgo._internal.html.template.Template__normalizeescfn._normalizeEscFn((@:checkr _idNode ?? throw "null pointer dereference").ident.__copy__())] = true;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L328"
        for (__6 => _name in _s) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L329"
            if (!(_insertedIdents[stdgo._internal.html.template.Template__normalizeescfn._normalizeEscFn(_name?.__copy__())] ?? false)) {
                _newCmds = stdgo._internal.html.template.Template__appendcmd._appendCmd(_newCmds, stdgo._internal.html.template.Template__newidentcmd._newIdentCmd(_name?.__copy__(), (@:checkr _p ?? throw "null pointer dereference").position()));
            };
        };
        (@:checkr _p ?? throw "null pointer dereference").cmds = _newCmds;
    }
