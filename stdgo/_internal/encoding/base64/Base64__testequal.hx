package stdgo._internal.encoding.base64;
function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L102"
        _t.helper();
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L103"
        if (_args[((_args.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] != (_args[(((_args.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)])) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L104"
            _t.errorf(_msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L105"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L107"
        return true;
    }
