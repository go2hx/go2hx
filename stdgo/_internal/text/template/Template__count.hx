package stdgo._internal.text.template;
function _count(_n:stdgo.GoInt):stdgo.Chan<stdgo.GoString> {
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Chan<stdgo.GoString>);
        };
        var _c = (new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _n : Bool)) {
                        _c.__send__((("abcdefghijklmnop" : stdgo.GoString).__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString));
                        _i++;
                    };
                };
                if (_c != null) _c.__close__();
            };
            a();
        }));
        return _c;
    }
