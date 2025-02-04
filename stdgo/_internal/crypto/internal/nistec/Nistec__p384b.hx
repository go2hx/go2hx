package stdgo._internal.crypto.internal.nistec;
function _p384B():stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element> {
        @:check2 stdgo._internal.crypto.internal.nistec.Nistec___p384bonce.__p384BOnce.do_(function():Void {
            {
                var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element)) : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>).setBytes((new stdgo.Slice<stdgo.GoUInt8>(48, 48, ...[
(179 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(47 : stdgo.GoUInt8),
(167 : stdgo.GoUInt8),
(226 : stdgo.GoUInt8),
(62 : stdgo.GoUInt8),
(231 : stdgo.GoUInt8),
(228 : stdgo.GoUInt8),
(152 : stdgo.GoUInt8),
(142 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(107 : stdgo.GoUInt8),
(227 : stdgo.GoUInt8),
(248 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(25 : stdgo.GoUInt8),
(24 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(156 : stdgo.GoUInt8),
(110 : stdgo.GoUInt8),
(254 : stdgo.GoUInt8),
(129 : stdgo.GoUInt8),
(65 : stdgo.GoUInt8),
(18 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(20 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(143 : stdgo.GoUInt8),
(80 : stdgo.GoUInt8),
(19 : stdgo.GoUInt8),
(135 : stdgo.GoUInt8),
(90 : stdgo.GoUInt8),
(198 : stdgo.GoUInt8),
(86 : stdgo.GoUInt8),
(57 : stdgo.GoUInt8),
(141 : stdgo.GoUInt8),
(138 : stdgo.GoUInt8),
(46 : stdgo.GoUInt8),
(209 : stdgo.GoUInt8),
(157 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(133 : stdgo.GoUInt8),
(200 : stdgo.GoUInt8),
(237 : stdgo.GoUInt8),
(211 : stdgo.GoUInt8),
(236 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(239 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                stdgo._internal.crypto.internal.nistec.Nistec___p384b.__p384B = @:tmpset0 __tmp__._0;
            };
        });
        return stdgo._internal.crypto.internal.nistec.Nistec___p384b.__p384B;
    }
