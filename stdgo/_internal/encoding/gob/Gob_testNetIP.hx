package stdgo._internal.encoding.gob;
function testNetIP(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _enc = (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(7 : stdgo.GoUInt8), (10 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _ip:stdgo._internal.net.Net_IP.IP = new stdgo._internal.net.Net_IP.IP(0, 0);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_enc))).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<stdgo._internal.net.Net_IP.IP>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatalf(("decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_ip.string() : stdgo.GoString) != (("1.2.3.4" : stdgo.GoString))) {
            @:check2r _t.errorf(("decoded to %v, want 1.2.3.4" : stdgo.GoString), stdgo.Go.toInterface((_ip.string() : stdgo.GoString)));
        };
    }
