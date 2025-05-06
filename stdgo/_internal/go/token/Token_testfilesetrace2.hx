package stdgo._internal.go.token;
function testFileSetRace2(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet(), _file = _fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), (-1 : stdgo.GoInt), (1000 : stdgo.GoInt)), _ch = (new stdgo.Chan<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L254"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L255"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L256"
                        _file.addLine(_i);
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L258"
                _ch.__send__((1 : stdgo.GoInt));
            };
            a();
        }));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L261"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var _pos = (_file.pos((0 : stdgo.GoInt)) : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L263"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L264"
                        _fset.positionFor(_pos, false);
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L266"
                _ch.__send__((1 : stdgo.GoInt));
            };
            a();
        }));
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L269"
        _ch.__get__();
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L270"
        _ch.__get__();
    }
