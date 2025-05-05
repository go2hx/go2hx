package stdgo._internal.text.template;
function _count(_n:stdgo.GoInt):stdgo.Chan<stdgo.GoString> {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L718"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L719"
            return (null : stdgo.Chan<stdgo.GoString>);
        };
        var _c = (new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L722"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L723"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L724"
                        _c.__send__((("abcdefghijklmnop" : stdgo.GoString).__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L726"
                if (_c != null) _c.__close__();
            };
            a();
        }));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L728"
        return _c;
    }
