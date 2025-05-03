package stdgo._internal.crypto.rand;
@:keep @:allow(stdgo._internal.crypto.rand.Rand.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.crypto.rand.Rand_t_reader.T_reader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.crypto.rand.Rand_t_reader.T_reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_js.go#L31"
        {
            var _err = (stdgo._internal.crypto.rand.Rand__batchedgetrandom._batchedGetRandom(_b) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_js.go#L32"
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_js.go#L34"
        return { _0 : (_b.length), _1 : (null : stdgo.Error) };
    }
}
