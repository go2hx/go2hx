package stdgo._internal.html.template;
function _ensurePipelineContains(_p:stdgo.Ref<stdgo._internal.text.template.parse.Parse_PipeNode.PipeNode>, _s:stdgo.Slice<stdgo.GoString>):Void {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _pipelineLen = (_p.cmds.length : stdgo.GoInt);
        if ((_pipelineLen > (0 : stdgo.GoInt) : Bool)) {
            var _lastCmd = _p.cmds[(_pipelineLen - (1 : stdgo.GoInt) : stdgo.GoInt)];
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_lastCmd.args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : false };
                }, _idNode = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var _esc = (_idNode.ident?.__copy__() : stdgo.GoString);
                        if ((stdgo._internal.html.template.Template__predefinedEscapers._predefinedEscapers[_esc] ?? false)) {
                            if (((_p.cmds.length == (1 : stdgo.GoInt)) && ((_lastCmd.args.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                                _lastCmd.args[(0 : stdgo.GoInt)] = stdgo.Go.asInterface(stdgo._internal.text.template.parse.Parse_newIdentifier.newIdentifier(("_eval_args_" : stdgo.GoString)).setTree(null).setPos(_lastCmd.args[(0 : stdgo.GoInt)].position()));
                                _p.cmds = stdgo._internal.html.template.Template__appendCmd._appendCmd(_p.cmds, stdgo._internal.html.template.Template__newIdentCmd._newIdentCmd(_esc?.__copy__(), _p.position()));
                                _pipelineLen++;
                            };
                            var _dup = (false : Bool);
                            for (_i => _escaper in _s) {
                                if (stdgo._internal.html.template.Template__escFnsEq._escFnsEq(_esc?.__copy__(), _escaper?.__copy__())) {
                                    _s[(_i : stdgo.GoInt)] = _idNode.ident?.__copy__();
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
        var _newCmds = (new stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>((_pipelineLen : stdgo.GoInt).toBasic(), (_pipelineLen + (_s.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>>);
        var _insertedIdents = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _pipelineLen : Bool)) {
                var _cmd = _p.cmds[(_i : stdgo.GoInt)];
_newCmds[(_i : stdgo.GoInt)] = _cmd;
{
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_cmd.args[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.text.template.parse.Parse_IdentifierNode.IdentifierNode>), _1 : false };
                    }, _idNode = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _insertedIdents[stdgo._internal.html.template.Template__normalizeEscFn._normalizeEscFn(_idNode.ident.__copy__())] = true;
                    };
                };
                _i++;
            };
        };
        for (__6 => _name in _s) {
            if (!(_insertedIdents[stdgo._internal.html.template.Template__normalizeEscFn._normalizeEscFn(_name?.__copy__())] ?? false)) {
                _newCmds = stdgo._internal.html.template.Template__appendCmd._appendCmd(_newCmds, stdgo._internal.html.template.Template__newIdentCmd._newIdentCmd(_name?.__copy__(), _p.position()));
            };
        };
        _p.cmds = _newCmds;
    }
