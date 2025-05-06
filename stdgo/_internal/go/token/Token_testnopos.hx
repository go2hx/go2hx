package stdgo._internal.go.token;
function testNoPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L31"
        if ((0 : stdgo._internal.go.token.Token_pos.Pos).isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L32"
            _t.errorf(("NoPos should not be valid" : stdgo.GoString));
        };
        var _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L35"
        stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("nil NoPos" : stdgo.GoString), _fset.position((0 : stdgo._internal.go.token.Token_pos.Pos))?.__copy__(), (new stdgo._internal.go.token.Token_position.Position() : stdgo._internal.go.token.Token_position.Position));
        _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L37"
        stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("fset NoPos" : stdgo.GoString), _fset.position((0 : stdgo._internal.go.token.Token_pos.Pos))?.__copy__(), (new stdgo._internal.go.token.Token_position.Position() : stdgo._internal.go.token.Token_position.Position));
    }
