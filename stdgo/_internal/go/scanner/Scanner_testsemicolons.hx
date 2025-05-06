package stdgo._internal.go.scanner;
function testSemicolons(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L492"
        for (__0 => _test in stdgo._internal.go.scanner.Scanner__semicolontests._semicolonTests.__copy__()) {
            var __0 = (_test._input?.__copy__() : stdgo.GoString), __1 = (_test._want?.__copy__() : stdgo.GoString);
var _want = __1, _input = __0;
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L494"
            stdgo._internal.go.scanner.Scanner__checksemi._checkSemi(_t, _input?.__copy__(), _want?.__copy__(), (0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L495"
            stdgo._internal.go.scanner.Scanner__checksemi._checkSemi(_t, _input?.__copy__(), _want?.__copy__(), (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L499"
            {
                var _i = ((_input.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while (((_i >= (0 : stdgo.GoInt) : Bool) && (_input[(_i : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L500"
                    stdgo._internal.go.scanner.Scanner__checksemi._checkSemi(_t, (_input.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _want.__copy__(), (0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
//"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L501"
                    stdgo._internal.go.scanner.Scanner__checksemi._checkSemi(_t, (_input.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _want.__copy__(), (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
                    _i--;
                };
            };
        };
    }
