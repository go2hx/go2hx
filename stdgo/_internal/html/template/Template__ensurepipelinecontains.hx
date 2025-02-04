package stdgo._internal.html.template;
function _ensurePipelineContains(_p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_pipenode.PipeNode>, _s:stdgo.Slice<stdgo.GoString>):Void {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _pipelineLen = ((@:checkr _p ?? throw "null pointer dereference").cmds.length : stdgo.GoInt);
        if ((_pipelineLen > (0 : stdgo.GoInt) : Bool)) {
            var _lastCmd = (@:checkr _p ?? throw "null pointer dereference").cmds[(_pipelineLen - (1 : stdgo.GoInt) : stdgo.GoInt)];
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _lastCmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_identifiernode.IdentifierNode>), _1 : false };
                }, _idNode = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var _esc = ((@:checkr _idNode ?? throw "null pointer dereference").ident?.__copy__() : stdgo.GoString);
                        if ((stdgo._internal.html.template.Template__predefinedescapers._predefinedEscapers[_esc] ?? false)) {
                            if ((((@:checkr _p ?? throw "null pointer dereference").cmds.length == (1 : stdgo.GoInt)) && (((@:checkr _lastCmd ?? throw "null pointer dereference").args.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                                (@:checkr _lastCmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)] = stdgo.Go.asInterface(@:check2r @:check2r stdgo._internal.text.template.parse.Parse_newidentifier.newIdentifier(("_eval_args_" : stdgo.GoString)).setTree(null).setPos((@:checkr _lastCmd ?? throw "null pointer dereference").args[(0 : stdgo.GoInt)].position()));
                                (@:checkr _p ?? throw "null pointer dereference").cmds = stdgo._internal.html.template.Template__appendcmd._appendCmd((@:checkr _p ?? throw "null pointer dereference").cmds, stdgo._internal.html.template.Template__newidentcmd._newIdentCmd(_esc?.__copy__(), (@:checkr _p ?? throw "null pointer dereference").position()));
                                _pipelineLen++;
                            };
                            var _dup = (false : Bool);
                            for (_i => _escaper in _s) {
                                if (stdgo._internal.html.template.Template__escfnseq._escFnsEq(_esc?.__copy__(), _escaper?.__copy__())) {
                                    _s[(_i : stdgo.GoInt)] = (@:checkr _idNode ?? throw "null pointer dereference").ident?.__copy__();
                                    _dup = true;
                                };
                            };
                            if (_dup) {
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
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _pipelineLen : Bool)) {
                var _cmd = (@:checkr _p ?? throw "null pointer dereference").cmds[(_i : stdgo.GoInt)];
_newCmds[(_i : stdgo.GoInt)] = _cmd;
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
        for (__6 => _name in _s) {
            if (!(_insertedIdents[stdgo._internal.html.template.Template__normalizeescfn._normalizeEscFn(_name?.__copy__())] ?? false)) {
                _newCmds = stdgo._internal.html.template.Template__appendcmd._appendCmd(_newCmds, stdgo._internal.html.template.Template__newidentcmd._newIdentCmd(_name?.__copy__(), (@:checkr _p ?? throw "null pointer dereference").position()));
            };
        };
        (@:checkr _p ?? throw "null pointer dereference").cmds = _newCmds;
    }
