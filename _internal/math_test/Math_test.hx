package _internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.math_test.Math_test__vf._vf, __tmp__1 = _internal.math_test.Math_test__acos._acos, __tmp__2 = _internal.math_test.Math_test__acosh._acosh, __tmp__3 = _internal.math_test.Math_test__asin._asin, __tmp__4 = _internal.math_test.Math_test__asinh._asinh, __tmp__5 = _internal.math_test.Math_test__atan._atan, __tmp__6 = _internal.math_test.Math_test__atanh._atanh, __tmp__7 = _internal.math_test.Math_test__atan2._atan2, __tmp__8 = _internal.math_test.Math_test__cbrt._cbrt, __tmp__9 = _internal.math_test.Math_test__ceil._ceil, __tmp__10 = _internal.math_test.Math_test__copysign._copysign, __tmp__11 = _internal.math_test.Math_test__cos._cos, __tmp__12 = _internal.math_test.Math_test__cosLarge._cosLarge, __tmp__13 = _internal.math_test.Math_test__cosh._cosh, __tmp__14 = _internal.math_test.Math_test__erf._erf, __tmp__15 = _internal.math_test.Math_test__erfc._erfc, __tmp__16 = _internal.math_test.Math_test__erfinv._erfinv, __tmp__17 = _internal.math_test.Math_test__exp._exp, __tmp__18 = _internal.math_test.Math_test__expm1._expm1, __tmp__19 = _internal.math_test.Math_test__expm1Large._expm1Large, __tmp__20 = _internal.math_test.Math_test__exp2._exp2, __tmp__21 = _internal.math_test.Math_test__fabs._fabs, __tmp__22 = _internal.math_test.Math_test__fdim._fdim, __tmp__23 = _internal.math_test.Math_test__floor._floor, __tmp__24 = _internal.math_test.Math_test__fmod._fmod, __tmp__25 = _internal.math_test.Math_test__frexp._frexp, __tmp__26 = _internal.math_test.Math_test__gamma._gamma, __tmp__27 = _internal.math_test.Math_test__j0._j0, __tmp__28 = _internal.math_test.Math_test__j1._j1, __tmp__29 = _internal.math_test.Math_test__j2._j2, __tmp__30 = _internal.math_test.Math_test__jM3._jM3, __tmp__31 = _internal.math_test.Math_test__lgamma._lgamma, __tmp__32 = _internal.math_test.Math_test__log._log, __tmp__33 = _internal.math_test.Math_test__logb._logb, __tmp__34 = _internal.math_test.Math_test__log10._log10, __tmp__35 = _internal.math_test.Math_test__log1p._log1p, __tmp__36 = _internal.math_test.Math_test__log2._log2, __tmp__37 = _internal.math_test.Math_test__modf._modf, __tmp__38 = _internal.math_test.Math_test__nextafter32._nextafter32, __tmp__39 = _internal.math_test.Math_test__nextafter64._nextafter64, __tmp__40 = _internal.math_test.Math_test__pow._pow, __tmp__41 = _internal.math_test.Math_test__remainder._remainder, __tmp__42 = _internal.math_test.Math_test__round._round, __tmp__43 = _internal.math_test.Math_test__signbit._signbit, __tmp__44 = _internal.math_test.Math_test__sin._sin, __tmp__45 = _internal.math_test.Math_test__sinLarge._sinLarge, __tmp__46 = _internal.math_test.Math_test__sinh._sinh, __tmp__47 = _internal.math_test.Math_test__sqrt._sqrt, __tmp__48 = _internal.math_test.Math_test__tan._tan, __tmp__49 = _internal.math_test.Math_test__tanLarge._tanLarge, __tmp__50 = _internal.math_test.Math_test__tanh._tanh, __tmp__51 = _internal.math_test.Math_test__trunc._trunc, __tmp__52 = _internal.math_test.Math_test__y0._y0, __tmp__53 = _internal.math_test.Math_test__y1._y1, __tmp__54 = _internal.math_test.Math_test__y2._y2, __tmp__55 = _internal.math_test.Math_test__yM3._yM3, __tmp__56 = _internal.math_test.Math_test__vfacosSC._vfacosSC, __tmp__57 = _internal.math_test.Math_test__acosSC._acosSC, __tmp__58 = _internal.math_test.Math_test__vfacoshSC._vfacoshSC, __tmp__59 = _internal.math_test.Math_test__acoshSC._acoshSC, __tmp__60 = _internal.math_test.Math_test__vfasinSC._vfasinSC, __tmp__61 = _internal.math_test.Math_test__asinSC._asinSC, __tmp__62 = _internal.math_test.Math_test__vfasinhSC._vfasinhSC, __tmp__63 = _internal.math_test.Math_test__asinhSC._asinhSC, __tmp__64 = _internal.math_test.Math_test__vfatanSC._vfatanSC, __tmp__65 = _internal.math_test.Math_test__atanSC._atanSC, __tmp__66 = _internal.math_test.Math_test__vfatanhSC._vfatanhSC, __tmp__67 = _internal.math_test.Math_test__atanhSC._atanhSC, __tmp__68 = _internal.math_test.Math_test__vfatan2SC._vfatan2SC, __tmp__69 = _internal.math_test.Math_test__atan2SC._atan2SC, __tmp__70 = _internal.math_test.Math_test__vfcbrtSC._vfcbrtSC, __tmp__71 = _internal.math_test.Math_test__cbrtSC._cbrtSC, __tmp__72 = _internal.math_test.Math_test__vfceilSC._vfceilSC, __tmp__73 = _internal.math_test.Math_test__ceilSC._ceilSC, __tmp__74 = _internal.math_test.Math_test__vfcopysignSC._vfcopysignSC, __tmp__75 = _internal.math_test.Math_test__copysignSC._copysignSC, __tmp__76 = _internal.math_test.Math_test__vfcosSC._vfcosSC, __tmp__77 = _internal.math_test.Math_test__cosSC._cosSC, __tmp__78 = _internal.math_test.Math_test__vfcoshSC._vfcoshSC, __tmp__79 = _internal.math_test.Math_test__coshSC._coshSC, __tmp__80 = _internal.math_test.Math_test__vferfSC._vferfSC, __tmp__81 = _internal.math_test.Math_test__erfSC._erfSC, __tmp__82 = _internal.math_test.Math_test__vferfcSC._vferfcSC, __tmp__83 = _internal.math_test.Math_test__erfcSC._erfcSC, __tmp__84 = _internal.math_test.Math_test__vferfinvSC._vferfinvSC, __tmp__85 = _internal.math_test.Math_test__erfinvSC._erfinvSC, __tmp__86 = _internal.math_test.Math_test__vferfcinvSC._vferfcinvSC, __tmp__87 = _internal.math_test.Math_test__erfcinvSC._erfcinvSC, __tmp__88 = _internal.math_test.Math_test__vfexpSC._vfexpSC, __tmp__89 = _internal.math_test.Math_test__expSC._expSC, __tmp__90 = _internal.math_test.Math_test__vfexp2SC._vfexp2SC, __tmp__91 = _internal.math_test.Math_test__exp2SC._exp2SC, __tmp__92 = _internal.math_test.Math_test__vfexpm1SC._vfexpm1SC, __tmp__93 = _internal.math_test.Math_test__expm1SC._expm1SC, __tmp__94 = _internal.math_test.Math_test__vffabsSC._vffabsSC, __tmp__95 = _internal.math_test.Math_test__fabsSC._fabsSC, __tmp__96 = _internal.math_test.Math_test__vffdimSC._vffdimSC, __tmp__97 = _internal.math_test.Math_test__nan._nan, __tmp__98 = _internal.math_test.Math_test__vffdim2SC._vffdim2SC, __tmp__99 = _internal.math_test.Math_test__fdimSC._fdimSC, __tmp__100 = _internal.math_test.Math_test__fmaxSC._fmaxSC, __tmp__101 = _internal.math_test.Math_test__fminSC._fminSC, __tmp__102 = _internal.math_test.Math_test__vffmodSC._vffmodSC, __tmp__103 = _internal.math_test.Math_test__fmodSC._fmodSC, __tmp__104 = _internal.math_test.Math_test__vffrexpSC._vffrexpSC, __tmp__105 = _internal.math_test.Math_test__frexpSC._frexpSC, __tmp__106 = _internal.math_test.Math_test__vfgamma._vfgamma, __tmp__107 = _internal.math_test.Math_test__vfhypotSC._vfhypotSC, __tmp__108 = _internal.math_test.Math_test__hypotSC._hypotSC, __tmp__109 = _internal.math_test.Math_test__ilogbSC._ilogbSC, __tmp__110 = _internal.math_test.Math_test__vfj0SC._vfj0SC, __tmp__111 = _internal.math_test.Math_test__j0SC._j0SC, __tmp__112 = _internal.math_test.Math_test__j1SC._j1SC, __tmp__113 = _internal.math_test.Math_test__j2SC._j2SC, __tmp__114 = _internal.math_test.Math_test__jM3SC._jM3SC, __tmp__115 = _internal.math_test.Math_test__vfldexpSC._vfldexpSC, __tmp__116 = _internal.math_test.Math_test__ldexpSC._ldexpSC, __tmp__117 = _internal.math_test.Math_test__vflgammaSC._vflgammaSC, __tmp__118 = _internal.math_test.Math_test__lgammaSC._lgammaSC, __tmp__119 = _internal.math_test.Math_test__vflogSC._vflogSC, __tmp__120 = _internal.math_test.Math_test__logSC._logSC, __tmp__121 = _internal.math_test.Math_test__vflogbSC._vflogbSC, __tmp__122 = _internal.math_test.Math_test__logbSC._logbSC, __tmp__123 = _internal.math_test.Math_test__vflog1pSC._vflog1pSC, __tmp__124 = _internal.math_test.Math_test__log1pSC._log1pSC, __tmp__125 = _internal.math_test.Math_test__vfmodfSC._vfmodfSC, __tmp__126 = _internal.math_test.Math_test__modfSC._modfSC, __tmp__127 = _internal.math_test.Math_test__vfnextafter32SC._vfnextafter32SC, __tmp__128 = _internal.math_test.Math_test__nextafter32SC._nextafter32SC, __tmp__129 = _internal.math_test.Math_test__vfnextafter64SC._vfnextafter64SC, __tmp__130 = _internal.math_test.Math_test__nextafter64SC._nextafter64SC, __tmp__131 = _internal.math_test.Math_test__vfpowSC._vfpowSC, __tmp__132 = _internal.math_test.Math_test__powSC._powSC, __tmp__133 = _internal.math_test.Math_test__vfpow10SC._vfpow10SC, __tmp__134 = _internal.math_test.Math_test__pow10SC._pow10SC, __tmp__135 = _internal.math_test.Math_test__vfroundSC._vfroundSC, __tmp__136 = _internal.math_test.Math_test__vfroundEvenSC._vfroundEvenSC, __tmp__137 = _internal.math_test.Math_test__vfsignbitSC._vfsignbitSC, __tmp__138 = _internal.math_test.Math_test__signbitSC._signbitSC, __tmp__139 = _internal.math_test.Math_test__vfsinSC._vfsinSC, __tmp__140 = _internal.math_test.Math_test__sinSC._sinSC, __tmp__141 = _internal.math_test.Math_test__vfsinhSC._vfsinhSC, __tmp__142 = _internal.math_test.Math_test__sinhSC._sinhSC, __tmp__143 = _internal.math_test.Math_test__vfsqrtSC._vfsqrtSC, __tmp__144 = _internal.math_test.Math_test__sqrtSC._sqrtSC, __tmp__145 = _internal.math_test.Math_test__vftanhSC._vftanhSC, __tmp__146 = _internal.math_test.Math_test__tanhSC._tanhSC, __tmp__147 = _internal.math_test.Math_test__vfy0SC._vfy0SC, __tmp__148 = _internal.math_test.Math_test__y0SC._y0SC, __tmp__149 = _internal.math_test.Math_test__y1SC._y1SC, __tmp__150 = _internal.math_test.Math_test__y2SC._y2SC, __tmp__151 = _internal.math_test.Math_test__yM3SC._yM3SC, __tmp__152 = _internal.math_test.Math_test__vffrexpBC._vffrexpBC, __tmp__153 = _internal.math_test.Math_test__frexpBC._frexpBC, __tmp__154 = _internal.math_test.Math_test__vfldexpBC._vfldexpBC, __tmp__155 = _internal.math_test.Math_test__ldexpBC._ldexpBC, __tmp__156 = _internal.math_test.Math_test__logbBC._logbBC, __tmp__157 = _internal.math_test.Math_test__fmaC._fmaC, __tmp__158 = _internal.math_test.Math_test__sqrt32._sqrt32, __tmp__159 = _internal.math_test.Math_test_portableFMA.portableFMA, __tmp__160 = _internal.math_test.Math_test__floatTests._floatTests, __tmp__161 = _internal.math_test.Math_test__indirectSqrt._indirectSqrt, __tmp__162 = _internal.math_test.Math_test__copysignNeg._copysignNeg, __tmp__163 = _internal.math_test.Math_test__absPos._absPos, __tmp__164 = _internal.math_test.Math_test__pow10pos._pow10pos, __tmp__165 = _internal.math_test.Math_test__pow10neg._pow10neg, __tmp__166 = _internal.math_test.Math_test__roundNeg._roundNeg, __tmp__167 = _internal.math_test.Math_test__signbitPos._signbitPos, __tmp__168 = _internal.math_test.Math_test__roundUint64._roundUint64, __tmp__169 = _internal.math_test.Math_test__roundFloat32._roundFloat32, __tmp__170 = _internal.math_test.Math_test__roundUint32._roundUint32, __tmp__171 = _internal.math_test.Math_test__trigHuge._trigHuge, __tmp__172 = _internal.math_test.Math_test__cosHuge._cosHuge, __tmp__173 = _internal.math_test.Math_test__sinHuge._sinHuge, __tmp__174 = _internal.math_test.Math_test__tanHuge._tanHuge;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
