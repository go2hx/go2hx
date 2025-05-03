package stdgo._internal.text.template;
function _add(_args:haxe.Rest<stdgo.GoInt>):stdgo.GoInt {
        var _args = new stdgo.Slice<stdgo.GoInt>(_args.length, 0, ..._args);
        var _sum = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L748"
        for (__8 => _x in _args) {
            _sum = (_sum + (_x) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L751"
        return _sum;
    }
