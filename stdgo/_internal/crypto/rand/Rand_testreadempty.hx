package stdgo._internal.crypto.rand;
function testReadEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.crypto.rand.Rand_reader.reader.read((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
            @:check2r _t.fatalf(("Read(make([]byte, 0)) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.crypto.rand.Rand_reader.reader.read((null : stdgo.Slice<stdgo.GoUInt8>));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
            @:check2r _t.fatalf(("Read(nil) = %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
