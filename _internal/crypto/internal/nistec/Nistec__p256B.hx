package _internal.crypto.internal.nistec;
function _p256B():stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element> {
        _internal.crypto.internal.nistec.Nistec___p256BOnce.__p256BOnce.do_(function():Void {
            {
                var __tmp__ = (stdgo.Go.setRef(({} : _internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element)) : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P256Element.P256Element>).setBytes((new stdgo.Slice<stdgo.GoUInt8>(32, 32, ...[
(90 : stdgo.GoUInt8),
(198 : stdgo.GoUInt8),
(53 : stdgo.GoUInt8),
(216 : stdgo.GoUInt8),
(170 : stdgo.GoUInt8),
(58 : stdgo.GoUInt8),
(147 : stdgo.GoUInt8),
(231 : stdgo.GoUInt8),
(179 : stdgo.GoUInt8),
(235 : stdgo.GoUInt8),
(189 : stdgo.GoUInt8),
(85 : stdgo.GoUInt8),
(118 : stdgo.GoUInt8),
(152 : stdgo.GoUInt8),
(134 : stdgo.GoUInt8),
(188 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(176 : stdgo.GoUInt8),
(204 : stdgo.GoUInt8),
(83 : stdgo.GoUInt8),
(176 : stdgo.GoUInt8),
(246 : stdgo.GoUInt8),
(59 : stdgo.GoUInt8),
(206 : stdgo.GoUInt8),
(60 : stdgo.GoUInt8),
(62 : stdgo.GoUInt8),
(39 : stdgo.GoUInt8),
(210 : stdgo.GoUInt8),
(96 : stdgo.GoUInt8),
(75 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _internal.crypto.internal.nistec.Nistec___p256B.__p256B = __tmp__._0;
            };
        });
        return _internal.crypto.internal.nistec.Nistec___p256B.__p256B;
    }