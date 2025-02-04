package stdgo._internal.encoding.base64;
function _testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Bool {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:check2r _t.helper();
        if (_args[((_args.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] != (_args[(((_args.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)])) {
            @:check2r _t.errorf(_msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            return false;
        };
        return true;
    }
