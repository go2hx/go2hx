package _internal.vendor.golang_dot_org.x.crypto.chacha20;
function _newUnauthenticatedCipher(_c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher>, _key:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_Cipher.Cipher>; var _1 : stdgo.Error; } {
        if ((_key.length) != ((32 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("chacha20: wrong key size" : stdgo.GoString)) };
        };
        if ((_nonce.length) == ((24 : stdgo.GoInt))) {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.crypto.chacha20.Chacha20_hchaCha20.hchaCha20(_key, (_nonce.__slice__((0 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _key = __tmp__._0;
            };
            var _cNonce = (new stdgo.Slice<stdgo.GoUInt8>((12 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice((_cNonce.__slice__((4 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_nonce.__slice__((16 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _nonce = _cNonce;
        } else if ((_nonce.length) != ((12 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("chacha20: wrong nonce size" : stdgo.GoString)) };
        };
        {
            final __tmp__0 = (_key.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            final __tmp__1 = (_nonce.__slice__(0, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _key = __tmp__0;
            _nonce = __tmp__1;
        };
        _c._key = (new stdgo.GoArray<stdgo.GoUInt32>(8, 8, ...[stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((20 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((24 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_key.__slice__((28 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>)?.__copy__();
        _c._nonce = (new stdgo.GoArray<stdgo.GoUInt32>(3, 3, ...[stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_nonce.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_nonce.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_nonce.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>)?.__copy__();
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
