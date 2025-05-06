package stdgo._internal.go.token;
function testLineStart(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _f = _fset.addFile(("input" : stdgo.GoString), (-1 : stdgo.GoInt), ((("one\ntwo\nthree\n" : stdgo.GoString) : stdgo.GoString).length));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L336"
        _f.setLinesForContent(((("one\ntwo\nthree\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L338"
        {
            var _line = (1 : stdgo.GoInt);
            while ((_line <= (3 : stdgo.GoInt) : Bool)) {
                var _pos = (_f.lineStart(_line) : stdgo._internal.go.token.Token_pos.Pos);
var _position = (_fset.position(_pos).__copy__() : stdgo._internal.go.token.Token_position.Position);
//"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L341"
                if (((_position.line != _line) || (_position.column != (1 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L342"
                    _t.errorf(("LineStart(%d) returned wrong pos %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)), stdgo.Go.toInterface(stdgo.Go.asInterface(_position)));
                };
                _line++;
            };
        };
    }
