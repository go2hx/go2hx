package stdgo._internal.encoding.ascii85;
function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L46"
        _t.helper();
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L47"
        if (_args[((_args.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] != (_args[(((_args.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)])) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L48"
            _t.errorf(_msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L49"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L51"
        return true;
    }
