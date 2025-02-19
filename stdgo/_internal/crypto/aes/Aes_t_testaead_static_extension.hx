package stdgo._internal.crypto.aes;
@:keep @:allow(stdgo._internal.crypto.aes.Aes.T_testAEAD_asInterface) class T_testAEAD_static_extension {
    @:keep
    @:tdfield
    static public function inAESPackage( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>):Bool {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD> = _;
        return true;
    }
    @:keep
    @:tdfield
    static public function open( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Slice<stdgo.GoUInt8>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD> = _;
        return { _0 : (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function seal( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>, _a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo.Slice<stdgo.GoUInt8>, _d:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD> = _;
        return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function overhead( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD> = _;
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function nonceSize( _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>):stdgo.GoInt {
        @:recv var _:stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD> = _;
        return (0 : stdgo.GoInt);
    }
}
