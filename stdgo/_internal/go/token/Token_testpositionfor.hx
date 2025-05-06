package stdgo._internal.go.token;
function testPositionFor(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _src = ((("\nfoo\nb\nar\n//line :100\nfoobar\n//line bar:3\ndone\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _f = _fset.addFile(("foo" : stdgo.GoString), _fset.base(), (_src.length));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L287"
        _f.setLinesForContent(_src);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L290"
        for (_i => _offs in (@:checkr _f ?? throw "null pointer dereference")._lines) {
            var _got1 = (_f.positionFor(_f.pos(_offs), false)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            var _got2 = (_f.positionFor(_f.pos(_offs), true)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            var _got3 = (_f.position(_f.pos(_offs))?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            var _want = (new stdgo._internal.go.token.Token_position.Position(("foo" : stdgo.GoString), _offs, (_i + (1 : stdgo.GoInt) : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.go.token.Token_position.Position);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L295"
            stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("1. PositionFor unadjusted" : stdgo.GoString), _got1?.__copy__(), _want?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L296"
            stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("1. PositionFor adjusted" : stdgo.GoString), _got2?.__copy__(), _want?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L297"
            stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("1. Position" : stdgo.GoString), _got3?.__copy__(), _want?.__copy__());
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L302"
        _f.addLineInfo((@:checkr _f ?? throw "null pointer dereference")._lines[(4 : stdgo.GoInt)], (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (100 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L303"
        _f.addLineInfo((@:checkr _f ?? throw "null pointer dereference")._lines[(6 : stdgo.GoInt)], ("bar" : stdgo.GoString), (3 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L306"
        for (_i => _offs in (@:checkr _f ?? throw "null pointer dereference")._lines) {
            var _got1 = (_f.positionFor(_f.pos(_offs), false)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            var _want = (new stdgo._internal.go.token.Token_position.Position(("foo" : stdgo.GoString), _offs, (_i + (1 : stdgo.GoInt) : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.go.token.Token_position.Position);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L309"
            stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("2. PositionFor unadjusted" : stdgo.GoString), _got1?.__copy__(), _want?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L313"
        for (_i => _offs in (@:checkr _f ?? throw "null pointer dereference")._lines) {
            var _got2 = (_f.positionFor(_f.pos(_offs), true)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            var _got3 = (_f.position(_f.pos(_offs))?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            var _want = (new stdgo._internal.go.token.Token_position.Position(("foo" : stdgo.GoString), _offs, (_i + (1 : stdgo.GoInt) : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo._internal.go.token.Token_position.Position);
            var _line = (_want.line : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L319"
            if (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) >= (5 : stdgo.GoInt) : Bool)) {
                _want.filename = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                _want.line = ((_line - (5 : stdgo.GoInt) : stdgo.GoInt) + (100 : stdgo.GoInt) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L323"
            if (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) >= (7 : stdgo.GoInt) : Bool)) {
                _want.filename = ("bar" : stdgo.GoString);
                _want.line = ((_line - (7 : stdgo.GoInt) : stdgo.GoInt) + (3 : stdgo.GoInt) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L327"
            stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("3. PositionFor adjusted" : stdgo.GoString), _got2?.__copy__(), _want?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L328"
            stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("3. Position" : stdgo.GoString), _got3?.__copy__(), _want?.__copy__());
        };
    }
