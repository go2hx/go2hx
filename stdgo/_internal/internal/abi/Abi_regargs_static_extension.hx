package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.RegArgs_asInterface) class RegArgs_static_extension {
    @:keep
    @:tdfield
    static public function intRegArgAddr( _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs>, _reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L75"
        if ((((_argSize > (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) : Bool) || _argSize == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : Bool) || ((_argSize & ((_argSize - (new stdgo.GoUIntptr(1) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr) != (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L76"
            throw stdgo.Go.toInterface(("invalid argSize" : stdgo.GoString));
        };
        var _offset = ((new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L79"
        if (false) {
            _offset = ((new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) - _argSize : stdgo.GoUIntptr);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L82"
        return (stdgo.Go.toInterface(((new stdgo.GoUIntptr((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference").ints[(_reg : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) + _offset : stdgo.GoUIntptr)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
    @:keep
    @:tdfield
    static public function dump( _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_regargs.RegArgs> = _r;
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L48"
        stdgo.Go.print(("Ints:" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L49"
        for (__201 => _x in (@:checkr _r ?? throw "null pointer dereference").ints.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L50"
            stdgo.Go.print((" " : stdgo.GoString), _x);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L52"
        stdgo.Go.println("");
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L53"
        stdgo.Go.print(("Floats:" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L54"
        for (__202 => _x in (@:checkr _r ?? throw "null pointer dereference").floats.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L55"
            stdgo.Go.print((" " : stdgo.GoString), @:privateAccess ((_x).toBasic() : haxe.UInt64).toString());
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L57"
        stdgo.Go.println("");
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L58"
        stdgo.Go.print(("Ptrs:" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L59"
        for (__203 => _x in (@:checkr _r ?? throw "null pointer dereference").ptrs.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L60"
            stdgo.Go.print((" " : stdgo.GoString), _x);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/abi/abi.go#L62"
        stdgo.Go.println("");
    }
}
