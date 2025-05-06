package stdgo._internal.go.ast;
function _sortSpecs(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _specs:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>):stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L105"
        if (((_specs.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L106"
            return _specs;
        };
        var _pos = (new stdgo.Slice<stdgo._internal.go.ast.Ast_t_posspan.T_posSpan>((_specs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_specs.length : stdgo.GoInt).toBasic() > 0 ? (_specs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.ast.Ast_t_posspan.T_posSpan)]) : stdgo.Slice<stdgo._internal.go.ast.Ast_t_posspan.T_posSpan>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L111"
        for (_i => _s in _specs) {
            _pos[(_i : stdgo.GoInt)] = (new stdgo._internal.go.ast.Ast_t_posspan.T_posSpan(_s.pos(), _s.end()) : stdgo._internal.go.ast.Ast_t_posspan.T_posSpan);
        };
        var _begSpecs = (_pos[(0 : stdgo.GoInt)].start : stdgo._internal.go.token.Token_pos.Pos);
        var _endSpecs = (_pos[((_pos.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end : stdgo._internal.go.token.Token_pos.Pos);
        var _beg = (_fset.file(_begSpecs).lineStart(stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _begSpecs)) : stdgo._internal.go.token.Token_pos.Pos);
        var _endLine = (stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _endSpecs) : stdgo.GoInt);
        var _endFile = _fset.file(_endSpecs);
        var _end:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L122"
        if (_endLine == (_endFile.lineCount())) {
            _end = _endSpecs;
        } else {
            _end = _endFile.lineStart((_endLine + (1 : stdgo.GoInt) : stdgo.GoInt));
        };
        var _first = ((@:checkr _f ?? throw "null pointer dereference").comments.length : stdgo.GoInt);
        var _last = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L129"
        for (_i => _g in (@:checkr _f ?? throw "null pointer dereference").comments) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L130"
            if ((_g.end() >= _end : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L131"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L134"
            if ((_beg <= _g.pos() : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L136"
                if ((_i < _first : Bool)) {
                    _first = _i;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L139"
                if ((_i > _last : Bool)) {
                    _last = _i;
                };
            };
        };
        var _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L146"
        if ((_last >= (0 : stdgo.GoInt) : Bool)) {
            _comments = ((@:checkr _f ?? throw "null pointer dereference").comments.__slice__(_first, (_last + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
        var _importComments = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>, stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>, stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>>);
        var _specIndex = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L153"
        for (__16 => _g in _comments) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L154"
            while ((((_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt) < (_specs.length) : Bool) && (_pos[(_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt)].start <= _g.pos() : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L155"
                _specIndex++;
            };
            var _left:Bool = false;
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L159"
            if (((_specIndex == (0 : stdgo.GoInt)) && (_pos[(_specIndex : stdgo.GoInt)].start > _g.pos() : Bool) : Bool)) {
                _left = true;
            } else if ((((_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt) < (_specs.length) : Bool) && ((stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _pos[(_specIndex : stdgo.GoInt)].start) + (1 : stdgo.GoInt) : stdgo.GoInt) == stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _g.pos())) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L163"
                _specIndex++;
                _left = true;
            };
            var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_specs[(_specIndex : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
            _importComments[_s] = ((_importComments[_s] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>)).__append__(({ _left : _left, _cg : _g } : stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos)) : stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L175"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_specs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var _ipath = (stdgo._internal.go.ast.Ast__importpath._importPath(_specs[(_i : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            var _jpath = (stdgo._internal.go.ast.Ast__importpath._importPath(_specs[(_j : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L178"
            if (_ipath != (_jpath)) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L179"
                return (_ipath < _jpath : Bool);
            };
            var _iname = (stdgo._internal.go.ast.Ast__importname._importName(_specs[(_i : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            var _jname = (stdgo._internal.go.ast.Ast__importname._importName(_specs[(_j : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L183"
            if (_iname != (_jname)) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L184"
                return (_iname < _jname : Bool);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L186"
            return (stdgo._internal.go.ast.Ast__importcomment._importComment(_specs[(_i : stdgo.GoInt)]) < stdgo._internal.go.ast.Ast__importcomment._importComment(_specs[(_j : stdgo.GoInt)]) : Bool);
        });
        var _deduped = (_specs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L192"
        for (_i => _s in _specs) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L193"
            if (((_i == ((_specs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) || !stdgo._internal.go.ast.Ast__collapse._collapse(_s, _specs[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _deduped = (_deduped.__append__(_s) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
            } else {
                var _p = (_s.pos() : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L197"
                _fset.file(_p).mergeLine(stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _p));
            };
        };
        _specs = _deduped;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L203"
        for (_i => _s in _specs) {
            var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L205"
            if (({
                final value = (@:checkr _s ?? throw "null pointer dereference").name;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").namePos = _pos[(_i : stdgo.GoInt)].start;
            };
            (@:checkr (@:checkr _s ?? throw "null pointer dereference").path ?? throw "null pointer dereference").valuePos = _pos[(_i : stdgo.GoInt)].start;
            (@:checkr _s ?? throw "null pointer dereference").endPos = _pos[(_i : stdgo.GoInt)].end;
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L210"
            for (__17 => _g in (_importComments[_s] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>))) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L211"
                for (__18 => _c in (@:checkr _g._cg ?? throw "null pointer dereference").list) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L212"
                    if (_g._left) {
                        (@:checkr _c ?? throw "null pointer dereference").slash = (_pos[(_i : stdgo.GoInt)].start - (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
                    } else {
                        (@:checkr _c ?? throw "null pointer dereference").slash = _pos[(_i : stdgo.GoInt)].end;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L225"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_comments), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L226"
            return (_comments[(_i : stdgo.GoInt)].pos() < _comments[(_j : stdgo.GoInt)].pos() : Bool);
        });
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L229"
        return _specs;
    }
