package stdgo._internal.go.token;
function testRemoveFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _contentA = ((("this\nis\nfileA" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _contentB = ((("this\nis\nfileB" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _a = _fset.addFile(("fileA" : stdgo.GoString), (-1 : stdgo.GoInt), (_contentA.length));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L352"
        _a.setLinesForContent(_contentA);
        var _b = _fset.addFile(("fileB" : stdgo.GoString), (-1 : stdgo.GoInt), (_contentB.length));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L354"
        _b.setLinesForContent(_contentB);
        var _checkPos = (function(_pos:stdgo._internal.go.token.Token_pos.Pos, _want:stdgo.GoString):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L357"
            {
                var _got = ((_fset.position(_pos).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L358"
                    _t.errorf(("Position(%d) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        } : (stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void);
        var _checkNumFiles = (function(_want:stdgo.GoInt):Void {
            var _got = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L363"
            _fset.iterate(function(_0:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):Bool {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L363"
                _got++;
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L363"
                return true;
            });
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L364"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L365"
                _t.errorf(("Iterate called %d times, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        } : stdgo.GoInt -> Void);
        var _apos3 = (_a.pos((3 : stdgo.GoInt)) : stdgo._internal.go.token.Token_pos.Pos);
        var _bpos3 = (_b.pos((3 : stdgo.GoInt)) : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L371"
        _checkPos(_apos3, ("fileA:1:4" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L372"
        _checkPos(_bpos3, ("fileB:1:4" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L373"
        _checkNumFiles((2 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L376"
        _fset.removeFile(_a);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L377"
        _checkPos(_apos3, ("-" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L378"
        _checkPos(_bpos3, ("fileB:1:4" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L379"
        _checkNumFiles((1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L382"
        _fset.removeFile(_a);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L383"
        _checkPos(_apos3, ("-" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L384"
        _checkPos(_bpos3, ("fileB:1:4" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L385"
        _checkNumFiles((1 : stdgo.GoInt));
    }
