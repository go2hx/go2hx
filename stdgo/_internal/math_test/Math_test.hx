package stdgo._internal.math_test;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
import stdgo._internal.math.Math;
final smallestNormalFloat64 : stdgo.GoFloat64 = (2.2250738585072014e-308 : stdgo.GoFloat64);
final largestSubnormalFloat64 : stdgo.GoFloat64 = (2.225073858507201e-308 : stdgo.GoFloat64);
var globalI : stdgo.GoInt = (0 : stdgo.GoInt);
var globalB : Bool = false;
var globalF : stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
var _vf : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(4.9790119248836735 : stdgo.GoFloat64), (7.738872474578105 : stdgo.GoFloat64), (-0.2768800571920016 : stdgo.GoFloat64), (-5.010603618271075 : stdgo.GoFloat64), (9.636293707198417 : stdgo.GoFloat64), (2.9263772392439646 : stdgo.GoFloat64), (5.229083431459307 : stdgo.GoFloat64), (2.7279399104360103 : stdgo.GoFloat64), (1.825308091680855 : stdgo.GoFloat64), (-8.685924768575601 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _acos : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(1.0496193546107222 : stdgo.GoFloat64), (0.6858401281366443 : stdgo.GoFloat64), (1.598487871457716 : stdgo.GoFloat64), (2.095619936147586 : stdgo.GoFloat64), (0.2705300846782414 : stdgo.GoFloat64), (1.2738121680361776 : stdgo.GoFloat64), (1.0205369421140629 : stdgo.GoFloat64), (1.2945003481781245 : stdgo.GoFloat64), (1.387236434537445 : stdgo.GoFloat64), (2.6231510803970464 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _acosh : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(2.474334700415901 : stdgo.GoFloat64), (2.857638534429277 : stdgo.GoFloat64), (0.7279696150298106 : stdgo.GoFloat64), (2.479679441883145 : stdgo.GoFloat64), (3.055202074230606 : stdgo.GoFloat64), (2.0442385926885867 : stdgo.GoFloat64), (2.5158701513104513 : stdgo.GoFloat64), (1.9905083928241163 : stdgo.GoFloat64), (1.6988625798424035 : stdgo.GoFloat64), (2.9611454842470386 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _asin : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.5211769721841744 : stdgo.GoFloat64), (0.8849561986582524 : stdgo.GoFloat64), (-0.027691544662819412 : stdgo.GoFloat64), (-0.5248236093526893 : stdgo.GoFloat64), (1.3002662421166553 : stdgo.GoFloat64), (0.29698415875871903 : stdgo.GoFloat64), (0.5502593846808337 : stdgo.GoFloat64), (0.276295978616772 : stdgo.GoFloat64), (0.18355989225745148 : stdgo.GoFloat64), (-1.0523547536021498 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _asinh : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(2.3083139124923524 : stdgo.GoFloat64), (2.743551594301594 : stdgo.GoFloat64), (-0.2734590853488009 : stdgo.GoFloat64), (-2.314515764471834 : stdgo.GoFloat64), (2.9613652154015058 : stdgo.GoFloat64), (1.7949041616585821 : stdgo.GoFloat64), (2.3564032905983505 : stdgo.GoFloat64), (1.7287118790768439 : stdgo.GoFloat64), (1.3626658083714827 : stdgo.GoFloat64), (-2.8581483626513915 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _atan : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(1.3725902621296215 : stdgo.GoFloat64), (1.442290609645298 : stdgo.GoFloat64), (-0.27011324359471756 : stdgo.GoFloat64), (-1.373807768454338 : stdgo.GoFloat64), (1.4673921193587667 : stdgo.GoFloat64), (1.2415173565870168 : stdgo.GoFloat64), (1.3818396865615168 : stdgo.GoFloat64), (1.219430584463967 : stdgo.GoFloat64), (1.0696031952318783 : stdgo.GoFloat64), (-1.4561721938838086 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _atanh : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.5465116371225194 : stdgo.GoFloat64), (1.0299474112843112 : stdgo.GoFloat64), (-0.027695084420740135 : stdgo.GoFloat64), (-0.5507209611920719 : stdgo.GoFloat64), (1.9943940993171843 : stdgo.GoFloat64), (0.3014486045780897 : stdgo.GoFloat64), (0.5803342720694219 : stdgo.GoFloat64), (0.27987997499441514 : stdgo.GoFloat64), (0.18459947964298795 : stdgo.GoFloat64), (-1.3273186910532646 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _atan2 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(1.1088291730037005 : stdgo.GoFloat64), (0.9121818318871581 : stdgo.GoFloat64), (1.5984772603216204 : stdgo.GoFloat64), (2.0352918654092087 : stdgo.GoFloat64), (0.8039181913904472 : stdgo.GoFloat64), (1.2861075249894662 : stdgo.GoFloat64), (1.0889904479131696 : stdgo.GoFloat64), (1.3044821793397925 : stdgo.GoFloat64), (1.3902530903455392 : stdgo.GoFloat64), (2.2859857424479144 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _cbrt : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(1.7075799841925094 : stdgo.GoFloat64), (1.9779982212970353 : stdgo.GoFloat64), (-0.6517742901777991 : stdgo.GoFloat64), (-1.711183888654402 : stdgo.GoFloat64), (2.1279920909827936 : stdgo.GoFloat64), (1.430353677046074 : stdgo.GoFloat64), (1.7357021059106155 : stdgo.GoFloat64), (1.397263346255433 : stdgo.GoFloat64), (1.2221149580905388 : stdgo.GoFloat64), (-2.055600373050007 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _ceil : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(5 : stdgo.GoFloat64), (8 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-5 : stdgo.GoFloat64), (10 : stdgo.GoFloat64), (3 : stdgo.GoFloat64), (6 : stdgo.GoFloat64), (3 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (-8 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _copysign : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-4.9790119248836735 : stdgo.GoFloat64), (-7.738872474578105 : stdgo.GoFloat64), (-0.2768800571920016 : stdgo.GoFloat64), (-5.010603618271075 : stdgo.GoFloat64), (-9.636293707198417 : stdgo.GoFloat64), (-2.9263772392439646 : stdgo.GoFloat64), (-5.229083431459307 : stdgo.GoFloat64), (-2.7279399104360103 : stdgo.GoFloat64), (-1.825308091680855 : stdgo.GoFloat64), (-8.685924768575601 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _cos : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.2634752140995199 : stdgo.GoFloat64), (0.11485512608482198 : stdgo.GoFloat64), (0.9619129732564077 : stdgo.GoFloat64), (0.2938141150061715 : stdgo.GoFloat64), (-0.9777138189897924 : stdgo.GoFloat64), (-0.9769304134430322 : stdgo.GoFloat64), (0.4940088096948647 : stdgo.GoFloat64), (-0.9156586902101893 : stdgo.GoFloat64), (-0.25177293138931034 : stdgo.GoFloat64), (-0.7392413515956766 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _cosLarge : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.26347521411855596 : stdgo.GoFloat64), (0.1148551260555431 : stdgo.GoFloat64), (0.961912973266489 : stdgo.GoFloat64), (0.2938141149955612 : stdgo.GoFloat64), (-0.9777138189880162 : stdgo.GoFloat64), (-0.9769304134451476 : stdgo.GoFloat64), (0.4940088097314977 : stdgo.GoFloat64), (-0.9156586902175179 : stdgo.GoFloat64), (-0.251772931436787 : stdgo.GoFloat64), (-0.739241351571731 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _cosh : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(72.66879694221284 : stdgo.GoFloat64), (1147.9413465659254 : stdgo.GoFloat64), (1.038576790876642 : stdgo.GoFloat64), (75.00095778965805 : stdgo.GoFloat64), (7655.246669605358 : stdgo.GoFloat64), (9.356749175832126 : stdgo.GoFloat64), (93.31351599270606 : stdgo.GoFloat64), (7.683343099462465 : stdgo.GoFloat64), (3.182937162515072 : stdgo.GoFloat64), (2959.505926191619 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _erf : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.5186535481773871 : stdgo.GoFloat64), (0.726238758341373 : stdgo.GoFloat64), (-0.0312345868828131 : stdgo.GoFloat64), (-0.521431211102533 : stdgo.GoFloat64), (0.827047426713129 : stdgo.GoFloat64), (0.32101767558376376 : stdgo.GoFloat64), (0.5403990312223246 : stdgo.GoFloat64), (0.30034702916738587 : stdgo.GoFloat64), (0.2036992441788224 : stdgo.GoFloat64), (-0.7806938696800922 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _erfc : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.481346451822613 : stdgo.GoFloat64), (0.27376124165862703 : stdgo.GoFloat64), (1.031234586882813 : stdgo.GoFloat64), (1.521431211102533 : stdgo.GoFloat64), (0.17295257328687097 : stdgo.GoFloat64), (0.6789823244162362 : stdgo.GoFloat64), (0.4596009687776754 : stdgo.GoFloat64), (0.6996529708326141 : stdgo.GoFloat64), (0.7963007558211775 : stdgo.GoFloat64), (1.7806938696800922 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _erfinv : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.47460376733580334 : stdgo.GoFloat64), (0.8559054432692111 : stdgo.GoFloat64), (-0.024542783057170732 : stdgo.GoFloat64), (-0.47811668351897335 : stdgo.GoFloat64), (1.479804430319471 : stdgo.GoFloat64), (0.2654485787128896 : stdgo.GoFloat64), (0.502744453422152 : stdgo.GoFloat64), (0.24667035327076278 : stdgo.GoFloat64), (0.16320114651030054 : stdgo.GoFloat64), (-1.066723346421969 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _exp : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(145.33071302642136 : stdgo.GoFloat64), (2295.882257569445 : stdgo.GoFloat64), (0.7581454257485166 : stdgo.GoFloat64), (0.006666877842179101 : stdgo.GoFloat64), (15310.493273896034 : stdgo.GoFloat64), (18.65990751799933 : stdgo.GoFloat64), (186.62167355098714 : stdgo.GoFloat64), (15.301332413189378 : stdgo.GoFloat64), (6.204706343064688 : stdgo.GoFloat64), (0.00016894712385826522 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _expm1 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.05105047796122957 : stdgo.GoFloat64), (0.08046199708567343 : stdgo.GoFloat64), (-0.00276497097889164 : stdgo.GoFloat64), (-0.048871434888875354 : stdgo.GoFloat64), (0.10115864277221467 : stdgo.GoFloat64), (0.02969616407795911 : stdgo.GoFloat64), (0.053682144879448924 : stdgo.GoFloat64), (0.02765488851131274 : stdgo.GoFloat64), (0.01842068661871399 : stdgo.GoFloat64), (-0.0831938708635538 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _expm1Large : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(4.2031418113550844e+21 : stdgo.GoFloat64), (4.0690789717473863e+33 : stdgo.GoFloat64), (-0.9372627915981363 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), (7.077694784145933e+41 : stdgo.GoFloat64), (5.117936223839153e+12 : stdgo.GoFloat64), (5.124137759001189e+22 : stdgo.GoFloat64), (7.03546003972584e+11 : stdgo.GoFloat64), (8.456921800389698e+07 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _exp2 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(31.53783946328629 : stdgo.GoFloat64), (213.61549283756233 : stdgo.GoFloat64), (0.8253740256218556 : stdgo.GoFloat64), (0.031021158628740296 : stdgo.GoFloat64), (795.8174411025219 : stdgo.GoFloat64), (7.6019905892596356 : stdgo.GoFloat64), (37.5068820483881 : stdgo.GoFloat64), (6.625089343917356 : stdgo.GoFloat64), (3.543826790024394 : stdgo.GoFloat64), (0.0024281533133513303 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _fabs : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(4.9790119248836735 : stdgo.GoFloat64), (7.738872474578105 : stdgo.GoFloat64), (0.2768800571920016 : stdgo.GoFloat64), (5.010603618271075 : stdgo.GoFloat64), (9.636293707198417 : stdgo.GoFloat64), (2.9263772392439646 : stdgo.GoFloat64), (5.229083431459307 : stdgo.GoFloat64), (2.7279399104360103 : stdgo.GoFloat64), (1.825308091680855 : stdgo.GoFloat64), (8.685924768575601 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _fdim : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(4.9790119248836735 : stdgo.GoFloat64), (7.738872474578105 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (9.636293707198417 : stdgo.GoFloat64), (2.9263772392439646 : stdgo.GoFloat64), (5.229083431459307 : stdgo.GoFloat64), (2.7279399104360103 : stdgo.GoFloat64), (1.825308091680855 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _floor : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(4 : stdgo.GoFloat64), (7 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), (-6 : stdgo.GoFloat64), (9 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (5 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (-9 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _fmod : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.041976150232653 : stdgo.GoFloat64), (2.2611275254218954 : stdgo.GoFloat64), (0.032317941087942614 : stdgo.GoFloat64), (4.989396381728925 : stdgo.GoFloat64), (0.3637062928015826 : stdgo.GoFloat64), (1.220868282268106 : stdgo.GoFloat64), (4.770916568540693 : stdgo.GoFloat64), (1.8161802686919692 : stdgo.GoFloat64), (0.8734595415957247 : stdgo.GoFloat64), (1.3140752314243986 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _frexp : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi> = (new stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>(10, 10, ...[(new stdgo._internal.math_test.Math_test.T_fi((0.6223764906104592 : stdgo.GoFloat64), (3 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.9673590593222631 : stdgo.GoFloat64), (3 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-0.5537601143840032 : stdgo.GoFloat64), (-1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-0.6263254522838844 : stdgo.GoFloat64), (3 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.6022683566999011 : stdgo.GoFloat64), (4 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.7315943098109912 : stdgo.GoFloat64), (2 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.6536354289324133 : stdgo.GoFloat64), (3 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.6819849776090026 : stdgo.GoFloat64), (2 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.9126540458404275 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-0.5428702980359751 : stdgo.GoFloat64), (4 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math_test.Math_test.T_fi)])) : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>);
var _gamma : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(23.254348370739965 : stdgo.GoFloat64), (2991.153837155317 : stdgo.GoFloat64), (-4.561154336726758 : stdgo.GoFloat64), (0.7719403468842639 : stdgo.GoFloat64), (161118.76618855417 : stdgo.GoFloat64), (1.8706575145216422 : stdgo.GoFloat64), (34.0827874472575 : stdgo.GoFloat64), (1.5797339514489521 : stdgo.GoFloat64), (0.938345865983546 : stdgo.GoFloat64), (-2.0939959029231484e-05 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _j0 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-0.18444682230601672 : stdgo.GoFloat64), (0.22735366890633196 : stdgo.GoFloat64), (0.9809259936157051 : stdgo.GoFloat64), (-0.17411701314262265 : stdgo.GoFloat64), (-0.21389448451144144 : stdgo.GoFloat64), (-0.23409058489280388 : stdgo.GoFloat64), (-0.10029099691890912 : stdgo.GoFloat64), (-0.15466726714884327 : stdgo.GoFloat64), (0.32526501876534203 : stdgo.GoFloat64), (-0.008722184844094073 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _j1 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-0.32515263952952034 : stdgo.GoFloat64), (0.18935817114305156 : stdgo.GoFloat64), (-0.13711761352467242 : stdgo.GoFloat64), (0.3287486536269617 : stdgo.GoFloat64), (0.13133899188830978 : stdgo.GoFloat64), (0.3660243417832987 : stdgo.GoFloat64), (-0.3443676927184817 : stdgo.GoFloat64), (0.43294813966407736 : stdgo.GoFloat64), (0.5818135053195479 : stdgo.GoFloat64), (-0.27030574577733035 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _j2 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.0538375189201378 : stdgo.GoFloat64), (-0.17841678003393208 : stdgo.GoFloat64), (0.009521746934916465 : stdgo.GoFloat64), (0.04289583554709874 : stdgo.GoFloat64), (0.24115371837854493 : stdgo.GoFloat64), (0.484245853239452 : stdgo.GoFloat64), (-0.031421452206186334 : stdgo.GoFloat64), (0.47208491847451245 : stdgo.GoFloat64), (0.3122312022520957 : stdgo.GoFloat64), (0.07096213118930231 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _jM3 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-0.3684042080996403 : stdgo.GoFloat64), (0.28157665936340887 : stdgo.GoFloat64), (0.00044010054808419485 : stdgo.GoFloat64), (0.3629926999056814 : stdgo.GoFloat64), (0.031236721988254553 : stdgo.GoFloat64), (-0.2958805510589624 : stdgo.GoFloat64), (-0.3203317769653323 : stdgo.GoFloat64), (-0.2592737332129663 : stdgo.GoFloat64), (-0.10241334641061485 : stdgo.GoFloat64), (-0.23762660886100206 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _lgamma : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi> = (new stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>(10, 10, ...[(new stdgo._internal.math_test.Math_test.T_fi((3.1464921412445457 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((8.003414490659127 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((1.5175757355097796 : stdgo.GoFloat64), (-1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-0.2588480028182146 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((11.989897050205554 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.6262899811091257 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((3.5287924899091565 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.45725644770161183 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-0.06363667087767962 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-10.773851309103001 : stdgo.GoFloat64), (-1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math_test.Math_test.T_fi)])) : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>);
var _log : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(1.605231462693063 : stdgo.GoFloat64), (2.046256001870877 : stdgo.GoFloat64), (-1.2841708730962658 : stdgo.GoFloat64), (1.6115563905281545 : stdgo.GoFloat64), (2.265536564487202 : stdgo.GoFloat64), (1.073765220891838 : stdgo.GoFloat64), (1.6542360106073546 : stdgo.GoFloat64), (1.0035467127723465 : stdgo.GoFloat64), (0.6017487901457805 : stdgo.GoFloat64), (2.1617038728473528 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _logb : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(2 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (-2 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (3 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _log10 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.6971431664250829 : stdgo.GoFloat64), (0.8886776901739321 : stdgo.GoFloat64), (-0.5577083240065893 : stdgo.GoFloat64), (0.6998900476822995 : stdgo.GoFloat64), (0.9839100285068423 : stdgo.GoFloat64), (0.4663303102929515 : stdgo.GoFloat64), (0.7184255711724233 : stdgo.GoFloat64), (0.4358347996891777 : stdgo.GoFloat64), (0.26133617905227036 : stdgo.GoFloat64), (0.938816063486494 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _log1p : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.04859025775979779 : stdgo.GoFloat64), (0.07454026596522587 : stdgo.GoFloat64), (-0.0027726407903942672 : stdgo.GoFloat64), (-0.05140491765162765 : stdgo.GoFloat64), (0.09199828067225863 : stdgo.GoFloat64), (0.02884376257659335 : stdgo.GoFloat64), (0.05096953458186371 : stdgo.GoFloat64), (0.026913947602193237 : stdgo.GoFloat64), (0.01808849323963077 : stdgo.GoFloat64), (-0.09086524563158899 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _log2 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(2.315859470706219 : stdgo.GoFloat64), (2.9521233862883918 : stdgo.GoFloat64), (-1.852666950270033 : stdgo.GoFloat64), (2.3249844127278863 : stdgo.GoFloat64), (3.268478366538305 : stdgo.GoFloat64), (1.5491157592596971 : stdgo.GoFloat64), (2.3865580889631732 : stdgo.GoFloat64), (1.4478118658170853 : stdgo.GoFloat64), (0.8681399954042511 : stdgo.GoFloat64), (3.1186794572273424 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _modf : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(10, 10, ...[(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(4 : stdgo.GoFloat64), (0.9790119248836735 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(7 : stdgo.GoFloat64), (0.7388724745781046 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-0.2768800571920016 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-5 : stdgo.GoFloat64), (-0.010603618271074922 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(9 : stdgo.GoFloat64), (0.6362937071984174 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2 : stdgo.GoFloat64), (0.9263772392439646 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(5 : stdgo.GoFloat64), (0.22908343145930665 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2 : stdgo.GoFloat64), (0.7279399104360103 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1 : stdgo.GoFloat64), (0.8253080916808551 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-8 : stdgo.GoFloat64), (-0.6859247685756014 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _nextafter32 : stdgo.Slice<stdgo.GoFloat32> = (new stdgo.Slice<stdgo.GoFloat32>(10, 10, ...[(4.979012489318848 : stdgo.GoFloat64), (7.73887300491333 : stdgo.GoFloat64), (-0.27688002586364746 : stdgo.GoFloat64), (-5.010602951049805 : stdgo.GoFloat64), (9.6362943649292 : stdgo.GoFloat64), (2.926377534866333 : stdgo.GoFloat64), (5.229084014892578 : stdgo.GoFloat64), (2.727940082550049 : stdgo.GoFloat64), (1.8253082036972046 : stdgo.GoFloat64), (-8.68592357635498 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
var _nextafter64 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(4.979011924883674 : stdgo.GoFloat64), (7.7388724745781055 : stdgo.GoFloat64), (-0.27688005719200154 : stdgo.GoFloat64), (-5.010603618271074 : stdgo.GoFloat64), (9.63629370719842 : stdgo.GoFloat64), (2.926377239243965 : stdgo.GoFloat64), (5.2290834314593075 : stdgo.GoFloat64), (2.7279399104360107 : stdgo.GoFloat64), (1.8253080916808553 : stdgo.GoFloat64), (-8.6859247685756 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _pow : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(95282.23263164841 : stdgo.GoFloat64), (5.48115993529999e+07 : stdgo.GoFloat64), (0.528591217158944 : stdgo.GoFloat64), (9.758799195728648e-06 : stdgo.GoFloat64), (4.328064329346045e+09 : stdgo.GoFloat64), (844.0676180503455 : stdgo.GoFloat64), (169466.33276191194 : stdgo.GoFloat64), (534.4904014755194 : stdgo.GoFloat64), (66.88182138451415 : stdgo.GoFloat64), (2.0609869004248745e-09 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _remainder : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.041976150232653 : stdgo.GoFloat64), (2.2611275254218954 : stdgo.GoFloat64), (0.032317941087942614 : stdgo.GoFloat64), (-0.021207236542149843 : stdgo.GoFloat64), (0.3637062928015826 : stdgo.GoFloat64), (1.220868282268106 : stdgo.GoFloat64), (-0.4581668629186133 : stdgo.GoFloat64), (-0.911759641744041 : stdgo.GoFloat64), (0.8734595415957247 : stdgo.GoFloat64), (1.3140752314243986 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _round : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(5 : stdgo.GoFloat64), (8 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-5 : stdgo.GoFloat64), (10 : stdgo.GoFloat64), (3 : stdgo.GoFloat64), (5 : stdgo.GoFloat64), (3 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (-9 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _signbit : stdgo.Slice<Bool> = (new stdgo.Slice<Bool>(10, 10, ...[false, false, true, true, false, false, false, false, false, true]) : stdgo.Slice<Bool>);
var _sin : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-0.9646661658600928 : stdgo.GoFloat64), (0.9933822527164654 : stdgo.GoFloat64), (-0.27335587039794396 : stdgo.GoFloat64), (0.955862576850428 : stdgo.GoFloat64), (-0.20994210667799693 : stdgo.GoFloat64), (0.21355787807998605 : stdgo.GoFloat64), (-0.8694568971167362 : stdgo.GoFloat64), (0.4019566681155578 : stdgo.GoFloat64), (0.96778633541688 : stdgo.GoFloat64), (-0.6734405869050345 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _sinLarge : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-0.9646661658548936 : stdgo.GoFloat64), (0.9933822527198507 : stdgo.GoFloat64), (-0.273355870362469 : stdgo.GoFloat64), (0.9558625768536894 : stdgo.GoFloat64), (-0.2099421066862689 : stdgo.GoFloat64), (0.213557878070309 : stdgo.GoFloat64), (-0.8694568970959221 : stdgo.GoFloat64), (0.40195666809886327 : stdgo.GoFloat64), (0.9677863354045287 : stdgo.GoFloat64), (-0.6734405869313197 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _sinh : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(72.66191608420853 : stdgo.GoFloat64), (1147.9409110035194 : stdgo.GoFloat64), (-0.28043136512812517 : stdgo.GoFloat64), (-74.99429091181587 : stdgo.GoFloat64), (7655.246604290676 : stdgo.GoFloat64), (9.303158342167201 : stdgo.GoFloat64), (93.3081575582811 : stdgo.GoFloat64), (7.617989313726914 : stdgo.GoFloat64), (3.0217691805496156 : stdgo.GoFloat64), (-2959.505757244495 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _sqrt : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(2.2313699659365485 : stdgo.GoFloat64), (2.7818829009464263 : stdgo.GoFloat64), (0.5261939349631479 : stdgo.GoFloat64), (2.238437762876394 : stdgo.GoFloat64), (3.104238023605538 : stdgo.GoFloat64), (1.7106657298385224 : stdgo.GoFloat64), (2.286718922705479 : stdgo.GoFloat64), (1.651647635071116 : stdgo.GoFloat64), (1.3510396336454586 : stdgo.GoFloat64), (2.947189299752495 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _tan : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-3.6613165650402277 : stdgo.GoFloat64), (8.649002326485975 : stdgo.GoFloat64), (-0.28417941955033615 : stdgo.GoFloat64), (3.2532901859747287 : stdgo.GoFloat64), (0.21472756403802937 : stdgo.GoFloat64), (-0.218600910711067 : stdgo.GoFloat64), (-1.760002817872368 : stdgo.GoFloat64), (-0.4389808914752818 : stdgo.GoFloat64), (-3.8438855602011306 : stdgo.GoFloat64), (0.9109887933776851 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _tanLarge : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-3.6613165647559653 : stdgo.GoFloat64), (8.649002328720254 : stdgo.GoFloat64), (-0.28417941951047826 : stdgo.GoFloat64), (3.253290186103312 : stdgo.GoFloat64), (0.21472756404688 : stdgo.GoFloat64), (-0.21860091070068807 : stdgo.GoFloat64), (-1.7600028176997227 : stdgo.GoFloat64), (-0.43898089145353614 : stdgo.GoFloat64), (-3.843885559427235 : stdgo.GoFloat64), (0.910988793442751 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _tanh : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.9999053120693634 : stdgo.GoFloat64), (0.9999996205708529 : stdgo.GoFloat64), (-0.2700150509731868 : stdgo.GoFloat64), (-0.9999111094306172 : stdgo.GoFloat64), (0.9999999914679847 : stdgo.GoFloat64), (0.9942724943612523 : stdgo.GoFloat64), (0.9999425760098314 : stdgo.GoFloat64), (0.9914940950977288 : stdgo.GoFloat64), (0.9493650129623968 : stdgo.GoFloat64), (-0.9999999429137403 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _trunc : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(4 : stdgo.GoFloat64), (7 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-5 : stdgo.GoFloat64), (9 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (5 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (-8 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _y0 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-0.30533991537807886 : stdgo.GoFloat64), (0.17437227649515233 : stdgo.GoFloat64), (-0.8622178126367883 : stdgo.GoFloat64), (-0.3100664880987498 : stdgo.GoFloat64), (0.14222006493009823 : stdgo.GoFloat64), (0.4000004067997901 : stdgo.GoFloat64), (-0.3334074975309935 : stdgo.GoFloat64), (0.45399790746668955 : stdgo.GoFloat64), (0.4829000411249776 : stdgo.GoFloat64), (0.27036697826604755 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _y1 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.1549421373745792 : stdgo.GoFloat64), (-0.21659551420811451 : stdgo.GoFloat64), (-2.4644949631241895 : stdgo.GoFloat64), (0.14427404895418364 : stdgo.GoFloat64), (0.22153799605189847 : stdgo.GoFloat64), (0.3038800915160754 : stdgo.GoFloat64), (0.06911076424523624 : stdgo.GoFloat64), (0.23801164178099143 : stdgo.GoFloat64), (-0.2084949297945976 : stdgo.GoFloat64), (0.02425031797932323 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _y2 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0.3675780219390304 : stdgo.GoFloat64), (-0.23034826393250118 : stdgo.GoFloat64), (-16.939677983817727 : stdgo.GoFloat64), (0.36765398052305215 : stdgo.GoFloat64), (-0.09624014717678045 : stdgo.GoFloat64), (-0.19231693561848512 : stdgo.GoFloat64), (0.35984072054267885 : stdgo.GoFloat64), (-0.279498725229974 : stdgo.GoFloat64), (-0.7113490692587463 : stdgo.GoFloat64), (-0.2647831587821263 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _yM3 : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-0.1403598442109485 : stdgo.GoFloat64), (-0.09753513961779207 : stdgo.GoFloat64), (242.2577599455558 : stdgo.GoFloat64), (-0.14922670148028186 : stdgo.GoFloat64), (0.2614870262915592 : stdgo.GoFloat64), (0.5667538359389518 : stdgo.GoFloat64), (-0.206150264009007 : stdgo.GoFloat64), (0.6478428468756833 : stdgo.GoFloat64), (1.3503631555901938 : stdgo.GoFloat64), (0.14618697565799568 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfacosSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[(-3.141592653589793 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (3.141592653589793 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _acosSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[naN(), (0 : stdgo.GoFloat64), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfacoshSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), (0.5 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _acoshSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[naN(), naN(), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfasinSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(-3.141592653589793 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), (3.141592653589793 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _asinSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[naN(), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfasinhSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _asinhSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfatanSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _atanSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(-1.5707963267948966 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), (1.5707963267948966 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfatanhSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(9, 9, ...[inf((-1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (3.141592653589793 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _atanhSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(9, 9, ...[naN(), naN(), inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN(), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfatan2SC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(37, 37, ...[
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 37 ... (37 > 37 ? 37 : 37 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _atan2SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(37, 37, ...[
(-2.356194490192345 : stdgo.GoFloat64),
(-1.5707963267948966 : stdgo.GoFloat64),
(-1.5707963267948966 : stdgo.GoFloat64),
(-1.5707963267948966 : stdgo.GoFloat64),
(-0.7853981633974483 : stdgo.GoFloat64),
naN(),
(-3.141592653589793 : stdgo.GoFloat64),
(-1.5707963267948966 : stdgo.GoFloat64),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
naN(),
(-3.141592653589793 : stdgo.GoFloat64),
(-3.141592653589793 : stdgo.GoFloat64),
(-3.141592653589793 : stdgo.GoFloat64),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
naN(),
(3.141592653589793 : stdgo.GoFloat64),
(3.141592653589793 : stdgo.GoFloat64),
(3.141592653589793 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
naN(),
(3.141592653589793 : stdgo.GoFloat64),
(1.5707963267948966 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
naN(),
(2.356194490192345 : stdgo.GoFloat64),
(1.5707963267948966 : stdgo.GoFloat64),
(1.5707963267948966 : stdgo.GoFloat64),
(1.5707963267948966 : stdgo.GoFloat64),
(0.7853981633974483 : stdgo.GoFloat64),
naN(),
naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfcbrtSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _cbrtSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfceilSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _ceilSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfcopysignSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _copysignSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[inf((-1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfcosSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _cosSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[naN(), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfcoshSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _coshSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((1 : stdgo.GoInt)), (1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vferfSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN(), (-1000 : stdgo.GoFloat64), (1000 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _erfSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[(-1 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), naN(), (-1 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vferfcSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt)), naN(), (-1000 : stdgo.GoFloat64), (1000 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _erfcSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(2 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), naN(), (2 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vferfinvSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[(1 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _erfinvSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), naN(), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vferfcinvSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[(0 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _erfcinvSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), naN(), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfexpSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(11, 11, ...[
inf((-1 : stdgo.GoInt)),
(-2000 : stdgo.GoFloat64),
(2000 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
naN(),
(709.7827128933841 : stdgo.GoFloat64),
(1.48852223e+09 : stdgo.GoFloat64),
(1.4885222e+09 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(3.725290298461915e-09 : stdgo.GoFloat64),
(-740 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _expSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(11, 11, ...[
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
naN(),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
(2.718281828459045 : stdgo.GoFloat64),
(1.0000000037252903 : stdgo.GoFloat64),
(4.2e-322 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfexp2SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[inf((-1 : stdgo.GoInt)), (-2000 : stdgo.GoFloat64), (2000 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN(), (1024 : stdgo.GoFloat64), (-1073.99999999999 : stdgo.GoFloat64), (3.725290298461915e-09 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _exp2SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt)), naN(), inf((1 : stdgo.GoInt)), (5e-324 : stdgo.GoFloat64), (1.0000000025821745 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfexpm1SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[inf((-1 : stdgo.GoInt)), (-710 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), (710 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _expm1SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[(-1 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vffabsSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _fabsSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vffdimSC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(15, 15, ...[
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _nan : stdgo.GoFloat64 = float64frombits((-2251799813685248i64 : stdgo.GoUInt64));
var _vffdim2SC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(15, 15, ...[
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), _nan]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), _nan]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[_nan, inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[_nan, copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[_nan, (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[_nan, inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[_nan, _nan]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _fdimSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(15, 15, ...[
naN(),
(0 : stdgo.GoFloat64),
naN(),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _fmaxSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(15, 15, ...[
inf((-1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
naN(),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
naN(),
naN(),
naN(),
inf((1 : stdgo.GoInt)),
naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _fminSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(15, 15, ...[
inf((-1 : stdgo.GoInt)),
inf((-1 : stdgo.GoInt)),
inf((-1 : stdgo.GoInt)),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
(0 : stdgo.GoFloat64),
inf((-1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
naN(),
inf((-1 : stdgo.GoInt)),
naN(),
naN(),
naN(),
naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vffmodSC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(34, 34, ...[
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 34 ... (34 > 34 ? 34 : 34 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _fmodSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(34, 34, ...[
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
(-3.141592653589793 : stdgo.GoFloat64),
naN(),
(-3.141592653589793 : stdgo.GoFloat64),
naN(),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
naN(),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
naN(),
(0 : stdgo.GoFloat64),
naN(),
(0 : stdgo.GoFloat64),
naN(),
(3.141592653589793 : stdgo.GoFloat64),
naN(),
(3.141592653589793 : stdgo.GoFloat64),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN(),
naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vffrexpSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _frexpSC : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi> = (new stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>(5, 5, ...[(new stdgo._internal.math_test.Math_test.T_fi(inf((-1 : stdgo.GoInt)), (0 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi(copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0 : stdgo.GoFloat64), (0 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi(inf((1 : stdgo.GoInt)), (0 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi(naN(), (0 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math_test.Math_test.T_fi)])) : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>);
var _vfgamma : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(71, 71, ...[
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-2 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1e+16 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1e+300 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1.7e+308 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.5 : stdgo.GoFloat64), (1.772453850905516 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1.5 : stdgo.GoFloat64), (0.886226925452758 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2.5 : stdgo.GoFloat64), (1.329340388179137 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.5 : stdgo.GoFloat64), (3.3233509704478426 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-0.5 : stdgo.GoFloat64), (-3.544907701811032 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1.5 : stdgo.GoFloat64), (2.363271801207355 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-2.5 : stdgo.GoFloat64), (-0.9453087204829419 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.5 : stdgo.GoFloat64), (0.2700882058522691 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.1 : stdgo.GoFloat64), (9.51350769866873 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.01 : stdgo.GoFloat64), (99.4325851191506 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1e-08 : stdgo.GoFloat64), (9.999999942278434e+07 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1e-16 : stdgo.GoFloat64), (1e+16 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.001 : stdgo.GoFloat64), (999.4237724845955 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1e-16 : stdgo.GoFloat64), (1e+16 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1e-308 : stdgo.GoFloat64), (1e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(5.6e-309 : stdgo.GoFloat64), (1.7857142857142864e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(5.5e-309 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1e-309 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1e-323 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(5e-324 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-0.1 : stdgo.GoFloat64), (-10.686287021193193 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-0.01 : stdgo.GoFloat64), (-100.58719796441078 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1e-08 : stdgo.GoFloat64), (-1.0000000057721567e+08 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1e-16 : stdgo.GoFloat64), (-1e+16 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-0.001 : stdgo.GoFloat64), (-1000.5782056293586 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1e-16 : stdgo.GoFloat64), (-1e+16 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1e-308 : stdgo.GoFloat64), (-1e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-5.6e-309 : stdgo.GoFloat64), (-1.7857142857142864e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-5.5e-309 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1e-309 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1e-323 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-5e-324 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-0.9999999999999999 : stdgo.GoFloat64), (-9.007199254740992e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1.0000000000000002 : stdgo.GoFloat64), (4.5035996273704955e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1.9999999999999998 : stdgo.GoFloat64), (2.2517998136852485e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-2.0000000000000004 : stdgo.GoFloat64), (-1.1258999068426235e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-100.00000000000001 : stdgo.GoFloat64), (-7.540083334883109e-145 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-99.99999999999999 : stdgo.GoFloat64), (7.540083334884096e-145 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(17 : stdgo.GoFloat64), (2.0922789888e+13 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(171 : stdgo.GoFloat64), (7.257415615307999e+306 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(171.6 : stdgo.GoFloat64), (1.5858969096672565e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(171.624 : stdgo.GoFloat64), (1.7942117599248104e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(171.625 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(172 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2000 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-100.5 : stdgo.GoFloat64), (-3.3536908198076787e-159 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-160.5 : stdgo.GoFloat64), (-5.255546447007829e-286 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-170.5 : stdgo.GoFloat64), (-3.3127395215386074e-308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-171.5 : stdgo.GoFloat64), (1.9316265431712e-310 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-176.5 : stdgo.GoFloat64), (-1.196e-321 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-177.5 : stdgo.GoFloat64), (5e-324 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-178.5 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-179.5 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-201.0001 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-202.9999 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1000.5 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1.0000000003e+09 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-4.5035996273704955e+15 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-63.349078729022985 : stdgo.GoFloat64), (4.177797167776188e-88 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-127.45117632943295 : stdgo.GoFloat64), (1.183111089623681e-214 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 71 ... (71 > 71 ? 71 : 71 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _vfhypotSC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(19, 19, ...[
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _hypotSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(19, 19, ...[
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
naN(),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
naN(),
inf((1 : stdgo.GoInt)),
naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _ilogbSC : stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(2147483647 : stdgo.GoInt), (-2147483648 : stdgo.GoInt), (2147483647 : stdgo.GoInt), (2147483647 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
var _vfj0SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _j0SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[(0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _j1SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _j2SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _jM3SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfldexpSC : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi> = (new stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>(13, 13, ...[
(new stdgo._internal.math_test.Math_test.T_fi((0 : stdgo.GoFloat64), (0 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi((0 : stdgo.GoFloat64), (-1075 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi((0 : stdgo.GoFloat64), (1024 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi(copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi(copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-1075 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi(copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (1024 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi(inf((1 : stdgo.GoInt)), (0 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi(inf((1 : stdgo.GoInt)), (-1024 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi(inf((-1 : stdgo.GoInt)), (0 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi(inf((-1 : stdgo.GoInt)), (-1024 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi(naN(), (-1024 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi((10 : stdgo.GoFloat64), (16777216 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi),
(new stdgo._internal.math_test.Math_test.T_fi((10 : stdgo.GoFloat64), (-16777216 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math_test.Math_test.T_fi)])) : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>);
var _ldexpSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(13, 13, ...[
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((-1 : stdgo.GoInt)),
inf((-1 : stdgo.GoInt)),
naN(),
inf((1 : stdgo.GoInt)),
(0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vflgammaSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[inf((-1 : stdgo.GoInt)), (-3 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _lgammaSC : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi> = (new stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>(7, 7, ...[(new stdgo._internal.math_test.Math_test.T_fi(inf((-1 : stdgo.GoInt)), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi(inf((1 : stdgo.GoInt)), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi(inf((1 : stdgo.GoInt)), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0 : stdgo.GoFloat64), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi(inf((1 : stdgo.GoInt)), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi(naN(), (1 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math_test.Math_test.T_fi)])) : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>);
var _vflogSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[inf((-1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _logSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[naN(), naN(), inf((-1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vflogbSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _logbSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt)), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vflog1pSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[inf((-1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN(), (4.503599627370496e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _log1pSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[naN(), naN(), inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN(), (36.04365338911715 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfmodfSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _modfSC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(4, 4, ...[(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _vfnextafter32SC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat32>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat32>>(10, 10, ...[(new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(0 : stdgo.GoFloat64), (copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(0 : stdgo.GoFloat64), (naN() : stdgo.GoFloat32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat32), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat32), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat32), (copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat32), (-1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(naN() : stdgo.GoFloat32), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[(naN() : stdgo.GoFloat32), (naN() : stdgo.GoFloat32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>)?.__copy__()].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat32>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat32)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat32>>);
var _nextafter32SC : stdgo.Slice<stdgo.GoFloat32> = (new stdgo.Slice<stdgo.GoFloat32>(10, 10, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (-1.401298464324817e-45 : stdgo.GoFloat64), (naN() : stdgo.GoFloat32), (1.401298464324817e-45 : stdgo.GoFloat64), (copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat32), (copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat32), (-1.401298464324817e-45 : stdgo.GoFloat64), (naN() : stdgo.GoFloat32), (naN() : stdgo.GoFloat32)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
var _vfnextafter64SC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(10, 10, ...[(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(), (new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _nextafter64SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (-5e-324 : stdgo.GoFloat64), naN(), (5e-324 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-5e-324 : stdgo.GoFloat64), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfpowSC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(75, 75, ...[
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (-3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), (0.5 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((-1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-3.141592653589793 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-0.5 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-0.5 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-0.5 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0.5 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (-3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.5 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.5 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(3.141592653589793 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (-3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), (3.141592653589793 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2 : stdgo.GoFloat64), (4.294967296e+09 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2 : stdgo.GoFloat64), (-4.294967296e+09 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-2 : stdgo.GoFloat64), (4.294967297e+09 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.5 : stdgo.GoFloat64), (3.5184372088832e+13 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.5 : stdgo.GoFloat64), (-3.5184372088832e+13 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[nextafter((1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64)), (9.223372036854776e+18 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[nextafter((1 : stdgo.GoFloat64), (-2 : stdgo.GoFloat64)), (9.223372036854776e+18 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[nextafter((-1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64)), (9.223372036854776e+18 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[nextafter((-1 : stdgo.GoFloat64), (-2 : stdgo.GoFloat64)), (9.223372036854776e+18 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (1e+19 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-1e+19 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (9.007199254740991e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (-9.007199254740991e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 75 ... (75 > 75 ? 75 : 75 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _powSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(75, 75, ...[
(0 : stdgo.GoFloat64),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
(1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
inf((-1 : stdgo.GoInt)),
inf((-1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
naN(),
(0 : stdgo.GoFloat64),
naN(),
(1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(-3.141592653589793 : stdgo.GoFloat64),
naN(),
inf((1 : stdgo.GoInt)),
naN(),
(1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
naN(),
inf((1 : stdgo.GoInt)),
(0 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((-1 : stdgo.GoInt)),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
(1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
naN(),
inf((1 : stdgo.GoInt)),
(0 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(3.141592653589793 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
naN(),
(0 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
naN(),
naN(),
(1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
naN(),
naN(),
naN(),
inf((1 : stdgo.GoInt)),
(0 : stdgo.GoFloat64),
inf((-1 : stdgo.GoInt)),
(0 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt)),
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
(0 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)),
inf((-1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfpow10SC : stdgo.Slice<stdgo.GoInt> = (new stdgo.Slice<stdgo.GoInt>(15, 15, ...[
(-2147483648 : stdgo.GoInt),
(-324 : stdgo.GoInt),
(-323 : stdgo.GoInt),
(-50 : stdgo.GoInt),
(-22 : stdgo.GoInt),
(-1 : stdgo.GoInt),
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(22 : stdgo.GoInt),
(50 : stdgo.GoInt),
(100 : stdgo.GoInt),
(200 : stdgo.GoInt),
(308 : stdgo.GoInt),
(309 : stdgo.GoInt),
(2147483647 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
var _pow10SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(15, 15, ...[
(0 : stdgo.GoFloat64),
(0 : stdgo.GoFloat64),
(1e-323 : stdgo.GoFloat64),
(1e-50 : stdgo.GoFloat64),
(1e-22 : stdgo.GoFloat64),
(0.1 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(10 : stdgo.GoFloat64),
(1e+22 : stdgo.GoFloat64),
(1e+50 : stdgo.GoFloat64),
(1e+100 : stdgo.GoFloat64),
(1e+200 : stdgo.GoFloat64),
(1e+308 : stdgo.GoFloat64),
inf((1 : stdgo.GoInt)),
inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfroundSC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(13, 13, ...[
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1.390671161567e-309 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.49999999999999994 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.5 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.5000000000000001 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1.5 : stdgo.GoFloat64), (-2 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-2.5 : stdgo.GoFloat64), (-3 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2.2517998136852495e+15 : stdgo.GoFloat64), (2.25179981368525e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2.2517998136852505e+15 : stdgo.GoFloat64), (2.251799813685251e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(4.5035996273704955e+15 : stdgo.GoFloat64), (4.503599627370496e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(4.503599627370497e+15 : stdgo.GoFloat64), (4.503599627370497e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _vfroundEvenSC : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>> = (new stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>(13, 13, ...[
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(1.390671161567e-309 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.49999999999999994 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.5 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(0.5000000000000001 : stdgo.GoFloat64), (1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-1.5 : stdgo.GoFloat64), (-2 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(-2.5 : stdgo.GoFloat64), (-2 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[naN(), naN()]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[inf((1 : stdgo.GoInt)), inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2.2517998136852495e+15 : stdgo.GoFloat64), (2.25179981368525e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(2.2517998136852505e+15 : stdgo.GoFloat64), (2.25179981368525e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(4.5035996273704955e+15 : stdgo.GoFloat64), (4.503599627370496e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__(),
(new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[(4.503599627370497e+15 : stdgo.GoFloat64), (4.503599627370497e+15 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat64>)?.__copy__()].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoFloat64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoFloat64)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoFloat64>>);
var _vfsignbitSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _signbitSC : stdgo.Slice<Bool> = (new stdgo.Slice<Bool>(5, 5, ...[true, true, false, false, false]) : stdgo.Slice<Bool>);
var _vfsinSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _sinSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[naN(), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfsinhSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _sinhSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfsqrtSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[inf((-1 : stdgo.GoInt)), (-3.141592653589793 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN(), float64frombits((2i64 : stdgo.GoUInt64))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _sqrtSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[naN(), naN(), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN(), (3.1434555694052576e-162 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vftanhSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _tanhSC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(-1 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), (0 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vfy0SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), inf((1 : stdgo.GoInt)), naN(), (-1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _y0SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[naN(), inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _y1SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[naN(), inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _y2SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[naN(), inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _yM3SC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[naN(), inf((1 : stdgo.GoInt)), (0 : stdgo.GoFloat64), naN(), naN()]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _vffrexpBC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[(2.2250738585072014e-308 : stdgo.GoFloat64), (2.225073858507201e-308 : stdgo.GoFloat64), (5e-324 : stdgo.GoFloat64), (1.7976931348623157e+308 : stdgo.GoFloat64), (-2.2250738585072014e-308 : stdgo.GoFloat64), (-2.225073858507201e-308 : stdgo.GoFloat64), (-5e-324 : stdgo.GoFloat64), (-1.7976931348623157e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _frexpBC : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi> = (new stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>(8, 8, ...[(new stdgo._internal.math_test.Math_test.T_fi((0.5 : stdgo.GoFloat64), (-1021 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.9999999999999998 : stdgo.GoFloat64), (-1022 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.5 : stdgo.GoFloat64), (-1073 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((0.9999999999999999 : stdgo.GoFloat64), (1024 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-0.5 : stdgo.GoFloat64), (-1021 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-0.9999999999999998 : stdgo.GoFloat64), (-1022 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-0.5 : stdgo.GoFloat64), (-1073 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-0.9999999999999999 : stdgo.GoFloat64), (1024 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math_test.Math_test.T_fi)])) : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>);
var _vfldexpBC : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi> = (new stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>(10, 10, ...[(new stdgo._internal.math_test.Math_test.T_fi((2.2250738585072014e-308 : stdgo.GoFloat64), (-52 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((2.225073858507201e-308 : stdgo.GoFloat64), (-51 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((5e-324 : stdgo.GoFloat64), (1074 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((1.7976931348623157e+308 : stdgo.GoFloat64), (-2097 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((1 : stdgo.GoFloat64), (-1075 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-1 : stdgo.GoFloat64), (-1075 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((1 : stdgo.GoFloat64), (1024 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((-1 : stdgo.GoFloat64), (1024 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((1.0000000000000002 : stdgo.GoFloat64), (-1075 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi), (new stdgo._internal.math_test.Math_test.T_fi((1 : stdgo.GoFloat64), (-1075 : stdgo.GoInt)) : stdgo._internal.math_test.Math_test.T_fi)].concat([for (i in 10 ... (10 > 10 ? 10 : 10 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math_test.Math_test.T_fi)])) : stdgo.Slice<stdgo._internal.math_test.Math_test.T_fi>);
var _ldexpBC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(5e-324 : stdgo.GoFloat64), (1e-323 : stdgo.GoFloat64), (1 : stdgo.GoFloat64), (1e-323 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), inf((1 : stdgo.GoInt)), inf((-1 : stdgo.GoInt)), (5e-324 : stdgo.GoFloat64), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _logbBC : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[(-1022 : stdgo.GoFloat64), (-1023 : stdgo.GoFloat64), (-1074 : stdgo.GoFloat64), (1023 : stdgo.GoFloat64), (-1022 : stdgo.GoFloat64), (-1023 : stdgo.GoFloat64), (-1074 : stdgo.GoFloat64), (1023 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _fmaC : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(44, 44, ...[
({ _x : (-3.999999999999087 : stdgo.GoFloat64), _y : (-1.1123914289620494e-16 : stdgo.GoFloat64), _z : (-7.999877929687506 : stdgo.GoFloat64), _want : (-7.999877929687505 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-262112.0000004768 : stdgo.GoFloat64), _y : (-0.06251525855623184 : stdgo.GoFloat64), _z : (1.1102230248837136e-16 : stdgo.GoFloat64), _want : (16385.99945072085 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-6.462348523533467e-27 : stdgo.GoFloat64), _y : (-2.3763644720331857e-211 : stdgo.GoFloat64), _z : (4.000000000931324 : stdgo.GoFloat64), _want : (4.000000000931324 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-2.0000000037252907 : stdgo.GoFloat64), _y : (6.7904383376e-313 : stdgo.GoFloat64), _z : (-3.3951933161e-313 : stdgo.GoFloat64), _want : (-1.697607001654e-312 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-0.12499999999999999 : stdgo.GoFloat64), _y : (512.007568359375 : stdgo.GoFloat64), _z : (-1.4193627164960366e-16 : stdgo.GoFloat64), _want : (-64.00094604492188 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-2.7550648847397148e-39 : stdgo.GoFloat64), _y : (-3.4028301595800694e+38 : stdgo.GoFloat64), _z : (0.9960937495343386 : stdgo.GoFloat64), _want : (1.9335955376735676 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (5.723369164769208e+24 : stdgo.GoFloat64), _y : (3.8149300927159385e-06 : stdgo.GoFloat64), _z : (1.84489958778182e+19 : stdgo.GoFloat64), _want : (4.028324913621874e+19 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-0.4843749999990904 : stdgo.GoFloat64), _y : (-3.6893487872543293e+19 : stdgo.GoFloat64), _z : (9.223653786709391e+18 : stdgo.GoFloat64), _want : (2.7093936974938993e+19 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-3.8146972665201165e-06 : stdgo.GoFloat64), _y : (4.2949672959999385e+09 : stdgo.GoFloat64), _z : (-2.2204460489938386e-16 : stdgo.GoFloat64), _want : (-16384.000003844263 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (6.98156394130982e-309 : stdgo.GoFloat64), _y : (-1.1072962560000002e+09 : stdgo.GoFloat64), _z : (-4.4414561548793455e-308 : stdgo.GoFloat64), _want : (-7.73065965765153e-300 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (5e-324 : stdgo.GoFloat64), _y : (4.5 : stdgo.GoFloat64), _z : (-2e-323 : stdgo.GoFloat64), _want : (0 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (5e-324 : stdgo.GoFloat64), _y : (7 : stdgo.GoFloat64), _z : (-3.5e-323 : stdgo.GoFloat64), _want : (0 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (5e-324 : stdgo.GoFloat64), _y : (0.5000000000000001 : stdgo.GoFloat64), _z : (-5e-324 : stdgo.GoFloat64), _want : copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) } : T__struct_0),
({ _x : (-2.1240680525e-314 : stdgo.GoFloat64), _y : (-1.233647078189316e+308 : stdgo.GoFloat64), _z : (-0.25781249999954525 : stdgo.GoFloat64), _want : (-0.25780987964919844 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (8.579992955364441e-308 : stdgo.GoFloat64), _y : (0.6037391876780558 : stdgo.GoFloat64), _z : (-4.4501307410480706e-308 : stdgo.GoFloat64), _want : (7.29947236107098e-309 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-4.450143471986689e-308 : stdgo.GoFloat64), _y : (-0.9960937499927239 : stdgo.GoFloat64), _z : (-4.450419332475649e-308 : stdgo.GoFloat64), _want : (-1.7659233458788e-310 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (1.4932076393918112 : stdgo.GoFloat64), _y : (-2.2248022430460833e-308 : stdgo.GoFloat64), _z : (4.449875571054211e-308 : stdgo.GoFloat64), _want : (1.127783865601762e-308 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-2.288020632214759e+38 : stdgo.GoFloat64), _y : (-8.98846570988901e+307 : stdgo.GoFloat64), _z : (1.7696041796300924e+308 : stdgo.GoFloat64), _want : inf((0 : stdgo.GoInt)) } : T__struct_0),
({ _x : (1.4888652783208255e+308 : stdgo.GoFloat64), _y : (-9.007199254742012e+15 : stdgo.GoFloat64), _z : (-6.807282911929205e+38 : stdgo.GoFloat64), _want : inf((-1 : stdgo.GoInt)) } : T__struct_0),
({ _x : (9.142703268902826e+192 : stdgo.GoFloat64), _y : (-1.3504889569802838e+296 : stdgo.GoFloat64), _z : (-1.9082200803806996e-89 : stdgo.GoFloat64), _want : inf((-1 : stdgo.GoInt)) } : T__struct_0),
({ _x : (31.99218749627471 : stdgo.GoFloat64), _y : (-1.7976930544991702e+308 : stdgo.GoFloat64), _z : inf((0 : stdgo.GoInt)), _want : inf((0 : stdgo.GoInt)) } : T__struct_0),
({ _x : (-1.7976931281784667e+308 : stdgo.GoFloat64), _y : (-2.0009765625002265 : stdgo.GoFloat64), _z : inf((-1 : stdgo.GoInt)), _want : inf((-1 : stdgo.GoInt)) } : T__struct_0),
({ _x : (0 : stdgo.GoFloat64), _y : (0 : stdgo.GoFloat64), _z : (0 : stdgo.GoFloat64), _want : (0 : stdgo.GoFloat64) } : T__struct_0),
({ _x : copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), _y : (0 : stdgo.GoFloat64), _z : (0 : stdgo.GoFloat64), _want : (0 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (0 : stdgo.GoFloat64), _y : (0 : stdgo.GoFloat64), _z : copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), _want : (0 : stdgo.GoFloat64) } : T__struct_0),
({ _x : copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), _y : (0 : stdgo.GoFloat64), _z : copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)), _want : copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) } : T__struct_0),
({ _x : (-1.1754226043408471e-38 : stdgo.GoFloat64), _y : naN(), _z : inf((0 : stdgo.GoInt)), _want : naN() } : T__struct_0),
({ _x : (0 : stdgo.GoFloat64), _y : (0 : stdgo.GoFloat64), _z : (2.22507385643494e-308 : stdgo.GoFloat64), _want : (2.22507385643494e-308 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-8.65697792e+09 : stdgo.GoFloat64), _y : naN(), _z : (-7.516192799999999e+09 : stdgo.GoFloat64), _want : naN() } : T__struct_0),
({ _x : (-0.00012207403779029757 : stdgo.GoFloat64), _y : (3.221225471996093e+09 : stdgo.GoFloat64), _z : naN(), _want : naN() } : T__struct_0),
({ _x : inf((-1 : stdgo.GoInt)), _y : (0.1252441407414153 : stdgo.GoFloat64), _z : (-1.387184532981584e-76 : stdgo.GoFloat64), _want : inf((-1 : stdgo.GoInt)) } : T__struct_0),
({ _x : inf((0 : stdgo.GoInt)), _y : (1.525878907671432e-05 : stdgo.GoFloat64), _z : (-9.214364835452549e+18 : stdgo.GoFloat64), _want : inf((0 : stdgo.GoInt)) } : T__struct_0),
({ _x : (0.1777916152213626 : stdgo.GoFloat64), _y : (-32.000015266239636 : stdgo.GoFloat64), _z : (-2.2204459148334633e-16 : stdgo.GoFloat64), _want : (-5.689334401293007 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-2.0816681711722314e-16 : stdgo.GoFloat64), _y : (-0.4997558592585846 : stdgo.GoFloat64), _z : (-0.9465627129124969 : stdgo.GoFloat64), _want : (-0.9465627129124968 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-1.9999997615814211 : stdgo.GoFloat64), _y : (1.8518819259933516e+19 : stdgo.GoFloat64), _z : (16.874999999999996 : stdgo.GoFloat64), _want : (-3.703763410463646e+19 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-0.12499994039717421 : stdgo.GoFloat64), _y : (32767.99999976135 : stdgo.GoFloat64), _z : (-2.0752587082923246e+19 : stdgo.GoFloat64), _want : (-2.075258708292325e+19 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (7.705600568510257e-34 : stdgo.GoFloat64), _y : (-1.801432979000528e+16 : stdgo.GoFloat64), _z : (-0.17224197722973714 : stdgo.GoFloat64), _want : (-0.17224197722973716 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (3.8988133103758913e-308 : stdgo.GoFloat64), _y : (-0.9848632812499999 : stdgo.GoFloat64), _z : (3.893879244098556e-308 : stdgo.GoFloat64), _want : (5.40811742605814e-310 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-0.012651981190687427 : stdgo.GoFloat64), _y : (6.911985574912436e+38 : stdgo.GoFloat64), _z : (6.669240527007144e+18 : stdgo.GoFloat64), _want : (-8.745031148409496e+36 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (4.612811918325842e+18 : stdgo.GoFloat64), _y : (1.4901161193847641e-08 : stdgo.GoFloat64), _z : (2.6077032311277997e-08 : stdgo.GoFloat64), _want : (6.873625395187494e+10 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-9.094947033611148e-13 : stdgo.GoFloat64), _y : (4.450691014249257e-308 : stdgo.GoFloat64), _z : (2.086006742350485e-308 : stdgo.GoFloat64), _want : (2.086006742346437e-308 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-7.751454006381804e-05 : stdgo.GoFloat64), _y : (5.588653777189071e-308 : stdgo.GoFloat64), _z : (-2.2207280111272877e-308 : stdgo.GoFloat64), _want : (-2.2211612130544025e-308 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (-1 : stdgo.GoFloat64), _y : (1 : stdgo.GoFloat64), _z : (1 : stdgo.GoFloat64), _want : (0 : stdgo.GoFloat64) } : T__struct_0),
({ _x : (1 : stdgo.GoFloat64), _y : (1 : stdgo.GoFloat64), _z : (-1 : stdgo.GoFloat64), _want : (0 : stdgo.GoFloat64) } : T__struct_0)].concat([for (i in 44 ... (44 > 44 ? 44 : 44 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoFloat64), _y : (0 : stdgo.GoFloat64), _z : (0 : stdgo.GoFloat64), _want : (0 : stdgo.GoFloat64) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
var _sqrt32 : stdgo.Slice<stdgo.GoFloat32> = (new stdgo.Slice<stdgo.GoFloat32>(12, 12, ...[
(0 : stdgo.GoFloat64),
(copysign((0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64)) : stdgo.GoFloat32),
(naN() : stdgo.GoFloat32),
(inf((1 : stdgo.GoInt)) : stdgo.GoFloat32),
(inf((-1 : stdgo.GoInt)) : stdgo.GoFloat32),
(1 : stdgo.GoFloat64),
(2 : stdgo.GoFloat64),
(-2 : stdgo.GoFloat64),
(4.9790120124816895 : stdgo.GoFloat64),
(7.738872528076172 : stdgo.GoFloat64),
(-0.27688005566596985 : stdgo.GoFloat64),
(-5.010603427886963 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
var portableFMA : (stdgo.GoFloat64, stdgo.GoFloat64, stdgo.GoFloat64) -> stdgo.GoFloat64 = fma;
var _floatTests : stdgo.Slice<stdgo._internal.math_test.Math_test.T_floatTest> = (new stdgo.Slice<stdgo._internal.math_test.Math_test.T_floatTest>(4, 4, ...[(new stdgo._internal.math_test.Math_test.T_floatTest(stdgo.Go.toInterface((1.7976931348623157e+308 : stdgo.GoFloat64)), ("MaxFloat64" : stdgo.GoString), ("1.7976931348623157e+308" : stdgo.GoString)) : stdgo._internal.math_test.Math_test.T_floatTest), (new stdgo._internal.math_test.Math_test.T_floatTest(stdgo.Go.toInterface((5e-324 : stdgo.GoFloat64)), ("SmallestNonzeroFloat64" : stdgo.GoString), ("5e-324" : stdgo.GoString)) : stdgo._internal.math_test.Math_test.T_floatTest), (new stdgo._internal.math_test.Math_test.T_floatTest(stdgo.Go.toInterface(((3.4028234663852886e+38 : stdgo.GoFloat64) : stdgo.GoFloat32)), ("MaxFloat32" : stdgo.GoString), ("3.4028235e+38" : stdgo.GoString)) : stdgo._internal.math_test.Math_test.T_floatTest), (new stdgo._internal.math_test.Math_test.T_floatTest(stdgo.Go.toInterface(((1.401298464324817e-45 : stdgo.GoFloat64) : stdgo.GoFloat32)), ("SmallestNonzeroFloat32" : stdgo.GoString), ("1e-45" : stdgo.GoString)) : stdgo._internal.math_test.Math_test.T_floatTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.math_test.Math_test.T_floatTest)])) : stdgo.Slice<stdgo._internal.math_test.Math_test.T_floatTest>);
var _indirectSqrt : stdgo.GoFloat64 -> stdgo.GoFloat64 = sqrt;
var _copysignNeg : stdgo.GoFloat64 = (-1 : stdgo.GoFloat64);
var _absPos : stdgo.GoFloat64 = (0.5 : stdgo.GoFloat64);
var _pow10pos : stdgo.GoInt = (300 : stdgo.GoInt);
var _pow10neg : stdgo.GoInt = (-300 : stdgo.GoInt);
var _roundNeg : stdgo.GoFloat64 = (-2.5 : stdgo.GoFloat64);
var _signbitPos : stdgo.GoFloat64 = (2.5 : stdgo.GoFloat64);
var _roundUint64 : stdgo.GoUInt64 = (5i64 : stdgo.GoUInt64);
var _roundFloat32 : stdgo.GoFloat32 = ((-2.5 : stdgo.GoFloat64) : stdgo.GoFloat32);
var _roundUint32 : stdgo.GoUInt32 = (5u32 : stdgo.GoUInt32);
var _trigHuge : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(2.68435456e+08 : stdgo.GoFloat64), (5.36870912e+08 : stdgo.GoFloat64), (1.073741824e+09 : stdgo.GoFloat64), (3.4359738368e+10 : stdgo.GoFloat64), (1.329227995784916e+36 : stdgo.GoFloat64), (1.7668470647783843e+72 : stdgo.GoFloat64), (3.1217485503159922e+144 : stdgo.GoFloat64), (1.8919697882131776e+69 : stdgo.GoFloat64), (2.514859209672214e+105 : stdgo.GoFloat64), (1.7976931348623157e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _cosHuge : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-0.16556897949057875 : stdgo.GoFloat64), (-0.9451738260608966 : stdgo.GoFloat64), (0.7867071229411882 : stdgo.GoFloat64), (-0.764663012496353 : stdgo.GoFloat64), (-0.9258790228548379 : stdgo.GoFloat64), (0.9360104259335379 : stdgo.GoFloat64), (-0.2828277764019379 : stdgo.GoFloat64), (-0.14616431394103618 : stdgo.GoFloat64), (-0.7945605821067141 : stdgo.GoFloat64), (-0.9999876894265599 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _sinHuge : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-0.9861982118369756 : stdgo.GoFloat64), (0.3265676630185633 : stdgo.GoFloat64), (-0.6173264150460421 : stdgo.GoFloat64), (-0.6444303510232912 : stdgo.GoFloat64), (0.377820109360752 : stdgo.GoFloat64), (-0.35197227524865776 : stdgo.GoFloat64), (0.9591707089436872 : stdgo.GoFloat64), (0.9892603263702362 : stdgo.GoFloat64), (-0.6071848823564695 : stdgo.GoFloat64), (0.00496195478918406 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
var _tanHuge : stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(5.956418979396394 : stdgo.GoFloat64), (-0.3455106923343039 : stdgo.GoFloat64), (-0.7846966133192004 : stdgo.GoFloat64), (0.8427638587087598 : stdgo.GoFloat64), (-0.40806638884180424 : stdgo.GoFloat64), (-0.37603456702698074 : stdgo.GoFloat64), (-3.391359650547799 : stdgo.GoFloat64), (-6.76813854009065 : stdgo.GoFloat64), (0.7641769501660493 : stdgo.GoFloat64), (-0.00496201587444489 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
@:structInit @:private class T_fi {
    public var _f : stdgo.GoFloat64 = 0;
    public var _i : stdgo.GoInt = 0;
    public function new(?_f:stdgo.GoFloat64, ?_i:stdgo.GoInt) {
        if (_f != null) this._f = _f;
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fi(_f, _i);
    }
}
@:structInit @:private class T_floatTest {
    public var _val : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _name : stdgo.GoString = "";
    public var _str : stdgo.GoString = "";
    public function new(?_val:stdgo.AnyInterface, ?_name:stdgo.GoString, ?_str:stdgo.GoString) {
        if (_val != null) this._val = _val;
        if (_name != null) this._name = _name;
        if (_str != null) this._str = _str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_floatTest(_val, _name, _str);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math_test.Math_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.math_test.Math_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _x : stdgo.GoFloat64;
    public var _y : stdgo.GoFloat64;
    public var _z : stdgo.GoFloat64;
    public var _want : stdgo.GoFloat64;
};
function _tolerance(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Bool {
        if (_a == (_b)) {
            return true;
        };
        var _d = (_a - _b : stdgo.GoFloat64);
        if ((_d < (0 : stdgo.GoFloat64) : Bool)) {
            _d = -_d;
        };
        if (_b != (0 : stdgo.GoFloat64)) {
            _e = (_e * _b : stdgo.GoFloat64);
            if ((_e < (0 : stdgo.GoFloat64) : Bool)) {
                _e = -_e;
            };
        };
        return (_d < _e : Bool);
    }
function _close(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
        return _tolerance(_a, _b, (1e-14 : stdgo.GoFloat64));
    }
function _veryclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
        return _tolerance(_a, _b, (4e-16 : stdgo.GoFloat64));
    }
function _soclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64, _e:stdgo.GoFloat64):Bool {
        return _tolerance(_a, _b, _e);
    }
function _alike(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
        if ((isNaN(_a) && isNaN(_b) : Bool)) {
            return true;
        } else if (_a == (_b)) {
            return signbit(_a) == (signbit(_b));
        };
        return false;
    }
function testNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f64 = naN();
        if (_f64 == (_f64)) {
            _t.fatalf(("NaN() returns %g, expected NaN" : stdgo.GoString), stdgo.Go.toInterface(_f64));
        };
        var _f32 = (_f64 : stdgo.GoFloat32);
        if (_f32 == (_f32)) {
            _t.fatalf(("float32(NaN()) is %g, expected NaN" : stdgo.GoString), stdgo.Go.toInterface(_f32));
        };
    }
function testAcos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = acos(_a);
                    if (!_close(_acos[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Acos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_acos[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfacosSC.length) : Bool), _i++, {
                {
                    var _f = acos(_vfacosSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_acosSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Acos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfacosSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_acosSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testAcosh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = ((1 : stdgo.GoFloat64) + abs(_vf[(_i : stdgo.GoInt)]) : stdgo.GoFloat64);
                {
                    var _f = acosh(_a);
                    if (!_veryclose(_acosh[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Acosh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_acosh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfacoshSC.length) : Bool), _i++, {
                {
                    var _f = acosh(_vfacoshSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_acoshSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Acosh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfacoshSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_acoshSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testAsin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = asin(_a);
                    if (!_veryclose(_asin[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_asin[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfasinSC.length) : Bool), _i++, {
                {
                    var _f = asin(_vfasinSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_asinSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Asin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfasinSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_asinSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testAsinh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = asinh(_vf[(_i : stdgo.GoInt)]);
                    if (!_veryclose(_asinh[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Asinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_asinh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfasinhSC.length) : Bool), _i++, {
                {
                    var _f = asinh(_vfasinhSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_asinhSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Asinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfasinhSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_asinhSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testAtan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = atan(_vf[(_i : stdgo.GoInt)]);
                    if (!_veryclose(_atan[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Atan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_atan[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfatanSC.length) : Bool), _i++, {
                {
                    var _f = atan(_vfatanSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_atanSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Atan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfatanSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_atanSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testAtanh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = atanh(_a);
                    if (!_veryclose(_atanh[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Atanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_atanh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfatanhSC.length) : Bool), _i++, {
                {
                    var _f = atanh(_vfatanhSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_atanhSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Atanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfatanhSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_atanhSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testAtan2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = atan2((10 : stdgo.GoFloat64), _vf[(_i : stdgo.GoInt)]);
                    if (!_veryclose(_atan2[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Atan2(10, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_atan2[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfatan2SC.length) : Bool), _i++, {
                {
                    var _f = atan2(_vfatan2SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vfatan2SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_atan2SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Atan2(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfatan2SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vfatan2SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_atan2SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testCbrt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = cbrt(_vf[(_i : stdgo.GoInt)]);
                    if (!_veryclose(_cbrt[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Cbrt(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_cbrt[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfcbrtSC.length) : Bool), _i++, {
                {
                    var _f = cbrt(_vfcbrtSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_cbrtSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Cbrt(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfcbrtSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_cbrtSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testCeil(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = ceil(_vf[(_i : stdgo.GoInt)]);
                    if (!_alike(_ceil[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ceil(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_ceil[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfceilSC.length) : Bool), _i++, {
                {
                    var _f = ceil(_vfceilSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_ceilSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ceil(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfceilSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_ceilSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testCopysign(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = copysign(_vf[(_i : stdgo.GoInt)], (-1 : stdgo.GoFloat64));
                    if (_copysign[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Copysign(%g, -1) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_copysign[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = copysign(_vf[(_i : stdgo.GoInt)], (1 : stdgo.GoFloat64));
                    if (-_copysign[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Copysign(%g, 1) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(-_copysign[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfcopysignSC.length) : Bool), _i++, {
                {
                    var _f = copysign(_vfcopysignSC[(_i : stdgo.GoInt)], (-1 : stdgo.GoFloat64));
                    if (!_alike(_copysignSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Copysign(%g, -1) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfcopysignSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_copysignSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testCos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = cos(_vf[(_i : stdgo.GoInt)]);
                    if (!_veryclose(_cos[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Cos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_cos[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfcosSC.length) : Bool), _i++, {
                {
                    var _f = cos(_vfcosSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_cosSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Cos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfcosSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_cosSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testCosh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = cosh(_vf[(_i : stdgo.GoInt)]);
                    if (!_close(_cosh[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Cosh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_cosh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfcoshSC.length) : Bool), _i++, {
                {
                    var _f = cosh(_vfcoshSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_coshSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Cosh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfcoshSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_coshSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testErf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = erf(_a);
                    if (!_veryclose(_erf[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erf(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_erf[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vferfSC.length) : Bool), _i++, {
                {
                    var _f = erf(_vferfSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_erfSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erf(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vferfSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_erfSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testErfc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = erfc(_a);
                    if (!_veryclose(_erfc[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfc(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_erfc[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vferfcSC.length) : Bool), _i++, {
                {
                    var _f = erfc(_vferfcSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_erfcSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfc(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vferfcSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_erfcSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testErfinv(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = erfinv(_a);
                    if (!_veryclose(_erfinv[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfinv(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_erfinv[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vferfinvSC.length) : Bool), _i++, {
                {
                    var _f = erfinv(_vferfinvSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_erfinvSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfinv(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vferfinvSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_erfinvSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _x = (-0.9 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (0.9 : stdgo.GoFloat64) : Bool), _x = (_x + (0.01 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _f = erf(erfinv(_x));
                    if (!_close(_x, _f)) {
                        _t.errorf(("Erf(Erfinv(%g)) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
        {
            var _x = (-0.9 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (0.9 : stdgo.GoFloat64) : Bool), _x = (_x + (0.01 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _f = erfinv(erf(_x));
                    if (!_close(_x, _f)) {
                        _t.errorf(("Erfinv(Erf(%g)) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
    }
function testErfcinv(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = ((1 : stdgo.GoFloat64) - ((_vf[(_i : stdgo.GoInt)] / (10 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                {
                    var _f = erfcinv(_a);
                    if (!_veryclose(_erfinv[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfcinv(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_erfinv[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vferfcinvSC.length) : Bool), _i++, {
                {
                    var _f = erfcinv(_vferfcinvSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_erfcinvSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Erfcinv(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vferfcinvSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_erfcinvSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _x = (0.1 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (1.9 : stdgo.GoFloat64) : Bool), _x = (_x + (0.01 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _f = erfc(erfcinv(_x));
                    if (!_close(_x, _f)) {
                        _t.errorf(("Erfc(Erfcinv(%g)) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
        {
            var _x = (0.1 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (1.9 : stdgo.GoFloat64) : Bool), _x = (_x + (0.01 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _f = erfcinv(erfc(_x));
                    if (!_close(_x, _f)) {
                        _t.errorf(("Erfcinv(Erfc(%g)) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_x));
                    };
                };
            });
        };
    }
function testExp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testExp(_t, exp, ("Exp" : stdgo.GoString));
        _testExp(_t, expGo, ("ExpGo" : stdgo.GoString));
    }
function _testExp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, exp:stdgo.GoFloat64 -> stdgo.GoFloat64, _name:stdgo.GoString):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = exp(_vf[(_i : stdgo.GoInt)]);
                    if (!_veryclose(_exp[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("%s(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_exp[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfexpSC.length) : Bool), _i++, {
                {
                    var _f = exp(_vfexpSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_expSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("%s(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_vfexpSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_expSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testExpm1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_vf[(_i : stdgo.GoInt)] / (100 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = expm1(_a);
                    if (!_veryclose(_expm1[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Expm1(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_expm1[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_vf[(_i : stdgo.GoInt)] * (10 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = expm1(_a);
                    if (!_close(_expm1Large[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Expm1(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_expm1Large[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfexpm1SC.length) : Bool), _i++, {
                {
                    var _f = expm1(_vfexpm1SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_expm1SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Expm1(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfexpm1SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_expm1SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testExp2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testExp2(_t, exp2, ("Exp2" : stdgo.GoString));
        _testExp2(_t, exp2Go, ("Exp2Go" : stdgo.GoString));
    }
function _testExp2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, exp2:stdgo.GoFloat64 -> stdgo.GoFloat64, _name:stdgo.GoString):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = exp2(_vf[(_i : stdgo.GoInt)]);
                    if (!_close(_exp2[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("%s(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_exp2[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfexp2SC.length) : Bool), _i++, {
                {
                    var _f = exp2(_vfexp2SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_exp2SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("%s(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_vfexp2SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_exp2SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _n = (-1074 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (1024 : stdgo.GoInt) : Bool), _n++, {
                var _f = exp2((_n : stdgo.GoFloat64));
                var _vf = ldexp((1 : stdgo.GoFloat64), _n);
                if (_f != (_vf)) {
                    _t.errorf(("%s(%d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_vf));
                };
            });
        };
    }
function testAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = abs(_vf[(_i : stdgo.GoInt)]);
                    if (_fabs[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Abs(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fabs[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffabsSC.length) : Bool), _i++, {
                {
                    var _f = abs(_vffabsSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_fabsSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Abs(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffabsSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fabsSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testDim(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = dim(_vf[(_i : stdgo.GoInt)], (0 : stdgo.GoFloat64));
                    if (_fdim[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Dim(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface((0 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fdim[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffdimSC.length) : Bool), _i++, {
                {
                    var _f = dim(_vffdimSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vffdimSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_fdimSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Dim(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffdimSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vffdimSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fdimSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffdim2SC.length) : Bool), _i++, {
                {
                    var _f = dim(_vffdim2SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vffdim2SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_fdimSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Dim(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffdim2SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vffdim2SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fdimSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testFloor(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = floor(_vf[(_i : stdgo.GoInt)]);
                    if (!_alike(_floor[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Floor(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_floor[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfceilSC.length) : Bool), _i++, {
                {
                    var _f = floor(_vfceilSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_ceilSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Floor(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfceilSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_ceilSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testMax(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = max(_vf[(_i : stdgo.GoInt)], _ceil[(_i : stdgo.GoInt)]);
                    if (_ceil[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Max(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ceil[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_ceil[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffdimSC.length) : Bool), _i++, {
                {
                    var _f = max(_vffdimSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vffdimSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_fmaxSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Max(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffdimSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vffdimSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fmaxSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffdim2SC.length) : Bool), _i++, {
                {
                    var _f = max(_vffdim2SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vffdim2SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_fmaxSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Max(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffdim2SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vffdim2SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fmaxSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testMin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = min(_vf[(_i : stdgo.GoInt)], _floor[(_i : stdgo.GoInt)]);
                    if (_floor[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Min(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_floor[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_floor[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffdimSC.length) : Bool), _i++, {
                {
                    var _f = min(_vffdimSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vffdimSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_fminSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Min(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffdimSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vffdimSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fminSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffdim2SC.length) : Bool), _i++, {
                {
                    var _f = min(_vffdim2SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vffdim2SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_fminSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Min(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffdim2SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vffdim2SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fminSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testMod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = mod((10 : stdgo.GoFloat64), _vf[(_i : stdgo.GoInt)]);
                    if (_fmod[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Mod(10, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fmod[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffmodSC.length) : Bool), _i++, {
                {
                    var _f = mod(_vffmodSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vffmodSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_fmodSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Mod(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffmodSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vffmodSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fmodSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = mod((5.9790119248836734e+200 : stdgo.GoFloat64), (1.1258465975523544 : stdgo.GoFloat64));
            if ((0.6447968302508578 : stdgo.GoFloat64) != (_f)) {
                _t.errorf(("Remainder(5.9790119248836734e+200, 1.1258465975523544) = %g, want 0.6447968302508578" : stdgo.GoString), stdgo.Go.toInterface(_f));
            };
        };
    }
function testFrexp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var __tmp__ = frexp(_vf[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _j:stdgo.GoInt = __tmp__._1;
                    if ((!_veryclose(_frexp[(_i : stdgo.GoInt)]._f, _f) || (_frexp[(_i : stdgo.GoInt)]._i != _j) : Bool)) {
                        _t.errorf(("Frexp(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_frexp[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_frexp[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffrexpSC.length) : Bool), _i++, {
                {
                    var __tmp__ = frexp(_vffrexpSC[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _j:stdgo.GoInt = __tmp__._1;
                    if ((!_alike(_frexpSC[(_i : stdgo.GoInt)]._f, _f) || (_frexpSC[(_i : stdgo.GoInt)]._i != _j) : Bool)) {
                        _t.errorf(("Frexp(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_vffrexpSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_frexpSC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_frexpSC[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffrexpBC.length) : Bool), _i++, {
                {
                    var __tmp__ = frexp(_vffrexpBC[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _j:stdgo.GoInt = __tmp__._1;
                    if ((!_alike(_frexpBC[(_i : stdgo.GoInt)]._f, _f) || (_frexpBC[(_i : stdgo.GoInt)]._i != _j) : Bool)) {
                        _t.errorf(("Frexp(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_vffrexpBC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_frexpBC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_frexpBC[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
    }
function testGamma(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        #if (interp || js) {
            trace("testGamma" + " skip targets: " + "interp, js");
            return;
        } #else null #end;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = gamma(_vf[(_i : stdgo.GoInt)]);
                    if (!_close(_gamma[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Gamma(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_gamma[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        for (__8 => _g in _vfgamma) {
            var _f = gamma(_g[(0 : stdgo.GoInt)]);
            var _ok:Bool = false;
            if ((((isNaN(_g[(1 : stdgo.GoInt)]) || isInf(_g[(1 : stdgo.GoInt)], (0 : stdgo.GoInt)) : Bool) || _g[(1 : stdgo.GoInt)] == (0 : stdgo.GoFloat64) : Bool) || (_f == (0 : stdgo.GoFloat64)) : Bool)) {
                _ok = _alike(_g[(1 : stdgo.GoInt)], _f);
            } else if (((_g[(0 : stdgo.GoInt)] > (-50 : stdgo.GoFloat64) : Bool) && (_g[(0 : stdgo.GoInt)] <= (171 : stdgo.GoFloat64) : Bool) : Bool)) {
                _ok = _veryclose(_g[(1 : stdgo.GoInt)], _f);
            } else {
                _ok = _close(_g[(1 : stdgo.GoInt)], _f);
            };
            if (!_ok) {
                _t.errorf(("Gamma(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_g[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_g[(1 : stdgo.GoInt)]));
            };
        };
    }
function testHypot(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = abs((((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64) * sqrt((2 : stdgo.GoFloat64)) : stdgo.GoFloat64));
                {
                    var _f = hypot(((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64), ((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64));
                    if (!_veryclose(_a, _f)) {
                        _t.errorf(("Hypot(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64)), stdgo.Go.toInterface(((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_a));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfhypotSC.length) : Bool), _i++, {
                {
                    var _f = hypot(_vfhypotSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vfhypotSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_hypotSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Hypot(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfhypotSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vfhypotSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_hypotSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testHypotGo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = abs((((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64) * sqrt((2 : stdgo.GoFloat64)) : stdgo.GoFloat64));
                {
                    var _f = hypotGo(((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64), ((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64));
                    if (!_veryclose(_a, _f)) {
                        _t.errorf(("HypotGo(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64)), stdgo.Go.toInterface(((1e+200 : stdgo.GoFloat64) * _tanh[(_i : stdgo.GoInt)] : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_a));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfhypotSC.length) : Bool), _i++, {
                {
                    var _f = hypotGo(_vfhypotSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vfhypotSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_hypotSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("HypotGo(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfhypotSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vfhypotSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_hypotSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testIlogb(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_frexp[(_i : stdgo.GoInt)]._i - (1 : stdgo.GoInt) : stdgo.GoInt);
                {
                    var _e = ilogb(_vf[(_i : stdgo.GoInt)]);
                    if (_a != (_e)) {
                        _t.errorf(("Ilogb(%g) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_a));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vflogbSC.length) : Bool), _i++, {
                {
                    var _e = ilogb(_vflogbSC[(_i : stdgo.GoInt)]);
                    if (_ilogbSC[(_i : stdgo.GoInt)] != (_e)) {
                        _t.errorf(("Ilogb(%g) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_vflogbSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_ilogbSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffrexpBC.length) : Bool), _i++, {
                {
                    var _e = ilogb(_vffrexpBC[(_i : stdgo.GoInt)]);
                    if ((_logbBC[(_i : stdgo.GoInt)] : stdgo.GoInt) != (_e)) {
                        _t.errorf(("Ilogb(%g) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_vffrexpBC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_e), stdgo.Go.toInterface((_logbBC[(_i : stdgo.GoInt)] : stdgo.GoInt)));
                    };
                };
            });
        };
    }
function testJ0(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = j0(_vf[(_i : stdgo.GoInt)]);
                    if (!_soclose(_j0[(_i : stdgo.GoInt)], _f, (4e-14 : stdgo.GoFloat64))) {
                        _t.errorf(("J0(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j0[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfj0SC.length) : Bool), _i++, {
                {
                    var _f = j0(_vfj0SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_j0SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("J0(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfj0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j0SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testJ1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = j1(_vf[(_i : stdgo.GoInt)]);
                    if (!_close(_j1[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("J1(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j1[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfj0SC.length) : Bool), _i++, {
                {
                    var _f = j1(_vfj0SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_j1SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("J1(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfj0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j1SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testJn(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = jn((2 : stdgo.GoInt), _vf[(_i : stdgo.GoInt)]);
                    if (!_close(_j2[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Jn(2, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j2[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = jn((-3 : stdgo.GoInt), _vf[(_i : stdgo.GoInt)]);
                    if (!_close(_jM3[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Jn(-3, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_jM3[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfj0SC.length) : Bool), _i++, {
                {
                    var _f = jn((2 : stdgo.GoInt), _vfj0SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_j2SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Jn(2, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfj0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_j2SC[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = jn((-3 : stdgo.GoInt), _vfj0SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_jM3SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Jn(-3, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfj0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_jM3SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testLdexp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = ldexp(_frexp[(_i : stdgo.GoInt)]._f, _frexp[(_i : stdgo.GoInt)]._i);
                    if (!_veryclose(_vf[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_frexp[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_frexp[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffrexpSC.length) : Bool), _i++, {
                {
                    var _f = ldexp(_frexpSC[(_i : stdgo.GoInt)]._f, _frexpSC[(_i : stdgo.GoInt)]._i);
                    if (!_alike(_vffrexpSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_frexpSC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_frexpSC[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_vffrexpSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfldexpSC.length) : Bool), _i++, {
                {
                    var _f = ldexp(_vfldexpSC[(_i : stdgo.GoInt)]._f, _vfldexpSC[(_i : stdgo.GoInt)]._i);
                    if (!_alike(_ldexpSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfldexpSC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_vfldexpSC[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_ldexpSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffrexpBC.length) : Bool), _i++, {
                {
                    var _f = ldexp(_frexpBC[(_i : stdgo.GoInt)]._f, _frexpBC[(_i : stdgo.GoInt)]._i);
                    if (!_alike(_vffrexpBC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_frexpBC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_frexpBC[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_vffrexpBC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfldexpBC.length) : Bool), _i++, {
                {
                    var _f = ldexp(_vfldexpBC[(_i : stdgo.GoInt)]._f, _vfldexpBC[(_i : stdgo.GoInt)]._i);
                    if (!_alike(_ldexpBC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Ldexp(%g, %d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfldexpBC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_vfldexpBC[(_i : stdgo.GoInt)]._i), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_ldexpBC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testLgamma(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var __tmp__ = lgamma(_vf[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _s:stdgo.GoInt = __tmp__._1;
                    if ((!_close(_lgamma[(_i : stdgo.GoInt)]._f, _f) || (_lgamma[(_i : stdgo.GoInt)]._i != _s) : Bool)) {
                        _t.errorf(("Lgamma(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_lgamma[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_lgamma[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vflgammaSC.length) : Bool), _i++, {
                {
                    var __tmp__ = lgamma(_vflgammaSC[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _s:stdgo.GoInt = __tmp__._1;
                    if ((!_alike(_lgammaSC[(_i : stdgo.GoInt)]._f, _f) || (_lgammaSC[(_i : stdgo.GoInt)]._i != _s) : Bool)) {
                        _t.errorf(("Lgamma(%g) = %g, %d, want %g, %d" : stdgo.GoString), stdgo.Go.toInterface(_vflgammaSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_lgammaSC[(_i : stdgo.GoInt)]._f), stdgo.Go.toInterface(_lgammaSC[(_i : stdgo.GoInt)]._i));
                    };
                };
            });
        };
    }
function testLog(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = abs(_vf[(_i : stdgo.GoInt)]);
                {
                    var _f = log(_a);
                    if (_log[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Log(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_log[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = log((10 : stdgo.GoFloat64));
            if (_f != (2.302585092994046 : stdgo.GoFloat64)) {
                _t.errorf(("Log(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface((10 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((2.302585092994046 : stdgo.GoFloat64)));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vflogSC.length) : Bool), _i++, {
                {
                    var _f = log(_vflogSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_logSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vflogSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_logSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testLogb(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = logb(_vf[(_i : stdgo.GoInt)]);
                    if (_logb[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Logb(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_logb[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vflogbSC.length) : Bool), _i++, {
                {
                    var _f = logb(_vflogbSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_logbSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Logb(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vflogbSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_logbSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffrexpBC.length) : Bool), _i++, {
                {
                    var _f = logb(_vffrexpBC[(_i : stdgo.GoInt)]);
                    if (!_alike(_logbBC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Logb(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffrexpBC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_logbBC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testLog10(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = abs(_vf[(_i : stdgo.GoInt)]);
                {
                    var _f = log10(_a);
                    if (!_veryclose(_log10[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log10(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_log10[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = log10((2.718281828459045 : stdgo.GoFloat64));
            if (_f != (0.4342944819032518 : stdgo.GoFloat64)) {
                _t.errorf(("Log10(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface((2.718281828459045 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((0.4342944819032518 : stdgo.GoFloat64)));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vflogSC.length) : Bool), _i++, {
                {
                    var _f = log10(_vflogSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_logSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log10(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vflogSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_logSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testLog1p(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = (_vf[(_i : stdgo.GoInt)] / (100 : stdgo.GoFloat64) : stdgo.GoFloat64);
                {
                    var _f = log1p(_a);
                    if (!_veryclose(_log1p[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log1p(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_log1p[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        var _a = (9 : stdgo.GoFloat64);
        {
            var _f = log1p(_a);
            if (_f != (2.302585092994046 : stdgo.GoFloat64)) {
                _t.errorf(("Log1p(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((2.302585092994046 : stdgo.GoFloat64)));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vflogSC.length) : Bool), _i++, {
                {
                    var _f = log1p(_vflog1pSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_log1pSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log1p(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vflog1pSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_log1pSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testLog2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = abs(_vf[(_i : stdgo.GoInt)]);
                {
                    var _f = log2(_a);
                    if (!_veryclose(_log2[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log2(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_log2[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = log2((2.718281828459045 : stdgo.GoFloat64));
            if (_f != (1.4426950408889634 : stdgo.GoFloat64)) {
                _t.errorf(("Log2(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface((2.718281828459045 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface((1.4426950408889634 : stdgo.GoFloat64)));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vflogSC.length) : Bool), _i++, {
                {
                    var _f = log2(_vflogSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_logSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Log2(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vflogSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_logSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (-1074 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (1023 : stdgo.GoInt) : Bool), _i++, {
                var _f = ldexp((1 : stdgo.GoFloat64), _i);
                var _l = log2(_f);
                if (_l != ((_i : stdgo.GoFloat64))) {
                    _t.errorf(("Log2(2**%d) = %g, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
function testModf(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var __tmp__ = modf(_vf[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _g:stdgo.GoFloat64 = __tmp__._1;
                    if ((!_veryclose(_modf[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _f) || !_veryclose(_modf[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)], _g) : Bool)) {
                        _t.errorf(("Modf(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_modf[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_modf[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfmodfSC.length) : Bool), _i++, {
                {
                    var __tmp__ = modf(_vfmodfSC[(_i : stdgo.GoInt)]), _f:stdgo.GoFloat64 = __tmp__._0, _g:stdgo.GoFloat64 = __tmp__._1;
                    if ((!_alike(_modfSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _f) || !_alike(_modfSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)], _g) : Bool)) {
                        _t.errorf(("Modf(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_vfmodfSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_modfSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_modfSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testNextafter32(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        #if (interp || js) {
            trace("testNextafter32" + " skip targets: " + "interp, js");
            return;
        } #else null #end;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _vfi = (_vf[(_i : stdgo.GoInt)] : stdgo.GoFloat32);
                {
                    var _f = nextafter32(_vfi, (10 : stdgo.GoFloat64));
                    if (_nextafter32[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Nextafter32(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfi), stdgo.Go.toInterface((10 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_nextafter32[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfnextafter32SC.length) : Bool), _i++, {
                {
                    var _f = nextafter32(_vfnextafter32SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vfnextafter32SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike((_nextafter32SC[(_i : stdgo.GoInt)] : stdgo.GoFloat64), (_f : stdgo.GoFloat64))) {
                        _t.errorf(("Nextafter32(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfnextafter32SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vfnextafter32SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_nextafter32SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testNextafter64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = nextafter(_vf[(_i : stdgo.GoInt)], (10 : stdgo.GoFloat64));
                    if (_nextafter64[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Nextafter64(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface((10 : stdgo.GoFloat64)), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_nextafter64[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfnextafter64SC.length) : Bool), _i++, {
                {
                    var _f = nextafter(_vfnextafter64SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vfnextafter64SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_nextafter64SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Nextafter64(%g, %g) = %g want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfnextafter64SC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vfnextafter64SC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_nextafter64SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testPow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = pow((10 : stdgo.GoFloat64), _vf[(_i : stdgo.GoInt)]);
                    if (!_close(_pow[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Pow(10, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_pow[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfpowSC.length) : Bool), _i++, {
                {
                    var _f = pow(_vfpowSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vfpowSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_powSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Pow(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfpowSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vfpowSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_powSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testPow10(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfpow10SC.length) : Bool), _i++, {
                {
                    var _f = pow10(_vfpow10SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_pow10SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Pow10(%d) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfpow10SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_pow10SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testRemainder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = remainder((10 : stdgo.GoFloat64), _vf[(_i : stdgo.GoInt)]);
                    if (_remainder[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Remainder(10, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_remainder[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vffmodSC.length) : Bool), _i++, {
                {
                    var _f = remainder(_vffmodSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)], _vffmodSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]);
                    if (!_alike(_fmodSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Remainder(%g, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vffmodSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_vffmodSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_fmodSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = remainder((5.9790119248836734e+200 : stdgo.GoFloat64), (1.1258465975523544 : stdgo.GoFloat64));
            if ((-0.4810497673014966 : stdgo.GoFloat64) != (_f)) {
                _t.errorf(("Remainder(5.9790119248836734e+200, 1.1258465975523544) = %g, want -0.4810497673014966" : stdgo.GoString), stdgo.Go.toInterface(_f));
            };
        };
        var _test = function(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):Void {
            {
                var _r = remainder(_x, _y);
                if (((_r == (0 : stdgo.GoFloat64)) && (signbit(_r) != signbit(_x)) : Bool)) {
                    _t.errorf(("Remainder(x=%f, y=%f) = %f, sign of (zero) result should agree with sign of x" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_r));
                };
            };
        };
        {
            var _x = (0 : stdgo.GoFloat64);
            stdgo.Go.cfor((_x <= (3 : stdgo.GoFloat64) : Bool), _x = (_x + (1 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                {
                    var _y = (1 : stdgo.GoFloat64);
                    stdgo.Go.cfor((_y <= (3 : stdgo.GoFloat64) : Bool), _y = (_y + (1 : stdgo.GoFloat64) : stdgo.GoFloat64), {
                        _test(_x, _y);
                        _test(_x, -_y);
                        _test(-_x, _y);
                        _test(-_x, -_y);
                    });
                };
            });
        };
    }
function testRound(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = round(_vf[(_i : stdgo.GoInt)]);
                    if (!_alike(_round[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Round(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_round[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfroundSC.length) : Bool), _i++, {
                {
                    var _f = round(_vfroundSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]);
                    if (!_alike(_vfroundSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)], _f)) {
                        _t.errorf(("Round(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfroundSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_vfroundSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testRoundToEven(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = roundToEven(_vf[(_i : stdgo.GoInt)]);
                    if (!_alike(_round[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("RoundToEven(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_round[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfroundEvenSC.length) : Bool), _i++, {
                {
                    var _f = roundToEven(_vfroundEvenSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]);
                    if (!_alike(_vfroundEvenSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)], _f)) {
                        _t.errorf(("RoundToEven(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfroundEvenSC[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_vfroundEvenSC[(_i : stdgo.GoInt)][(1 : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testSignbit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = signbit(_vf[(_i : stdgo.GoInt)]);
                    if (_signbit[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Signbit(%g) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_signbit[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfsignbitSC.length) : Bool), _i++, {
                {
                    var _f = signbit(_vfsignbitSC[(_i : stdgo.GoInt)]);
                    if (_signbitSC[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Signbit(%g) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_vfsignbitSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_signbitSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testSin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = sin(_vf[(_i : stdgo.GoInt)]);
                    if (!_veryclose(_sin[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Sin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_sin[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfsinSC.length) : Bool), _i++, {
                {
                    var _f = sin(_vfsinSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_sinSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Sin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfsinSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_sinSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testSincos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var __tmp__ = sincos(_vf[(_i : stdgo.GoInt)]), _s:stdgo.GoFloat64 = __tmp__._0, _c:stdgo.GoFloat64 = __tmp__._1;
                    if ((!_veryclose(_sin[(_i : stdgo.GoInt)], _s) || !_veryclose(_cos[(_i : stdgo.GoInt)], _c) : Bool)) {
                        _t.errorf(("Sincos(%g) = %g, %g want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_sin[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_cos[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testSinh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = sinh(_vf[(_i : stdgo.GoInt)]);
                    if (!_close(_sinh[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_sinh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfsinhSC.length) : Bool), _i++, {
                {
                    var _f = sinh(_vfsinhSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_sinhSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Sinh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfsinhSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_sinhSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = abs(_vf[(_i : stdgo.GoInt)]);
                {
                    var _f = sqrtGo(_a);
                    if (_sqrt[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("SqrtGo(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_sqrt[(_i : stdgo.GoInt)]));
                    };
                };
                _a = abs(_vf[(_i : stdgo.GoInt)]);
                {
                    var _f = sqrt(_a);
                    if (_sqrt[(_i : stdgo.GoInt)] != (_f)) {
                        _t.errorf(("Sqrt(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_sqrt[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfsqrtSC.length) : Bool), _i++, {
                {
                    var _f = sqrtGo(_vfsqrtSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_sqrtSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("SqrtGo(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfsqrtSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_sqrtSC[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = sqrt(_vfsqrtSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_sqrtSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Sqrt(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfsqrtSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_sqrtSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testTan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = tan(_vf[(_i : stdgo.GoInt)]);
                    if (!_veryclose(_tan[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Tan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_tan[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfsinSC.length) : Bool), _i++, {
                {
                    var _f = tan(_vfsinSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_sinSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Tan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfsinSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_sinSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testTanh(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = tanh(_vf[(_i : stdgo.GoInt)]);
                    if (!_veryclose(_tanh[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Tanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_tanh[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vftanhSC.length) : Bool), _i++, {
                {
                    var _f = tanh(_vftanhSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_tanhSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Tanh(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vftanhSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_tanhSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testTrunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                {
                    var _f = trunc(_vf[(_i : stdgo.GoInt)]);
                    if (!_alike(_trunc[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Trunc(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vf[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_trunc[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfceilSC.length) : Bool), _i++, {
                {
                    var _f = trunc(_vfceilSC[(_i : stdgo.GoInt)]);
                    if (!_alike(_ceilSC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Trunc(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfceilSC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_ceilSC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testY0(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = abs(_vf[(_i : stdgo.GoInt)]);
                {
                    var _f = y0(_a);
                    if (!_close(_y0[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Y0(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_y0[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfy0SC.length) : Bool), _i++, {
                {
                    var _f = y0(_vfy0SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_y0SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Y0(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfy0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_y0SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testY1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = abs(_vf[(_i : stdgo.GoInt)]);
                {
                    var _f = y1(_a);
                    if (!_soclose(_y1[(_i : stdgo.GoInt)], _f, (2e-14 : stdgo.GoFloat64))) {
                        _t.errorf(("Y1(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_y1[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfy0SC.length) : Bool), _i++, {
                {
                    var _f = y1(_vfy0SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_y1SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Y1(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfy0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_y1SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
    }
function testYn(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _a = abs(_vf[(_i : stdgo.GoInt)]);
                {
                    var _f = yn((2 : stdgo.GoInt), _a);
                    if (!_close(_y2[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Yn(2, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_y2[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = yn((-3 : stdgo.GoInt), _a);
                    if (!_close(_yM3[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Yn(-3, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_yM3[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vfy0SC.length) : Bool), _i++, {
                {
                    var _f = yn((2 : stdgo.GoInt), _vfy0SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_y2SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Yn(2, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfy0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_y2SC[(_i : stdgo.GoInt)]));
                    };
                };
                {
                    var _f = yn((-3 : stdgo.GoInt), _vfy0SC[(_i : stdgo.GoInt)]);
                    if (!_alike(_yM3SC[(_i : stdgo.GoInt)], _f)) {
                        _t.errorf(("Yn(-3, %g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_vfy0SC[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_yM3SC[(_i : stdgo.GoInt)]));
                    };
                };
            });
        };
        {
            var _f = yn((0 : stdgo.GoInt), (0 : stdgo.GoFloat64));
            if (!_alike(inf((-1 : stdgo.GoInt)), _f)) {
                _t.errorf(("Yn(0, 0) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(inf((-1 : stdgo.GoInt))));
            };
        };
    }
function testFMA(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _c in _fmaC) {
            var _got = fma(_c._x, _c._y, _c._z);
            if (!_alike(_got, _c._want)) {
                _t.errorf(("FMA(%g,%g,%g) == %g; want %g" : stdgo.GoString), stdgo.Go.toInterface(_c._x), stdgo.Go.toInterface(_c._y), stdgo.Go.toInterface(_c._z), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_c._want));
            };
            _got = portableFMA(_c._x, _c._y, _c._z);
            if (!_alike(_got, _c._want)) {
                _t.errorf(("PortableFMA(%g,%g,%g) == %g; want %g" : stdgo.GoString), stdgo.Go.toInterface(_c._x), stdgo.Go.toInterface(_c._y), stdgo.Go.toInterface(_c._z), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_c._want));
            };
        };
    }
function _fmsub(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64, _z:stdgo.GoFloat64):stdgo.GoFloat64 {
        return fma(_x, _y, -_z);
    }
function _fnmsub(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64, _z:stdgo.GoFloat64):stdgo.GoFloat64 {
        return fma(-_x, _y, _z);
    }
function _fnmadd(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64, _z:stdgo.GoFloat64):stdgo.GoFloat64 {
        return fma(-_x, _y, -_z);
    }
function testFMANegativeArgs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _c in _fmaC) {
            var _want = portableFMA(_c._x, _c._y, -_c._z);
            var _got = _fmsub(_c._x, _c._y, _c._z);
            if (!_alike(_got, _want)) {
                _t.errorf(("FMA(%g, %g, -(%g)) == %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_c._x), stdgo.Go.toInterface(_c._y), stdgo.Go.toInterface(_c._z), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            _want = portableFMA(-_c._x, _c._y, _c._z);
            _got = _fnmsub(_c._x, _c._y, _c._z);
            if (!_alike(_got, _want)) {
                _t.errorf(("FMA(-(%g), %g, %g) == %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_c._x), stdgo.Go.toInterface(_c._y), stdgo.Go.toInterface(_c._z), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
            _want = portableFMA(-_c._x, _c._y, -_c._z);
            _got = _fnmadd(_c._x, _c._y, _c._z);
            if (!_alike(_got, _want)) {
                _t.errorf(("FMA(-(%g), %g, -(%g)) == %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_c._x), stdgo.Go.toInterface(_c._y), stdgo.Go.toInterface(_c._z), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testLargeCos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _large = (314159.26535897935 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _f1 = _cosLarge[(_i : stdgo.GoInt)];
                var _f2 = cos((_vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64));
                if (!_close(_f1, _f2)) {
                    _t.errorf(("Cos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface((_vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64)), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f1));
                };
            });
        };
    }
function testLargeSin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _large = (314159.26535897935 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _f1 = _sinLarge[(_i : stdgo.GoInt)];
                var _f2 = sin((_vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64));
                if (!_close(_f1, _f2)) {
                    _t.errorf(("Sin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface((_vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64)), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f1));
                };
            });
        };
    }
function testLargeSincos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _large = (314159.26535897935 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var __0 = _sinLarge[(_i : stdgo.GoInt)], __1 = _cosLarge[(_i : stdgo.GoInt)];
var _g1 = __1, _f1 = __0;
                var __tmp__ = sincos((_vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64)), _f2:stdgo.GoFloat64 = __tmp__._0, _g2:stdgo.GoFloat64 = __tmp__._1;
                if ((!_close(_f1, _f2) || !_close(_g1, _g2) : Bool)) {
                    _t.errorf(("Sincos(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface((_vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64)), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_g2), stdgo.Go.toInterface(_f1), stdgo.Go.toInterface(_g1));
                };
            });
        };
    }
function testLargeTan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _large = (314159.26535897935 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_vf.length) : Bool), _i++, {
                var _f1 = _tanLarge[(_i : stdgo.GoInt)];
                var _f2 = tan((_vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64));
                if (!_close(_f1, _f2)) {
                    _t.errorf(("Tan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface((_vf[(_i : stdgo.GoInt)] + _large : stdgo.GoFloat64)), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f1));
                };
            });
        };
    }
function testTrigReduce(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _inputs = (new stdgo.Slice<stdgo.GoFloat64>((_vf.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo.Go.copySlice(_inputs, _vf);
        var _large = (314159.26535897935 : stdgo.GoFloat64);
        for (__0 => _v in _vf) {
            _inputs = (_inputs.__append__((_v + _large : stdgo.GoFloat64)));
        };
        _inputs = (_inputs.__append__((3.141592653589793 : stdgo.GoFloat64), nextafter((5.36870912e+08 : stdgo.GoFloat64), (0 : stdgo.GoFloat64))));
        for (__1 => _x in _inputs) {
            var __tmp__ = trigReduce(_x), _j:stdgo.GoUInt64 = __tmp__._0, _z:stdgo.GoFloat64 = __tmp__._1;
            var _xred = (((_j : stdgo.GoFloat64) * (0.7853981633974483 : stdgo.GoFloat64) : stdgo.GoFloat64) + _z : stdgo.GoFloat64);
            {
                var __0 = sin(_x), __1 = sin(_xred);
var _fred = __1, _f = __0;
                if (!_close(_f, _fred)) {
                    _t.errorf(("Sin(trigReduce(%g)) != Sin(%g), got %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_fred), stdgo.Go.toInterface(_f));
                };
            };
            {
                var __0 = cos(_x), __1 = cos(_xred);
var _fred = __1, _f = __0;
                if (!_close(_f, _fred)) {
                    _t.errorf(("Cos(trigReduce(%g)) != Cos(%g), got %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_fred), stdgo.Go.toInterface(_f));
                };
            };
            {
                var __0 = tan(_x), __1 = tan(_xred);
var _fred = __1, _f = __0;
                if (!_close(_f, _fred)) {
                    _t.errorf((" Tan(trigReduce(%g)) != Tan(%g), got %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_fred), stdgo.Go.toInterface(_f));
                };
            };
            var __tmp__ = sincos(_x), _f:stdgo.GoFloat64 = __tmp__._0, _g:stdgo.GoFloat64 = __tmp__._1;
            var __tmp__ = sincos(_xred), _fred:stdgo.GoFloat64 = __tmp__._0, _gred:stdgo.GoFloat64 = __tmp__._1;
            if ((!_close(_f, _fred) || !_close(_g, _gred) : Bool)) {
                _t.errorf((" Sincos(trigReduce(%g)) != Sincos(%g), got %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_fred), stdgo.Go.toInterface(_gred), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_g));
            };
        };
    }
function testFloatMinMax(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void trace("testFloatMinMax not implemented: fmt formatter");
function testFloatMinima(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        #if (interp || js) {
            trace("testFloatMinima" + " skip targets: " + "interp, js");
            return;
        } #else null #end;
        {
            var _q = ((7.006492321624085e-46 : stdgo.GoFloat64) : stdgo.GoFloat32);
            if (_q != (0 : stdgo.GoFloat64)) {
                _t.errorf(("float32(SmallestNonzeroFloat32 / 2) = %g, want 0" : stdgo.GoString), stdgo.Go.toInterface(_q));
            };
        };
        {
            var _q = (0 : stdgo.GoFloat64);
            if (_q != (0 : stdgo.GoFloat64)) {
                _t.errorf(("float64(SmallestNonzeroFloat64 / 2) = %g, want 0" : stdgo.GoString), stdgo.Go.toInterface(_q));
            };
        };
    }
function testFloat32Sqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _v in _sqrt32) {
            var _want = (_indirectSqrt((_v : stdgo.GoFloat64)) : stdgo.GoFloat32);
            var _got = (sqrt((_v : stdgo.GoFloat64)) : stdgo.GoFloat32);
            if (isNaN((_want : stdgo.GoFloat64))) {
                if (!isNaN((_got : stdgo.GoFloat64))) {
                    _t.errorf(("got=%#v want=NaN, v=%#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_v));
                };
                continue;
            };
            if (_got != (_want)) {
                _t.errorf(("got=%#v want=%#v, v=%#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_v));
            };
        };
    }
function benchmarkAcos(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = acos((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkAcosh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = acosh((1.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkAsin(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = asin((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkAsinh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = asinh((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkAtan(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = atan((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkAtanh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = atanh((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkAtan2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = atan2((0.5 : stdgo.GoFloat64), (1 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkCbrt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = cbrt((10 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkCeil(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = ceil((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkCopysign(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = copysign((0.5 : stdgo.GoFloat64), _copysignNeg);
            });
        };
        globalF = _x;
    }
function benchmarkCos(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = cos((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkCosh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = cosh((2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkErf(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = erf((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkErfc(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = erfc((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkErfinv(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = erfinv((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkErfcinv(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = erfcinv((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkExp(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = exp((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkExpGo(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = expGo((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkExpm1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = expm1((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkExp2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = exp2((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkExp2Go(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = exp2Go((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkAbs(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = abs(_absPos);
            });
        };
        globalF = _x;
    }
function benchmarkDim(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = dim(globalF, _x);
            });
        };
        globalF = _x;
    }
function benchmarkFloor(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = floor((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkMax(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = max((10 : stdgo.GoFloat64), (3 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkMin(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = min((10 : stdgo.GoFloat64), (3 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkMod(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = mod((10 : stdgo.GoFloat64), (3 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkFrexp(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        var _y = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = frexp((8 : stdgo.GoFloat64));
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            });
        };
        globalF = _x;
        globalI = _y;
    }
function benchmarkGamma(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = gamma((2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkHypot(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = hypot((3 : stdgo.GoFloat64), (4 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkHypotGo(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = hypotGo((3 : stdgo.GoFloat64), (4 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkIlogb(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = ilogb((0.5 : stdgo.GoFloat64));
            });
        };
        globalI = _x;
    }
function benchmarkJ0(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = j0((2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkJ1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = j1((2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkJn(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = jn((2 : stdgo.GoInt), (2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkLdexp(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = ldexp((0.5 : stdgo.GoFloat64), (2 : stdgo.GoInt));
            });
        };
        globalF = _x;
    }
function benchmarkLgamma(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        var _y = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = lgamma((2.5 : stdgo.GoFloat64));
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            });
        };
        globalF = _x;
        globalI = _y;
    }
function benchmarkLog(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = log((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkLogb(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = logb((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkLog1p(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = log1p((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkLog10(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = log10((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkLog2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = log2((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = (globalF + (_x) : stdgo.GoFloat64);
    }
function benchmarkModf(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        var _y = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = modf((1.5 : stdgo.GoFloat64));
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            });
        };
        globalF = (globalF + (_x) : stdgo.GoFloat64);
        globalF = (globalF + (_y) : stdgo.GoFloat64);
    }
function benchmarkNextafter32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = ((0 : stdgo.GoFloat64) : stdgo.GoFloat32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = nextafter32((0.5 : stdgo.GoFloat64), (1 : stdgo.GoFloat64));
            });
        };
        globalF = (_x : stdgo.GoFloat64);
    }
function benchmarkNextafter64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = nextafter((0.5 : stdgo.GoFloat64), (1 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkPowInt(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = pow((2 : stdgo.GoFloat64), (2 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkPowFrac(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = pow((2.5 : stdgo.GoFloat64), (1.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkPow10Pos(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = pow10(_pow10pos);
            });
        };
        globalF = _x;
    }
function benchmarkPow10Neg(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = pow10(_pow10neg);
            });
        };
        globalF = _x;
    }
function benchmarkRound(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = round(_roundNeg);
            });
        };
        globalF = _x;
    }
function benchmarkRoundToEven(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = roundToEven(_roundNeg);
            });
        };
        globalF = _x;
    }
function benchmarkRemainder(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = remainder((10 : stdgo.GoFloat64), (3 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkSignbit(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = false;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = signbit(_signbitPos);
            });
        };
        globalB = _x;
    }
function benchmarkSin(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = sin((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkSincos(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        var _y = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = sincos((0.5 : stdgo.GoFloat64));
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            });
        };
        globalF = (globalF + (_x) : stdgo.GoFloat64);
        globalF = (globalF + (_y) : stdgo.GoFloat64);
    }
function benchmarkSinh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = sinh((2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkSqrtIndirect(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __0 = (0 : stdgo.GoFloat64), __1 = (10 : stdgo.GoFloat64);
var _y = __1, _x = __0;
        var _f = sqrt;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = (_x + (_f(_y)) : stdgo.GoFloat64);
            });
        };
        globalF = _x;
    }
function benchmarkSqrtLatency(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (10 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = sqrt(_x);
            });
        };
        globalF = _x;
    }
function benchmarkSqrtIndirectLatency(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (10 : stdgo.GoFloat64);
        var _f = sqrt;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = _f(_x);
            });
        };
        globalF = _x;
    }
function benchmarkSqrtGoLatency(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (10 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = sqrtGo(_x);
            });
        };
        globalF = _x;
    }
function _isPrime(_i:stdgo.GoInt):Bool {
        {
            var _j = (2 : stdgo.GoInt);
            stdgo.Go.cfor(((_j : stdgo.GoFloat64) <= sqrt((_i : stdgo.GoFloat64)) : Bool), _j++, {
                if ((_i % _j : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    return false;
                };
            });
        };
        return true;
    }
function benchmarkSqrtPrime(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = false;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = _isPrime((100003 : stdgo.GoInt));
            });
        };
        globalB = _x;
    }
function benchmarkTan(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = tan((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkTanh(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = tanh((2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkTrunc(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = trunc((0.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkY0(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = y0((2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkY1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = y1((2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkYn(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = yn((2 : stdgo.GoInt), (2.5 : stdgo.GoFloat64));
            });
        };
        globalF = _x;
    }
function benchmarkFloat64bits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _y = (0i64 : stdgo.GoUInt64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _y = float64bits(_roundNeg);
            });
        };
        globalI = (_y : stdgo.GoInt);
    }
function benchmarkFloat64frombits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = float64frombits(_roundUint64);
            });
        };
        globalF = _x;
    }
function benchmarkFloat32bits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _y = (0u32 : stdgo.GoUInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _y = float32bits(_roundFloat32);
            });
        };
        globalI = (_y : stdgo.GoInt);
    }
function benchmarkFloat32frombits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = ((0 : stdgo.GoFloat64) : stdgo.GoFloat32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = float32frombits(_roundUint32);
            });
        };
        globalF = (_x : stdgo.GoFloat64);
    }
function benchmarkFMA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _x = (0 : stdgo.GoFloat64);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x = fma((2.718281828459045 : stdgo.GoFloat64), (3.141592653589793 : stdgo.GoFloat64), _x);
            });
        };
        globalF = _x;
    }
function testMaxUint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _v = (-1u32 : stdgo.GoUInt);
            if ((_v + (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                _t.errorf(("MaxUint should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)));
            };
        };
        {
            var _v = (255 : stdgo.GoUInt8);
            if ((_v + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                _t.errorf(("MaxUint8 should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoUInt8) : stdgo.GoUInt8)));
            };
        };
        {
            var _v = (65535 : stdgo.GoUInt16);
            if ((_v + (1 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                _t.errorf(("MaxUint16 should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoUInt16) : stdgo.GoUInt16)));
            };
        };
        {
            var _v = (-1u32 : stdgo.GoUInt32);
            if ((_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                _t.errorf(("MaxUint32 should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)));
            };
        };
        {
            var _v = (-1i64 : stdgo.GoUInt64);
            if ((_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                _t.errorf(("MaxUint64 should wrap around to zero: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
            };
        };
    }
function testMaxInt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _v = (2147483647 : stdgo.GoInt);
            if ((_v + (1 : stdgo.GoInt) : stdgo.GoInt) != ((-2147483648 : stdgo.GoInt))) {
                _t.errorf(("MaxInt should wrap around to MinInt: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoInt) : stdgo.GoInt)));
            };
        };
        {
            var _v = (127 : stdgo.GoInt8);
            if ((_v + (1 : stdgo.GoInt8) : stdgo.GoInt8) != ((-128 : stdgo.GoInt8))) {
                _t.errorf(("MaxInt8 should wrap around to MinInt8: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoInt8) : stdgo.GoInt8)));
            };
        };
        {
            var _v = (32767 : stdgo.GoInt16);
            if ((_v + (1 : stdgo.GoInt16) : stdgo.GoInt16) != ((-32768 : stdgo.GoInt16))) {
                _t.errorf(("MaxInt16 should wrap around to MinInt16: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoInt16) : stdgo.GoInt16)));
            };
        };
        {
            var _v = (2147483647 : stdgo.GoInt32);
            if ((_v + (1 : stdgo.GoInt32) : stdgo.GoInt32) != ((-2147483648 : stdgo.GoInt32))) {
                _t.errorf(("MaxInt32 should wrap around to MinInt32: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1 : stdgo.GoInt32) : stdgo.GoInt32)));
            };
        };
        {
            var _v = (9223372036854775807i64 : stdgo.GoInt64);
            if ((_v + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) != ((-9223372036854775808i64 : stdgo.GoInt64))) {
                _t.errorf(("MaxInt64 should wrap around to MinInt64: %d" : stdgo.GoString), stdgo.Go.toInterface((_v + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)));
            };
        };
    }
function exampleAcos():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.acos((1 : stdgo.GoFloat64))));
    }
function exampleAcosh():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.acosh((1 : stdgo.GoFloat64))));
    }
function exampleAsin():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.asin((0 : stdgo.GoFloat64))));
    }
function exampleAsinh():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.asinh((0 : stdgo.GoFloat64))));
    }
function exampleAtan():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.atan((0 : stdgo.GoFloat64))));
    }
function exampleAtan2():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.atan2((0 : stdgo.GoFloat64), (0 : stdgo.GoFloat64))));
    }
function exampleAtanh():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.atanh((0 : stdgo.GoFloat64))));
    }
function exampleCopysign():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.copysign((3.2 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64))));
    }
function exampleCos():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.cos((1.5707963267948966 : stdgo.GoFloat64))));
    }
function exampleCosh():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.cosh((0 : stdgo.GoFloat64))));
    }
function exampleSin():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.sin((3.141592653589793 : stdgo.GoFloat64))));
    }
function exampleSincos():Void {
        var __tmp__ = stdgo._internal.math.Math.sincos((0 : stdgo.GoFloat64)), _sin:stdgo.GoFloat64 = __tmp__._0, _cos:stdgo.GoFloat64 = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("%.2f, %.2f" : stdgo.GoString), stdgo.Go.toInterface(_sin), stdgo.Go.toInterface(_cos));
    }
function exampleSinh():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.sinh((0 : stdgo.GoFloat64))));
    }
function exampleTan():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.tan((0 : stdgo.GoFloat64))));
    }
function exampleTanh():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.tanh((0 : stdgo.GoFloat64))));
    }
function exampleSqrt():Void {
        {};
        var _c = stdgo._internal.math.Math.sqrt((25 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(_c));
    }
function exampleCeil():Void {
        var _c = stdgo._internal.math.Math.ceil((1.49 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(_c));
    }
function exampleFloor():Void {
        var _c = stdgo._internal.math.Math.floor((1.51 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(_c));
    }
function examplePow():Void {
        var _c = stdgo._internal.math.Math.pow((2 : stdgo.GoFloat64), (3 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(_c));
    }
function examplePow10():Void {
        var _c = stdgo._internal.math.Math.pow10((2 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(_c));
    }
function exampleRound():Void {
        var _p = stdgo._internal.math.Math.round((10.5 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_p));
        var _n = stdgo._internal.math.Math.round((-10.5 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_n));
    }
function exampleRoundToEven():Void {
        var _u = stdgo._internal.math.Math.roundToEven((11.5 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_u));
        var _d = stdgo._internal.math.Math.roundToEven((12.5 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_d));
    }
function exampleLog():Void {
        var _x = stdgo._internal.math.Math.log((1 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_x));
        var _y = stdgo._internal.math.Math.log((2.7183 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_y));
    }
function exampleLog2():Void {
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.log2((256 : stdgo.GoFloat64))));
    }
function exampleLog10():Void {
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.log10((100 : stdgo.GoFloat64))));
    }
function exampleRemainder():Void {
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.remainder((100 : stdgo.GoFloat64), (30 : stdgo.GoFloat64))));
    }
function exampleMod():Void {
        var _c = stdgo._internal.math.Math.mod((7 : stdgo.GoFloat64), (4 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f" : stdgo.GoString), stdgo.Go.toInterface(_c));
    }
function exampleAbs():Void {
        var _x = stdgo._internal.math.Math.abs((-2 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_x));
        var _y = stdgo._internal.math.Math.abs((2 : stdgo.GoFloat64));
        stdgo._internal.fmt.Fmt.printf(("%.1f\n" : stdgo.GoString), stdgo.Go.toInterface(_y));
    }
function exampleDim():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.dim((4 : stdgo.GoFloat64), (-2 : stdgo.GoFloat64))));
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.dim((-4 : stdgo.GoFloat64), (2 : stdgo.GoFloat64))));
    }
function exampleExp():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.exp((1 : stdgo.GoFloat64))));
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.exp((2 : stdgo.GoFloat64))));
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.exp((-1 : stdgo.GoFloat64))));
    }
function exampleExp2():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.exp2((1 : stdgo.GoFloat64))));
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.exp2((-3 : stdgo.GoFloat64))));
    }
function exampleExpm1():Void {
        stdgo._internal.fmt.Fmt.printf(("%.6f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.expm1((0.01 : stdgo.GoFloat64))));
        stdgo._internal.fmt.Fmt.printf(("%.6f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.expm1((-1 : stdgo.GoFloat64))));
    }
function exampleTrunc():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.trunc((3.141592653589793 : stdgo.GoFloat64))));
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.trunc((-1.2345 : stdgo.GoFloat64))));
    }
function exampleCbrt():Void {
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.cbrt((8 : stdgo.GoFloat64))));
        stdgo._internal.fmt.Fmt.printf(("%.2f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.math.Math.cbrt((27 : stdgo.GoFloat64))));
    }
function exampleModf():Void {
        var __tmp__ = stdgo._internal.math.Math.modf((3.14 : stdgo.GoFloat64)), _int:stdgo.GoFloat64 = __tmp__._0, _frac:stdgo.GoFloat64 = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("%.2f, %.2f\n" : stdgo.GoString), stdgo.Go.toInterface(_int), stdgo.Go.toInterface(_frac));
        {
            var __tmp__ = stdgo._internal.math.Math.modf((-2.71 : stdgo.GoFloat64));
            _int = __tmp__._0;
            _frac = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.printf(("%.2f, %.2f\n" : stdgo.GoString), stdgo.Go.toInterface(_int), stdgo.Go.toInterface(_frac));
    }
function testHugeCos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_trigHuge.length) : Bool), _i++, {
                var _f1 = _cosHuge[(_i : stdgo.GoInt)];
                var _f2 = cos(_trigHuge[(_i : stdgo.GoInt)]);
                if (!_close(_f1, _f2)) {
                    _t.errorf(("Cos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f1));
                };
                var _f3 = cos(-_trigHuge[(_i : stdgo.GoInt)]);
                if (!_close(_f1, _f3)) {
                    _t.errorf(("Cos(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(-_trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f3), stdgo.Go.toInterface(_f1));
                };
            });
        };
    }
function testHugeSin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_trigHuge.length) : Bool), _i++, {
                var _f1 = _sinHuge[(_i : stdgo.GoInt)];
                var _f2 = sin(_trigHuge[(_i : stdgo.GoInt)]);
                if (!_close(_f1, _f2)) {
                    _t.errorf(("Sin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f1));
                };
                var _f3 = sin(-_trigHuge[(_i : stdgo.GoInt)]);
                if (!_close(-_f1, _f3)) {
                    _t.errorf(("Sin(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(-_trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f3), stdgo.Go.toInterface(-_f1));
                };
            });
        };
    }
function testHugeSinCos(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_trigHuge.length) : Bool), _i++, {
                var __0 = _sinHuge[(_i : stdgo.GoInt)], __1 = _cosHuge[(_i : stdgo.GoInt)];
var _g1 = __1, _f1 = __0;
                var __tmp__ = sincos(_trigHuge[(_i : stdgo.GoInt)]), _f2:stdgo.GoFloat64 = __tmp__._0, _g2:stdgo.GoFloat64 = __tmp__._1;
                if ((!_close(_f1, _f2) || !_close(_g1, _g2) : Bool)) {
                    _t.errorf(("Sincos(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(_trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_g2), stdgo.Go.toInterface(_f1), stdgo.Go.toInterface(_g1));
                };
                var __tmp__ = sincos(-_trigHuge[(_i : stdgo.GoInt)]), _f3:stdgo.GoFloat64 = __tmp__._0, _g3:stdgo.GoFloat64 = __tmp__._1;
                if ((!_close(-_f1, _f3) || !_close(_g1, _g3) : Bool)) {
                    _t.errorf(("Sincos(%g) = %g, %g, want %g, %g" : stdgo.GoString), stdgo.Go.toInterface(-_trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f3), stdgo.Go.toInterface(_g3), stdgo.Go.toInterface(-_f1), stdgo.Go.toInterface(_g1));
                };
            });
        };
    }
function testHugeTan(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_trigHuge.length) : Bool), _i++, {
                var _f1 = _tanHuge[(_i : stdgo.GoInt)];
                var _f2 = tan(_trigHuge[(_i : stdgo.GoInt)]);
                if (!_close(_f1, _f2)) {
                    _t.errorf(("Tan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(_trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f2), stdgo.Go.toInterface(_f1));
                };
                var _f3 = tan(-_trigHuge[(_i : stdgo.GoInt)]);
                if (!_close(-_f1, _f3)) {
                    _t.errorf(("Tan(%g) = %g, want %g" : stdgo.GoString), stdgo.Go.toInterface(-_trigHuge[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_f3), stdgo.Go.toInterface(-_f1));
                };
            });
        };
    }
