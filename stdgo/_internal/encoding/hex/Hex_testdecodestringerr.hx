package stdgo._internal.encoding.hex;
function testDecodeStringErr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L107"
        for (__0 => _tt in stdgo._internal.encoding.hex.Hex__errtests._errTests) {
            var __tmp__ = stdgo._internal.encoding.hex.Hex_decodestring.decodeString(_tt._in?.__copy__()), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L109"
            if ((((_out : stdgo.GoString) != _tt._out) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L110"
                _t.errorf(("DecodeString(%q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
