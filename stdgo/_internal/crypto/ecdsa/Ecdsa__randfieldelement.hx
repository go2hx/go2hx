package stdgo._internal.crypto.ecdsa;
function _randFieldElement(_c:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } {
        var _k = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        while (true) {
            var n = _c.params().n;
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((((@:check2r n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                {
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _b);
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _k, _1 : _err };
                };
            };
            {
                var _excess = (((_b.length) * (8 : stdgo.GoInt) : stdgo.GoInt) - @:check2r n.bitLen() : stdgo.GoInt);
                if ((_excess > (0 : stdgo.GoInt) : Bool)) {
                    _b[(0 : stdgo.GoInt)] = (_b[(0 : stdgo.GoInt)] >> (_excess) : stdgo.GoUInt8);
                };
            };
            _k = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_b);
            if (((@:check2r _k.sign() != (0 : stdgo.GoInt)) && (@:check2r _k.cmp(n) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : _k, _1 : _err };
            };
        };
    }
