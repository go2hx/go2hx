package stdgo.reflect;
private function set_gCBits(v:stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8>):stdgo.AnyInterface -> stdgo.Slice<stdgo.GoUInt8> {
        stdgo._internal.reflect.Reflect_gCBits.gCBits = v;
        return v;
    }
