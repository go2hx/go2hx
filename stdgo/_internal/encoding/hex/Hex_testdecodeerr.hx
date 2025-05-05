package stdgo._internal.encoding.hex;
function testDecodeErr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L97"
        for (__0 => _tt in stdgo._internal.encoding.hex.Hex__errtests._errTests) {
            var _out = (new stdgo.Slice<stdgo.GoUInt8>(((_tt._in.length) + (10 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.hex.Hex_decode.decode(_out, (_tt._in : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L100"
            if (((((_out.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != _tt._out) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L101"
                _t.errorf(("Decode(%q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(((_out.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
