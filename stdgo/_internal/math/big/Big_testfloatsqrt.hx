package stdgo._internal.math.big;
function testFloatSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L33"
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_68.T__struct_68>(12, 12, ...[
({ _x : ("0.03125" : stdgo.GoString), _want : ("0.17677669529663688110021109052621225982120898442211850914708496724884155980776337985629844179095519659187673077886403712811560450698134215158051518713749197892665283324093819909447499381264409775757143376369499645074628431682460775184106467733011114982619404115381053858929018135497032545349940642599871090667456829147610370507757690729404938184321879" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("0.125" : stdgo.GoString), _want : ("0.35355339059327376220042218105242451964241796884423701829416993449768311961552675971259688358191039318375346155772807425623120901396268430316103037427498395785330566648187639818894998762528819551514286752738999290149256863364921550368212935466022229965238808230762107717858036270994065090699881285199742181334913658295220741015515381458809876368643757" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("0.5" : stdgo.GoString), _want : ("0.70710678118654752440084436210484903928483593768847403658833986899536623923105351942519376716382078636750692311545614851246241802792536860632206074854996791570661133296375279637789997525057639103028573505477998580298513726729843100736425870932044459930477616461524215435716072541988130181399762570399484362669827316590441482031030762917619752737287514" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("2.0" : stdgo.GoString), _want : ("1.4142135623730950488016887242096980785696718753769480731766797379907324784621070388503875343276415727350138462309122970249248360558507372126441214970999358314132226659275055927557999505011527820605714701095599716059702745345968620147285174186408891986095523292304843087143214508397626036279952514079896872533965463318088296406206152583523950547457503" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("3.0" : stdgo.GoString), _want : ("1.7320508075688772935274463415058723669428052538103806280558069794519330169088000370811461867572485756756261414154067030299699450949989524788116555120943736485280932319023055820679748201010846749232650153123432669033228866506722546689218379712270471316603678615880190499865373798593894676503475065760507566183481296061009476021871903250831458295239598" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("4.0" : stdgo.GoString), _want : ("2.0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("1p512" : stdgo.GoString), _want : ("1p256" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("4p1024" : stdgo.GoString), _want : ("2p512" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("9p2048" : stdgo.GoString), _want : ("3p1024" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("1p-1024" : stdgo.GoString), _want : ("1p-512" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("4p-2048" : stdgo.GoString), _want : ("2p-1024" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68),
({ _x : ("9p-4096" : stdgo.GoString), _want : ("3p-2048" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_68.T__struct_68)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_68.T__struct_68>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L55"
            for (__9 => _prec in (new stdgo.Slice<stdgo.GoUInt>(13, 13, ...[
(24u32 : stdgo.GoUInt),
(53u32 : stdgo.GoUInt),
(64u32 : stdgo.GoUInt),
(65u32 : stdgo.GoUInt),
(100u32 : stdgo.GoUInt),
(128u32 : stdgo.GoUInt),
(129u32 : stdgo.GoUInt),
(200u32 : stdgo.GoUInt),
(256u32 : stdgo.GoUInt),
(400u32 : stdgo.GoUInt),
(600u32 : stdgo.GoUInt),
(800u32 : stdgo.GoUInt),
(1000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)) {
                var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec);
                //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L57"
                _x.parse(_test._x?.__copy__(), (10 : stdgo.GoInt));
                var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).sqrt(_x);
                var _want = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec);
                //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L61"
                _want.parse(_test._want?.__copy__(), (10 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L62"
                if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L63"
                    _t.errorf(("prec = %d, Sqrt(%v) =\ngot  %g;\nwant %g" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
                var _sq = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec((_prec + (32u32 : stdgo.GoUInt) : stdgo.GoUInt)).mul(_got, _got);
                var _diff = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).sub(_sq, _x);
                var _err = _diff.abs(_diff).setPrec(_prec);
                var _one = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setInt64((1i64 : stdgo.GoInt64));
                var _maxErr = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).mul((stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setMantExp(_one, (-(_prec : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)), _got);
                //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L87"
                if ((_err.cmp(_maxErr) >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/sqrt_test.go#L88"
                    _t.errorf(("prec = %d, Sqrt(%v) =\ngot err  %g;\nwant maxErr %g" : stdgo.GoString), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(stdgo.Go.asInterface(_err)), stdgo.Go.toInterface(stdgo.Go.asInterface(_maxErr)));
                };
            };
        };
    }
