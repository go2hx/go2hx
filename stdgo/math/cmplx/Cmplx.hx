package stdgo.math.cmplx;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _vc26 : Slice<GoComplex128> = ((new Slice<GoComplex128>((((4.9790119248836735 : GoFloat64)) + new GoComplex128(0, 7.738872474578105)), (((7.738872474578105 : GoFloat64)) + new GoComplex128(0, -0.2768800571920016)), (((-0.2768800571920016 : GoFloat64)) + new GoComplex128(0, -5.010603618271075)), (((-5.010603618271075 : GoFloat64)) + new GoComplex128(0, 9.636293707198417)), (((9.636293707198417 : GoFloat64)) + new GoComplex128(0, 2.9263772392439646)), (((2.9263772392439646 : GoFloat64)) + new GoComplex128(0, 5.229083431459307)), (((5.229083431459307 : GoFloat64)) + new GoComplex128(0, 2.7279399104360103)), (((2.7279399104360103 : GoFloat64)) + new GoComplex128(0, 1.825308091680855)), (((1.825308091680855 : GoFloat64)) + new GoComplex128(0, -8.685924768575601)), (((-8.685924768575601 : GoFloat64)) + new GoComplex128(0, 4.9790119248836735))) : Slice<GoComplex128>));
var _vc : Slice<GoComplex128> = ((new Slice<GoComplex128>((((4.9790119248836735 : GoFloat64)) + new GoComplex128(0, 7.738872474578105)), (((7.738872474578105 : GoFloat64)) + new GoComplex128(0, -0.2768800571920016)), (((-0.2768800571920016 : GoFloat64)) + new GoComplex128(0, -5.010603618271075)), (((-5.010603618271075 : GoFloat64)) + new GoComplex128(0, 9.636293707198417)), (((9.636293707198417 : GoFloat64)) + new GoComplex128(0, 2.9263772392439646)), (((2.9263772392439646 : GoFloat64)) + new GoComplex128(0, 5.229083431459307)), (((5.229083431459307 : GoFloat64)) + new GoComplex128(0, 2.7279399104360103)), (((2.7279399104360103 : GoFloat64)) + new GoComplex128(0, 1.825308091680855)), (((1.825308091680855 : GoFloat64)) + new GoComplex128(0, -8.685924768575601)), (((-8.685924768575601 : GoFloat64)) + new GoComplex128(0, 4.9790119248836735))) : Slice<GoComplex128>));
var _abs : Slice<GoFloat64> = ((new Slice<GoFloat64>(((9.202212066993265 : GoFloat64)), ((7.743823974229611 : GoFloat64)), ((5.018247820255775 : GoFloat64)), ((10.861137372799545 : GoFloat64)), ((10.070841084922199 : GoFloat64)), ((5.9922447613166945 : GoFloat64)), ((5.897878405673676 : GoFloat64)), ((3.282286670067871 : GoFloat64)), ((8.875643002899041 : GoFloat64)), ((10.011785496777732 : GoFloat64))) : Slice<GoFloat64>));
var _acos : Slice<GoComplex128> = ((new Slice<GoComplex128>((((1.0017679804707456 : GoFloat64)) + new GoComplex128(0, -2.9138232718554953)), (((0.036064276120414074 : GoFloat64)) + new GoComplex128(0, 2.735858443457626)), (((1.6249365462333796 : GoFloat64)) + new GoComplex128(0, 2.3159537454335903)), (((2.048565084965074 : GoFloat64)) + new GoComplex128(0, -3.079557679120412)), (((0.29621132089073066 : GoFloat64)) + new GoComplex128(0, -3.0007392508200623)), (((1.0664555914934157 : GoFloat64)) + new GoComplex128(0, -2.487286502479601)), (((0.48681307452231387 : GoFloat64)) + new GoComplex128(0, -2.4636559122830546)), (((0.6116977071277574 : GoFloat64)) + new GoComplex128(0, -1.8734458851737055)), (((1.3649311280370182 : GoFloat64)) + new GoComplex128(0, 2.8793528632328798)), (((2.6189310485682986 : GoFloat64)) + new GoComplex128(0, -2.995654330289877))) : Slice<GoComplex128>));
var _acosh : Slice<GoComplex128> = ((new Slice<GoComplex128>((((2.9138232718554953 : GoFloat64)) + new GoComplex128(0, 1.0017679804707456)), (((2.735858443457626 : GoFloat64)) + new GoComplex128(0, -0.036064276120414074)), (((2.3159537454335903 : GoFloat64)) + new GoComplex128(0, -1.6249365462333796)), (((3.079557679120412 : GoFloat64)) + new GoComplex128(0, 2.048565084965074)), (((3.0007392508200623 : GoFloat64)) + new GoComplex128(0, 0.29621132089073066)), (((2.487286502479601 : GoFloat64)) + new GoComplex128(0, 1.0664555914934157)), (((2.4636559122830546 : GoFloat64)) + new GoComplex128(0, 0.48681307452231387)), (((1.8734458851737055 : GoFloat64)) + new GoComplex128(0, 0.6116977071277574)), (((2.8793528632328798 : GoFloat64)) + new GoComplex128(0, -1.3649311280370182)), (((2.995654330289877 : GoFloat64)) + new GoComplex128(0, 2.6189310485682986))) : Slice<GoComplex128>));
var _asin : Slice<GoComplex128> = ((new Slice<GoComplex128>((((0.569028346324151 : GoFloat64)) + new GoComplex128(0, 2.9138232718554953)), (((1.5347320506744826 : GoFloat64)) + new GoComplex128(0, -2.735858443457626)), (((-0.05414021943848305 : GoFloat64)) + new GoComplex128(0, -2.3159537454335903)), (((-0.4777687581701774 : GoFloat64)) + new GoComplex128(0, 3.079557679120412)), (((1.274585005904166 : GoFloat64)) + new GoComplex128(0, 3.0007392508200623)), (((0.5043407353014809 : GoFloat64)) + new GoComplex128(0, 2.487286502479601)), (((1.0839832522725827 : GoFloat64)) + new GoComplex128(0, 2.4636559122830546)), (((0.9590986196671392 : GoFloat64)) + new GoComplex128(0, 1.8734458851737055)), (((0.20586519875787848 : GoFloat64)) + new GoComplex128(0, -2.8793528632328798)), (((-1.0481347217734023 : GoFloat64)) + new GoComplex128(0, 2.995654330289877))) : Slice<GoComplex128>));
var _asinh : Slice<GoComplex128> = ((new Slice<GoComplex128>((((2.9113760469415295 : GoFloat64)) + new GoComplex128(0, 0.9963945954570432)), (((2.744175542399426 : GoFloat64)) + new GoComplex128(0, -0.0354683087890005)), (((-2.296213646252069 : GoFloat64)) + new GoComplex128(0, -1.5144663565690153)), (((-3.077123345929573 : GoFloat64)) + new GoComplex128(0, 1.0895577967194015)), (((3.0048366100923647 : GoFloat64)) + new GoComplex128(0, 0.2934697916981922)), (((2.4800059370795364 : GoFloat64)) + new GoComplex128(0, 1.0545868606049165)), (((2.4718773838309587 : GoFloat64)) + new GoComplex128(0, 0.47502344364250804)), (((1.8910743588080159 : GoFloat64)) + new GoComplex128(0, 0.568829255725636)), (((2.873542642336734 : GoFloat64)) + new GoComplex128(0, -1.3623761496488913)), (((-2.9981750586172478 : GoFloat64)) + new GoComplex128(0, 0.5183571985225367))) : Slice<GoComplex128>));
var _atan : Slice<GoComplex128> = ((new Slice<GoComplex128>((((1.5115747079332742 : GoFloat64)) + new GoComplex128(0, 0.0913244036039545)), (((1.4424504323482603 : GoFloat64)) + new GoComplex128(0, -0.004541613264280391)), (((-1.5593488703630534 : GoFloat64)) + new GoComplex128(0, -0.20163295409248363)), (((-1.5280619472445889 : GoFloat64)) + new GoComplex128(0, 0.08172155623067201)), (((1.4759909163240799 : GoFloat64)) + new GoComplex128(0, 0.028602969320691646)), (((1.4877353772046549 : GoFloat64)) + new GoComplex128(0, 0.1456687715320728)), (((1.420698392777919 : GoFloat64)) + new GoComplex128(0, 0.0768304861278807)), (((1.3162236060498933 : GoFloat64)) + new GoComplex128(0, 0.1603131300046753)), (((1.5473450684303705 : GoFloat64)) + new GoComplex128(0, -0.11064907507939083)), (((-1.4841462340185254 : GoFloat64)) + new GoComplex128(0, 0.0493418503050244))) : Slice<GoComplex128>));
var _atanh : Slice<GoComplex128> = ((new Slice<GoComplex128>((((0.05837502793896851 : GoFloat64)) + new GoComplex128(0, 1.4793488495105334)), (((0.1297734349779038 : GoFloat64)) + new GoComplex128(0, -1.5661009410463562)), (((-0.010576456067347252 : GoFloat64)) + new GoComplex128(0, -1.3743698658402284)), (((-0.04221859567868836 : GoFloat64)) + new GoComplex128(0, 1.4891433968166405)), (((0.09521899799131672 : GoFloat64)) + new GoComplex128(0, 1.541688409877711)), (((0.07996545936689033 : GoFloat64)) + new GoComplex128(0, 1.4252510353873193)), (((0.15051245471980726 : GoFloat64)) + new GoComplex128(0, 1.4907432533016305)), (((0.2508207293399399 : GoFloat64)) + new GoComplex128(0, 1.3920576653921874)), (((0.022896108815797137 : GoFloat64)) + new GoComplex128(0, -1.4609224989282865)), (((-0.08665624101841876 : GoFloat64)) + new GoComplex128(0, 1.5207902036935093))) : Slice<GoComplex128>));
var _conj : Slice<GoComplex128> = ((new Slice<GoComplex128>((((4.9790119248836735 : GoFloat64)) + new GoComplex128(0, -7.738872474578105)), (((7.738872474578105 : GoFloat64)) + new GoComplex128(0, 0.2768800571920016)), (((-0.2768800571920016 : GoFloat64)) + new GoComplex128(0, 5.010603618271075)), (((-5.010603618271075 : GoFloat64)) + new GoComplex128(0, -9.636293707198417)), (((9.636293707198417 : GoFloat64)) + new GoComplex128(0, -2.9263772392439646)), (((2.9263772392439646 : GoFloat64)) + new GoComplex128(0, -5.229083431459307)), (((5.229083431459307 : GoFloat64)) + new GoComplex128(0, -2.7279399104360103)), (((2.7279399104360103 : GoFloat64)) + new GoComplex128(0, -1.825308091680855)), (((1.825308091680855 : GoFloat64)) + new GoComplex128(0, 8.685924768575601)), (((-8.685924768575601 : GoFloat64)) + new GoComplex128(0, -4.9790119248836735))) : Slice<GoComplex128>));
var _cos : Slice<GoComplex128> = ((new Slice<GoComplex128>((((302.4540920601484 : GoFloat64)) + new GoComplex128(0, 1107.3797572517071)), (((0.1192858682649065 : GoFloat64)) + new GoComplex128(0, 0.27857554122333067)), (((72.1443943045283 : GoFloat64)) + new GoComplex128(0, -20.500129667076045)), (((2249.21952538404 : GoFloat64)) + new GoComplex128(0, -7317.363745602774)), (((-9.148222970032421 : GoFloat64)) + new GoComplex128(0, 1.9531246611135635)), (((-91.16081175857732 : GoFloat64)) + new GoComplex128(0, -19.926692135699522)), (((3.7956391790427046 : GoFloat64)) + new GoComplex128(0, 6.623513350981458)), (((-2.914484073249887 : GoFloat64)) + new GoComplex128(0, -1.214620271628003)), (((-745.1234825012997 : GoFloat64)) + new GoComplex128(0, 2864.169231448808)), (((-53.719779670393194 : GoFloat64)) + new GoComplex128(0, 48.93348341339376))) : Slice<GoComplex128>));
var _cosh : Slice<GoComplex128> = ((new Slice<GoComplex128>((((8.346383835230183 : GoFloat64)) + new GoComplex128(0, 72.18105788642585)), (((1104.2196737991937 : GoFloat64)) + new GoComplex128(0, -313.79638689277573)), (((0.30514852067737014 : GoFloat64)) + new GoComplex128(0, -0.26805384730105297)), (((-73.32947286841879 : GoFloat64)) + new GoComplex128(0, 15.744459422849182)), (((-7478.643293945957 : GoFloat64)) + new GoComplex128(0, 1634.8382209913354)), (((4.622316522966235 : GoFloat64)) + new GoComplex128(0, -8.088695185566376)), (((-85.44333183278877 : GoFloat64)) + new GoComplex128(0, 37.505836120128166)), (((-1.934457815021494 : GoFloat64)) + new GoComplex128(0, 7.372585961176723)), (((-2.352958770061749 : GoFloat64)) + new GoComplex128(0, -2.0349820104408782)), (((779.7564575321347 : GoFloat64)) + new GoComplex128(0, 2854.9350716819176))) : Slice<GoComplex128>));
var _exp : Slice<GoComplex128> = ((new Slice<GoComplex128>((((16.691977368646707 : GoFloat64)) + new GoComplex128(0, 144.36895109507662)), (((2208.4389286252585 : GoFloat64)) + new GoComplex128(0, -627.5928928490921)), (((0.22275382731227752 : GoFloat64)) + new GoComplex128(0, 0.724682840283342)), (((-0.006518298595815355 : GoFloat64)) + new GoComplex128(0, -0.0013996583791519386)), (((-14957.286524084016 : GoFloat64)) + new GoComplex128(0, 3269.6764559311355)), (((9.218158701983105 : GoFloat64)) + new GoComplex128(0, -16.223985291084954)), (((-170.8817571685304 : GoFloat64)) + new GoComplex128(0, 75.0138260987041)), (((-3.8524613158309595 : GoFloat64)) + new GoComplex128(0, 14.808420423156074)), (((-4.586775503301407 : GoFloat64)) + new GoComplex128(0, -4.178501081246873)), (((4.451337963005454e-05 : GoFloat64)) + new GoComplex128(0, -0.00016297757420544293))) : Slice<GoComplex128>));
var _log : Slice<GoComplex128> = ((new Slice<GoComplex128>((((2.2194438972179196 : GoFloat64)) + new GoComplex128(0, 0.999091150469193)), (((2.046895619115417 : GoFloat64)) + new GoComplex128(0, -0.03576257502185697)), (((1.613080832985386 : GoFloat64)) + new GoComplex128(0, -1.625999007401906)), (((2.385191039482301 : GoFloat64)) + new GoComplex128(0, 2.050293635965911)), (((2.3096442270679924 : GoFloat64)) + new GoComplex128(0, 0.2948321315544676)), (((1.7904660933974657 : GoFloat64)) + new GoComplex128(0, 1.0605860367252555)), (((1.7745926939841752 : GoFloat64)) + new GoComplex128(0, 0.4808455608335831)), (((1.1885403350045343 : GoFloat64)) + new GoComplex128(0, 0.5896963416477666)), (((2.1833107837679084 : GoFloat64)) + new GoComplex128(0, -1.3636647724582456)), (((2.303762948727326 : GoFloat64)) + new GoComplex128(0, 2.621091389538601))) : Slice<GoComplex128>));
var _log10 : Slice<GoComplex128> = ((new Slice<GoComplex128>((((0.9638922374555904 : GoFloat64)) + new GoComplex128(0, 0.43389977356714193)), (((0.8889554724137658 : GoFloat64)) + new GoComplex128(0, -0.015531488990643548)), (((0.7005521046294542 : GoFloat64)) + new GoComplex128(0, -0.7061623964948124)), (((1.0358753067322446 : GoFloat64)) + new GoComplex128(0, 0.8904312123813498)), (((1.0030657429753302 : GoFloat64)) + new GoComplex128(0, 0.12804396782187888)), (((0.7775895443973916 : GoFloat64)) + new GoComplex128(0, 0.4606066633334181)), (((0.7706958146231533 : GoFloat64)) + new GoComplex128(0, 0.20882857371769953)), (((0.5161765090119116 : GoFloat64)) + new GoComplex128(0, 0.2561018671761598)), (((0.9481998256702664 : GoFloat64)) + new GoComplex128(0, -0.5922320858444695)), (((1.0005115362454418 : GoFloat64)) + new GoComplex128(0, 1.1383255270407413))) : Slice<GoComplex128>));
var _polar : Slice<T_ff> = ((new Slice<T_ff>(((new T_ff(((9.202212066993265 : GoFloat64)), ((0.999091150469193 : GoFloat64))) : T_ff)), ((new T_ff(((7.743823974229611 : GoFloat64)), ((-0.03576257502185697 : GoFloat64))) : T_ff)), ((new T_ff(((5.018247820255775 : GoFloat64)), ((-1.625999007401906 : GoFloat64))) : T_ff)), ((new T_ff(((10.861137372799545 : GoFloat64)), ((2.050293635965911 : GoFloat64))) : T_ff)), ((new T_ff(((10.070841084922199 : GoFloat64)), ((0.2948321315544676 : GoFloat64))) : T_ff)), ((new T_ff(((5.9922447613166945 : GoFloat64)), ((1.0605860367252555 : GoFloat64))) : T_ff)), ((new T_ff(((5.897878405673676 : GoFloat64)), ((0.4808455608335831 : GoFloat64))) : T_ff)), ((new T_ff(((3.282286670067871 : GoFloat64)), ((0.5896963416477666 : GoFloat64))) : T_ff)), ((new T_ff(((8.875643002899041 : GoFloat64)), ((-1.3636647724582456 : GoFloat64))) : T_ff)), ((new T_ff(((10.011785496777732 : GoFloat64)), ((2.621091389538601 : GoFloat64))) : T_ff))) : Slice<T_ff>));
var _pow : Slice<GoComplex128> = ((new Slice<GoComplex128>((((-2.4999567391975295 : GoFloat64)) + new GoComplex128(0, 1.7597517243356502)), (((73570.94338218117 : GoFloat64)) + new GoComplex128(0, -50899.73412479152)), (((13.207772960677685 : GoFloat64)) + new GoComplex128(0, -31.656219143339015)), (((-3.123287828297301e-07 : GoFloat64)) + new GoComplex128(0, -1.9849567521490554e-07)), (((80622.65146847723 : GoFloat64)) + new GoComplex128(0, -78002.8727944573)), (((-1.0268824572103166 : GoFloat64)) + new GoComplex128(0, -0.47168447382449896)), (((-43.59538190122442 : GoFloat64)) + new GoComplex128(0, 220.36445974645306)), (((0.8355609228325059 : GoFloat64)) + new GoComplex128(0, -12.26157194716724)), (((1582.2929721207693 : GoFloat64)) + new GoComplex128(0, 12735.642635242782)), (((6.592208301642123e-08 : GoFloat64)) + new GoComplex128(0, 2.584887236651662e-08))) : Slice<GoComplex128>));
var _sin : Slice<GoComplex128> = ((new Slice<GoComplex128>((((-1107.3801774240233 : GoFloat64)) + new GoComplex128(0, 302.45397730025024)), (((1.031703752140076 : GoFloat64)) + new GoComplex128(0, -0.03220897979992957)), (((-20.50195209727143 : GoFloat64)) + new GoComplex128(0, -72.1379813482408)), (((7317.363808034634 : GoFloat64)) + new GoComplex128(0, 2249.2195061936645)), (((-1.9643756336318081 : GoFloat64)) + new GoComplex128(0, -9.09582647138704)), (((19.92783647158515 : GoFloat64)) + new GoComplex128(0, -91.15557694101913)), (((-6.680335650741921 : GoFloat64)) + new GoComplex128(0, 3.7633538331424323)), (((1.2794028166657458 : GoFloat64)) + new GoComplex128(0, -2.7669092099795782)), (((2864.169394953526 : GoFloat64)) + new GoComplex128(0, 745.1234399649871)), (((-48.93811726244659 : GoFloat64)) + new GoComplex128(0, -53.71469305562194))) : Slice<GoComplex128>));
var _sinh : Slice<GoComplex128> = ((new Slice<GoComplex128>((((8.345593533416526 : GoFloat64)) + new GoComplex128(0, 72.18789320865079)), (((1104.2192548260646 : GoFloat64)) + new GoComplex128(0, -313.79650595631637)), (((-0.08239469336509264 : GoFloat64)) + new GoComplex128(0, 0.9927366875843949)), (((73.32295456982298 : GoFloat64)) + new GoComplex128(0, -15.745859081228334)), (((-7478.643230138058 : GoFloat64)) + new GoComplex128(0, 1634.8382349398003)), (((4.59584217901687 : GoFloat64)) + new GoComplex128(0, -8.13529010551858)), (((-85.43842533574164 : GoFloat64)) + new GoComplex128(0, 37.50798997857594)), (((-1.9180035008094656 : GoFloat64)) + new GoComplex128(0, 7.435834461979351)), (((-2.233816733239658 : GoFloat64)) + new GoComplex128(0, -2.1435190708059952)), (((-779.7564130187551 : GoFloat64)) + new GoComplex128(0, -2854.935234659492))) : Slice<GoComplex128>));
var _sqrt : Slice<GoComplex128> = ((new Slice<GoComplex128>((((2.662820308608613 : GoFloat64)) + new GoComplex128(0, 1.4531345674282186)), (((2.7823278427251985 : GoFloat64)) + new GoComplex128(0, -0.049756907317005224)), (((1.5397025302089642 : GoFloat64)) + new GoComplex128(0, -1.6271336573016637)), (((1.7103411581506875 : GoFloat64)) + new GoComplex128(0, 2.817067712273759)), (((3.1390392472953104 : GoFloat64)) + new GoComplex128(0, 0.4661262584985865)), (((2.1117080764822416 : GoFloat64)) + new GoComplex128(0, 1.2381170223514273)), (((2.3587032281672258 : GoFloat64)) + new GoComplex128(0, 0.5782711190325734)), (((1.733526258887341 : GoFloat64)) + new GoComplex128(0, 0.5264725822072127)), (((2.3131094974708715 : GoFloat64)) + new GoComplex128(0, -1.8775429304303786)), (((0.8142053574504808 : GoFloat64)) + new GoComplex128(0, 3.0575897587277248))) : Slice<GoComplex128>));
var _tan : Slice<GoComplex128> = ((new Slice<GoComplex128>((((-1.928757919086441e-07 : GoFloat64)) + new GoComplex128(0, 1.000000326749917)), (((1.2424126853641837 : GoFloat64)) + new GoComplex128(0, -3.171496938831334)), (((-4.67451262515878e-05 : GoFloat64)) + new GoComplex128(0, -0.9999243922526396)), (((4.792363401193648e-09 : GoFloat64)) + new GoComplex128(0, 1.0000000070589334)), (((0.002345740824080089 : GoFloat64)) + new GoComplex128(0, 0.9947733046570989)), (((-2.3960307894948155e-05 : GoFloat64)) + new GoComplex128(0, 0.9999478134541859)), (((-0.007370204836644931 : GoFloat64)) + new GoComplex128(0, 1.004355341341714)), (((-0.036918038479920486 : GoFloat64)) + new GoComplex128(0, 0.9647507199346955)), (((-2.7819552567137292e-08 : GoFloat64)) + new GoComplex128(0, -1.0000000498489106)), (((9.428159006403047e-05 : GoFloat64)) + new GoComplex128(0, 0.9999911934086372))) : Slice<GoComplex128>));
var _tanh : Slice<GoComplex128> = ((new Slice<GoComplex128>((((1.0000921981225144 : GoFloat64)) + new GoComplex128(0, 2.160986245871518e-05)), (((0.9999996772753199 : GoFloat64)) + new GoComplex128(0, -1.9953763222959658e-07)), (((-1.7654857395480372 : GoFloat64)) + new GoComplex128(0, 1.7024216325552852)), (((-0.9999189442732737 : GoFloat64)) + new GoComplex128(0, 3.649060704944737e-05)), (((0.9999999922462234 : GoFloat64)) + new GoComplex128(0, -3.560088949517915e-09)), (((1.0029324933367327 : GoFloat64)) + new GoComplex128(0, -0.004948790309797103)), (((0.9999611306478802 : GoFloat64)) + new GoComplex128(0, -4.226995742097032e-05)), (((1.007478418931634 : GoFloat64)) + new GoComplex128(0, -0.004194050814891698)), (((0.9938553422971833 : GoFloat64)) + new GoComplex128(0, 0.05144217985914355)), (((-1.0000000491604983 : GoFloat64)) + new GoComplex128(0, -2.9018731953744332e-08))) : Slice<GoComplex128>));
var _hugeIn : Slice<GoComplex128> = ((new Slice<GoComplex128>((((2.68435456e+08 : GoFloat64)) + new GoComplex128(0, 0)), (((5.36870912e+08 : GoFloat64)) + new GoComplex128(0, 0)), (((1.073741824e+09 : GoFloat64)) + new GoComplex128(0, 0)), (((3.4359738368e+10 : GoFloat64)) + new GoComplex128(0, 0)), (((-1.329227995784916e+36 : GoFloat64)) + new GoComplex128(0, 0)), (((1.7668470647783843e+72 : GoFloat64)) + new GoComplex128(0, 0)), (((2.037035976334486e+90 : GoFloat64)) + new GoComplex128(0, 0)), (((-3.1217485503159922e+144 : GoFloat64)) + new GoComplex128(0, 0)), (((1.8919697882131776e+69 : GoFloat64)) + new GoComplex128(0, 0)), (((-2.514859209672214e+105 : GoFloat64)) + new GoComplex128(0, 0))) : Slice<GoComplex128>));
var _tanHuge : Slice<GoComplex128> = ((new Slice<GoComplex128>(((5.956418979396394 : GoComplex128)), (((-0.3455106923343039 : GoFloat64)) + new GoComplex128(0, 0)), (((-0.7846966133192004 : GoFloat64)) + new GoComplex128(0, 0)), ((0.8427638587087598 : GoComplex128)), ((0.40806638884180424 : GoComplex128)), (((-0.37603456702698074 : GoFloat64)) + new GoComplex128(0, 0)), ((4.60901287677811 : GoComplex128)), ((3.391359650547799 : GoComplex128)), (((-6.76813854009065 : GoFloat64)) + new GoComplex128(0, 0)), (((-0.7641769501660493 : GoFloat64)) + new GoComplex128(0, 0))) : Slice<GoComplex128>));
var _inf : GoFloat64 = stdgo.math.Math.inf(((1 : GoInt)));
var _nan : GoFloat64 = stdgo.math.Math.naN();
var _vcAbsSC : Slice<GoComplex128> = ((new Slice<GoComplex128>(naN()) : Slice<GoComplex128>));
var _absSC : Slice<GoFloat64> = ((new Slice<GoFloat64>(stdgo.math.Math.naN()) : Slice<GoFloat64>));
var _vcConjSC : Slice<GoComplex128> = ((new Slice<GoComplex128>(naN()) : Slice<GoComplex128>));
var _conjSC : Slice<GoComplex128> = ((new Slice<GoComplex128>(naN()) : Slice<GoComplex128>));
var _vcIsNaNSC : Slice<GoComplex128> = ((new Slice<GoComplex128>(new GoComplex128(stdgo.math.Math.inf(((-1 : GoInt))), stdgo.math.Math.inf(((-1 : GoInt)))), new GoComplex128(stdgo.math.Math.inf(((-1 : GoInt))), stdgo.math.Math.naN()), new GoComplex128(stdgo.math.Math.naN(), stdgo.math.Math.inf(((-1 : GoInt)))), new GoComplex128(((0 : GoFloat64)), stdgo.math.Math.naN()), new GoComplex128(stdgo.math.Math.naN(), ((0 : GoFloat64))), new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), stdgo.math.Math.inf(((1 : GoInt)))), new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), stdgo.math.Math.naN()), new GoComplex128(stdgo.math.Math.naN(), stdgo.math.Math.inf(((1 : GoInt)))), new GoComplex128(stdgo.math.Math.naN(), stdgo.math.Math.naN())) : Slice<GoComplex128>));
var _isNaNSC : Slice<Bool> = ((new Slice<Bool>(false, false, false, true, true, false, false, false, true) : Slice<Bool>));
var _vcPolarSC : Slice<GoComplex128> = ((new Slice<GoComplex128>(naN()) : Slice<GoComplex128>));
var _polarSC : Slice<T_ff> = ((new Slice<T_ff>(((new T_ff(stdgo.math.Math.naN(), stdgo.math.Math.naN()) : T_ff))) : Slice<T_ff>));
var _vcPowSC : Slice<GoArray<GoComplex128>> = ((new Slice<GoArray<GoComplex128>>(((new GoArray<GoComplex128>(naN(), naN()) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>(((0 : GoComplex128)), naN()) : GoArray<GoComplex128>))) : Slice<GoArray<GoComplex128>>));
var _powSC : Slice<GoComplex128> = ((new Slice<GoComplex128>(naN(), naN()) : Slice<GoComplex128>));
var _zero : GoFloat64 = ((0 : GoFloat64));
var _acosSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(((1.5707963267948966 : GoFloat64)), -_zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_zero, _zero), new GoComplex128(((1.5707963267948966 : GoFloat64)), -_zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _nan), new GoComplex128(((1.5707963267948966 : GoFloat64)), _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_zero, _nan), new GoComplex128(((1.5707963267948966 : GoFloat64)), _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(((1.5707963267948966 : GoFloat64)), -_inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, ((1 : GoFloat64))), new GoComplex128(((3.141592653589793 : GoFloat64)), -_inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(((0 : GoFloat64)), -_inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _inf), new GoComplex128(((2.356194490192345 : GoFloat64)), -_inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(((0.7853981633974483 : GoFloat64)), -_inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_nan, -_inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _nan), new GoComplex128(_nan, _inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_nan, -_inf)) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _acoshSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(_zero, ((1.5707963267948966 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_zero, _zero), new GoComplex128(_zero, ((1.5707963267948966 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(_inf, ((1.5707963267948966 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, ((1 : GoFloat64))), new GoComplex128(_inf, ((3.141592653589793 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(_inf, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _inf), new GoComplex128(_inf, ((2.356194490192345 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_inf, ((0.7853981633974483 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _asinSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(_zero, _zero)) : T__struct_0)), ((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(((0 : GoFloat64)), _inf)) : T__struct_0)), ((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)), ((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(((1.5707963267948966 : GoFloat64)), _inf)) : T__struct_0)), ((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(((0.7853981633974483 : GoFloat64)), _inf)) : T__struct_0)), ((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_nan, _inf)) : T__struct_0)), ((new T__struct_0(new GoComplex128(_nan, _zero), naN()) : T__struct_0)), ((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)), ((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_nan, _inf)) : T__struct_0)), ((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _asinhSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(_zero, _zero)) : T__struct_0)), ((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(_inf, ((1.5707963267948966 : GoFloat64)))) : T__struct_0)), ((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)), ((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(_inf, _zero)) : T__struct_0)), ((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_inf, ((0.7853981633974483 : GoFloat64)))) : T__struct_0)), ((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)), ((new T__struct_0(new GoComplex128(_nan, _zero), new GoComplex128(_nan, _zero)) : T__struct_0)), ((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)), ((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_inf, _nan)) : T__struct_0)), ((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _atanSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(((0 : GoFloat64)), _zero), new GoComplex128(((0 : GoFloat64)), _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((0 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _zero), new GoComplex128(((0.7853981633974483 : GoFloat64)), _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(((1.5707963267948966 : GoFloat64)), _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(((1.5707963267948966 : GoFloat64)), _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(((1.5707963267948966 : GoFloat64)), _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(((1.5707963267948966 : GoFloat64)), _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_nan, _zero)) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _atanhSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(_zero, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _nan), new GoComplex128(_zero, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _zero), new GoComplex128(_inf, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(((0 : GoUnTypedInt)), ((1.5707963267948966 : GoUnTypedFloat)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(_zero, ((1.5707963267948966 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_zero, ((1.5707963267948966 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(((0 : GoFloat64)), _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_zero, ((1.5707963267948966 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _cosSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(((1 : GoFloat64)), -_zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _inf), new GoComplex128(_inf, -_zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _nan), new GoComplex128(_nan, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(_inf, -_inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _zero), new GoComplex128(_nan, -_zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _zero), new GoComplex128(_nan, -_zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _coshSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(((1 : GoFloat64)), _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _inf), new GoComplex128(_nan, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _nan), new GoComplex128(_nan, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _zero), new GoComplex128(_inf, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(_inf * stdgo.math.Math.cos(((1 : GoFloat64))), _inf * stdgo.math.Math.sin(((1 : GoFloat64))))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _zero), new GoComplex128(_nan, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), naN()) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _expSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(((1 : GoFloat64)), _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_zero, _zero), new GoComplex128(((1 : GoFloat64)), _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _zero), new GoComplex128(_inf, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, ((1 : GoFloat64))), new GoComplex128(stdgo.math.Math.copysign(((0 : GoFloat64)), stdgo.math.Math.cos(((1 : GoFloat64)))), stdgo.math.Math.copysign(((0 : GoFloat64)), stdgo.math.Math.sin(((1 : GoFloat64)))))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(_inf * stdgo.math.Math.cos(((1 : GoFloat64))), _inf * stdgo.math.Math.sin(((1 : GoFloat64))))) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _inf), new GoComplex128(_zero, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _nan), new GoComplex128(_zero, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _zero), new GoComplex128(_nan, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), naN()) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _logSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(-_inf, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_zero, _zero), new GoComplex128(-_inf, ((3.141592653589793 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(_inf, ((1.5707963267948966 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, ((1 : GoFloat64))), new GoComplex128(_inf, ((3.141592653589793 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(_inf, ((0 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _inf), new GoComplex128(_inf, ((2.356194490192345 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_inf, ((0.7853981633974483 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _log10SC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(-_inf, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_zero, _zero), new GoComplex128(-_inf, ((1.3643763538418412 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(_inf, ((0.6821881769209206 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, ((1 : GoFloat64))), new GoComplex128(_inf, ((1.3643763538418412 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(_inf, ((0 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _inf), new GoComplex128(_inf, ((1.023282265381381 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_inf, ((0.3410940884604603 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _sinSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(_zero, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _inf), new GoComplex128(_zero, _inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _nan), new GoComplex128(_zero, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(_inf, _inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _zero), new GoComplex128(_nan, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_nan, _inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _zero), new GoComplex128(_nan, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_nan, _inf)) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _sinhSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(_zero, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _inf), new GoComplex128(_zero, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _nan), new GoComplex128(_zero, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _zero), new GoComplex128(_inf, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(_inf * stdgo.math.Math.cos(((1 : GoFloat64))), _inf * stdgo.math.Math.sin(((1 : GoFloat64))))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _zero), new GoComplex128(_nan, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), naN()) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _sqrtSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(_zero, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_zero, _zero), new GoComplex128(_zero, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(_inf, _inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_inf, _inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, ((1 : GoFloat64))), new GoComplex128(_zero, _inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(_inf, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(-_inf, _nan), new GoComplex128(_nan, _inf)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(_inf, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _tanSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(
((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(_zero, _zero)) : T__struct_0)),
((new T__struct_0(new GoComplex128(_zero, _nan), new GoComplex128(_zero, _nan)) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), new GoComplex128(_zero, ((1 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(_zero, ((1 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(new GoComplex128(_inf, _nan), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _zero), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)),
((new T__struct_0(new GoComplex128(_nan, _inf), new GoComplex128(_zero, ((1 : GoFloat64)))) : T__struct_0)),
((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _tanhSC : Slice<T__struct_0> = ((new Slice<T__struct_0>(((new T__struct_0(new GoComplex128(_zero, _zero), new GoComplex128(_zero, _zero)) : T__struct_0)), ((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _inf), naN()) : T__struct_0)), ((new T__struct_0(new GoComplex128(((1 : GoFloat64)), _nan), naN()) : T__struct_0)), ((new T__struct_0(new GoComplex128(_inf, ((1 : GoFloat64))), new GoComplex128(((1 : GoFloat64)), stdgo.math.Math.copysign(((0 : GoFloat64)), stdgo.math.Math.sin(((2 : GoFloat64)))))) : T__struct_0)), ((new T__struct_0(new GoComplex128(_inf, _inf), new GoComplex128(((1 : GoFloat64)), _zero)) : T__struct_0)), ((new T__struct_0(new GoComplex128(_inf, _nan), new GoComplex128(((1 : GoFloat64)), _zero)) : T__struct_0)), ((new T__struct_0(new GoComplex128(_nan, _zero), new GoComplex128(_nan, _zero)) : T__struct_0)), ((new T__struct_0(new GoComplex128(_nan, ((1 : GoFloat64))), naN()) : T__struct_0)), ((new T__struct_0(new GoComplex128(_nan, _inf), naN()) : T__struct_0)), ((new T__struct_0(naN(), naN()) : T__struct_0))) : Slice<T__struct_0>));
var _eps : GoFloat64 = ((1.1102230246251565e-16 : GoFloat64));
var _branchPoints : Slice<GoArray<GoComplex128>> = ((new Slice<GoArray<GoComplex128>>(((new GoArray<GoComplex128>(new GoComplex128(((2 : GoFloat64)), _zero), new GoComplex128(((2 : GoFloat64)), _eps)) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>(new GoComplex128(((2 : GoFloat64)), -_zero), new GoComplex128(((2 : GoFloat64)), -_eps)) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>(new GoComplex128(((-2 : GoFloat64)), _zero), new GoComplex128(((-2 : GoFloat64)), _eps)) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>(new GoComplex128(((-2 : GoFloat64)), -_zero), new GoComplex128(((-2 : GoFloat64)), -_eps)) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>(new GoComplex128(_zero, ((2 : GoFloat64))), new GoComplex128(_eps, ((2 : GoFloat64)))) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>(new GoComplex128(-_zero, ((2 : GoFloat64))), new GoComplex128(-_eps, ((2 : GoFloat64)))) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>(new GoComplex128(_zero, ((-2 : GoFloat64))), new GoComplex128(_eps, ((-2 : GoFloat64)))) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>(new GoComplex128(-_zero, ((-2 : GoFloat64))), new GoComplex128(-_eps, ((-2 : GoFloat64)))) : GoArray<GoComplex128>))) : Slice<GoArray<GoComplex128>>));
@:structInit class T_ff {
    public var _r : GoFloat64 = ((0 : GoFloat64));
    public var _theta : GoFloat64 = ((0 : GoFloat64));
    public function new(?_r:GoFloat64, ?_theta:GoFloat64) {
        if (_r != null) this._r = _r;
        if (_theta != null) this._theta = _theta;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ff(_r, _theta);
    }
}
@:structInit @:local class T__struct_0 {
    public var _in : GoComplex128 = new GoComplex128(0, 0);
    public var _want : GoComplex128 = new GoComplex128(0, 0);
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_want) + "}";
    public function new(?_in:GoComplex128, ?_want:GoComplex128, ?toString) {
        if (_in != null) this._in = _in;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_in, _want);
    }
}
function abs(_x:GoComplex128):GoFloat64 {
        return stdgo.math.Math.hypot(_x.real, _x.imag);
    }
function asin(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if ((_im == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_re) <= ((1 : GoFloat64)))) {
                return new GoComplex128(stdgo.math.Math.asin(_re), _im);
            } else if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_im) <= ((1 : GoFloat64)))) {
                return new GoComplex128(_re, stdgo.math.Math.asinh(_im));
            } else if (stdgo.math.Math.isNaN(_im)) {
                if (_re == ((0 : GoFloat64))) {
                    return new GoComplex128(_re, stdgo.math.Math.naN());
                } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                    return new GoComplex128(stdgo.math.Math.naN(), _re);
                } else {
                    return naN();
                };
            } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
                if (stdgo.math.Math.isNaN(_re)) {
                    return _x;
                } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                    return new GoComplex128(stdgo.math.Math.copysign(((0.7853981633974483 : GoFloat64)), _re), _im);
                } else {
                    return new GoComplex128(stdgo.math.Math.copysign(((0 : GoFloat64)), _re), _im);
                };
            } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                return new GoComplex128(stdgo.math.Math.copysign(((1.5707963267948966 : GoFloat64)), _re), stdgo.math.Math.copysign(_re, _im));
            };
        };
        var _ct:GoComplex128 = new GoComplex128(-_x.imag, _x.real);
        var _xx:GoComplex128 = _x * _x;
        var _x1:GoComplex128 = new GoComplex128(((1 : GoFloat64)) - _xx.real, -_xx.imag);
        var _x2:GoComplex128 = sqrt(_x1);
        var _w:GoComplex128 = log(_ct + _x2);
        return new GoComplex128(_w.imag, -_w.real);
    }
function asinh(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if ((_im == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_re) <= ((1 : GoFloat64)))) {
                return new GoComplex128(stdgo.math.Math.asinh(_re), _im);
            } else if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_im) <= ((1 : GoFloat64)))) {
                return new GoComplex128(_re, stdgo.math.Math.asin(_im));
            } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
                    return new GoComplex128(_re, stdgo.math.Math.copysign(((0.7853981633974483 : GoFloat64)), _im));
                } else if (stdgo.math.Math.isNaN(_im)) {
                    return _x;
                } else {
                    return new GoComplex128(_re, stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
                };
            } else if (stdgo.math.Math.isNaN(_re)) {
                if (_im == ((0 : GoFloat64))) {
                    return _x;
                } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
                    return new GoComplex128(_im, _re);
                } else {
                    return naN();
                };
            } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
                return new GoComplex128(stdgo.math.Math.copysign(_im, _re), stdgo.math.Math.copysign(((1.5707963267948966 : GoFloat64)), _im));
            };
        };
        var _xx:GoComplex128 = _x * _x;
        var _x1:GoComplex128 = new GoComplex128(((1 : GoFloat64)) + _xx.real, _xx.imag);
        return log(_x + sqrt(_x1));
    }
function acos(_x:GoComplex128):GoComplex128 {
        var _w:GoComplex128 = asin(_x);
        return new GoComplex128(((1.5707963267948966 : GoFloat64)) - _w.real, -_w.imag);
    }
function acosh(_x:GoComplex128):GoComplex128 {
        if (_x == ((0 : GoComplex128))) {
            return new GoComplex128(((0 : GoFloat64)), stdgo.math.Math.copysign(((1.5707963267948966 : GoFloat64)), _x.imag));
        };
        var _w:GoComplex128 = acos(_x);
        if (_w.imag <= ((0 : GoFloat64))) {
            return new GoComplex128(-_w.imag, _w.real);
        };
        return new GoComplex128(_w.imag, -_w.real);
    }
function atan(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if (_im == ((0 : GoFloat64))) {
                return new GoComplex128(stdgo.math.Math.atan(_re), _im);
            } else if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.abs(_im) <= ((1 : GoFloat64)))) {
                return new GoComplex128(_re, stdgo.math.Math.atanh(_im));
            } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                if (stdgo.math.Math.isNaN(_re)) {
                    return new GoComplex128(stdgo.math.Math.naN(), stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
                };
                return new GoComplex128(stdgo.math.Math.copysign(((1.5707963267948966 : GoFloat64)), _re), stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
            } else if (stdgo.math.Math.isNaN(_re) || stdgo.math.Math.isNaN(_im)) {
                return naN();
            };
        };
        var _x2:GoFloat64 = _x.real * _x.real;
        var _a:GoFloat64 = (((1 : GoFloat64)) - _x2) - (_x.imag * _x.imag);
        if (_a == ((0 : GoFloat64))) {
            return naN();
        };
        var _t:GoFloat64 = ((0.5 : GoFloat64)) * stdgo.math.Math.atan2(((2 : GoFloat64)) * _x.real, _a);
        var _w:GoFloat64 = _reducePi(_t);
        _t = _x.imag - ((1 : GoFloat64));
        var _b:GoFloat64 = _x2 + (_t * _t);
        if (_b == ((0 : GoFloat64))) {
            return naN();
        };
        _t = _x.imag + ((1 : GoFloat64));
        var _c:GoFloat64 = (_x2 + (_t * _t)) / _b;
        return new GoComplex128(_w, ((0.25 : GoFloat64)) * stdgo.math.Math.log(_c));
    }
function atanh(_x:GoComplex128):GoComplex128 {
        var _z:GoComplex128 = new GoComplex128(-_x.imag, _x.real);
        _z = atan(_z);
        return new GoComplex128(_z.imag, -_z.real);
    }
function _tolerance(_a:GoFloat64, _b:GoFloat64, _e:GoFloat64):Bool {
        var _d:GoFloat64 = _a - _b;
        if (_d < ((0 : GoFloat64))) {
            _d = -_d;
        };
        if (_b != ((0 : GoFloat64))) {
            _e = _e * _b;
            if (_e < ((0 : GoFloat64))) {
                _e = -_e;
            };
        };
        return _d < _e;
    }
function _veryclose(_a:GoFloat64, _b:GoFloat64):Bool {
        return _tolerance(_a, _b, ((4e-16 : GoFloat64)));
    }
function _alike(_a:GoFloat64, _b:GoFloat64):Bool {
        if ((_a != _a) && (_b != _b)) {
            return true;
        } else if (_a == _b) {
            return stdgo.math.Math.signbit(_a) == stdgo.math.Math.signbit(_b);
        };
        return false;
    }
function _cTolerance(_a:GoComplex128, _b:GoComplex128, _e:GoFloat64):Bool {
        var _d:GoFloat64 = abs(_a - _b);
        if (_b != ((0 : GoComplex128))) {
            _e = _e * abs(_b);
            if (_e < ((0 : GoFloat64))) {
                _e = -_e;
            };
        };
        return _d < _e;
    }
function _cSoclose(_a:GoComplex128, _b:GoComplex128, _e:GoFloat64):Bool {
        return _cTolerance(_a, _b, _e);
    }
function _cVeryclose(_a:GoComplex128, _b:GoComplex128):Bool {
        return _cTolerance(_a, _b, ((4e-16 : GoFloat64)));
    }
function _cAlike(_a:GoComplex128, _b:GoComplex128):Bool {
        var _realAlike:Bool = false, _imagAlike:Bool = false;
        if (_isExact(_b.real)) {
            _realAlike = _alike(_a.real, _b.real);
        } else {
            _realAlike = _veryclose(_a.real, _b.real);
        };
        if (_isExact(_b.imag)) {
            _imagAlike = _alike(_a.imag, _b.imag);
        } else {
            _imagAlike = _veryclose(_a.imag, _b.imag);
        };
        return _realAlike && _imagAlike;
    }
function _isExact(_x:GoFloat64):Bool {
        return (((stdgo.math.Math.isNaN(_x) || stdgo.math.Math.isInf(_x, ((0 : GoInt)))) || (_x == ((0 : GoFloat64)))) || (_x == ((1 : GoFloat64)))) || (_x == ((-1 : GoFloat64)));
    }
function testAbs(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = abs((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_veryclose((_abs != null ? _abs[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Abs(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_abs != null ? _abs[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vcAbsSC != null ? _vcAbsSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoFloat64 = abs((_vcAbsSC != null ? _vcAbsSC[_i] : new GoComplex128(0, 0)));
                    if (!_alike((_absSC != null ? _absSC[_i] : ((0 : GoFloat64))), _f)) {
                        _t.errorf(((("Abs(%g) = %g, want %g" : GoString))), Go.toInterface((_vcAbsSC != null ? _vcAbsSC[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_absSC != null ? _absSC[_i] : ((0 : GoFloat64)))));
                    };
                };
            });
        };
    }
function testAcos(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = acos((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_acos != null ? _acos[_i] : new GoComplex128(0, 0)), _f, ((1e-14 : GoFloat64)))) {
                        _t.errorf(((("Acos(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_acos != null ? _acos[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _acosSC) {
            {
                var _f:GoComplex128 = acos(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Acos(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = acos(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Acos(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
        };
        for (_1 => _pt in _branchPoints) {
            {
                var _f0:GoComplex128 = acos((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), _f1:GoComplex128 = acos((_pt != null ? _pt[((1 : GoInt))] : new GoComplex128(0, 0)));
                if (!_cVeryclose(_f0, _f1)) {
                    _t.errorf(((("Acos(%g) not continuous, got %g want %g" : GoString))), Go.toInterface((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f0), Go.toInterface(_f1));
                };
            };
        };
    }
function testAcosh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = acosh((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_acosh != null ? _acosh[_i] : new GoComplex128(0, 0)), _f, ((1e-14 : GoFloat64)))) {
                        _t.errorf(((("Acosh(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_acosh != null ? _acosh[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _acoshSC) {
            {
                var _f:GoComplex128 = acosh(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Acosh(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = acosh(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Acosh(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
        };
        for (_1 => _pt in _branchPoints) {
            {
                var _f0:GoComplex128 = acosh((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), _f1:GoComplex128 = acosh((_pt != null ? _pt[((1 : GoInt))] : new GoComplex128(0, 0)));
                if (!_cVeryclose(_f0, _f1)) {
                    _t.errorf(((("Acosh(%g) not continuous, got %g want %g" : GoString))), Go.toInterface((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f0), Go.toInterface(_f1));
                };
            };
        };
    }
function testAsin(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = asin((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_asin != null ? _asin[_i] : new GoComplex128(0, 0)), _f, ((1e-14 : GoFloat64)))) {
                        _t.errorf(((("Asin(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_asin != null ? _asin[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _asinSC) {
            {
                var _f:GoComplex128 = asin(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Asin(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = asin(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Asin(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = asin(-_v._in);
                if (!_cAlike(-_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Asin(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(-_v._want));
                };
            };
        };
        for (_1 => _pt in _branchPoints) {
            {
                var _f0:GoComplex128 = asin((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), _f1:GoComplex128 = asin((_pt != null ? _pt[((1 : GoInt))] : new GoComplex128(0, 0)));
                if (!_cVeryclose(_f0, _f1)) {
                    _t.errorf(((("Asin(%g) not continuous, got %g want %g" : GoString))), Go.toInterface((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f0), Go.toInterface(_f1));
                };
            };
        };
    }
function testAsinh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = asinh((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_asinh != null ? _asinh[_i] : new GoComplex128(0, 0)), _f, ((4e-15 : GoFloat64)))) {
                        _t.errorf(((("Asinh(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_asinh != null ? _asinh[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _asinhSC) {
            {
                var _f:GoComplex128 = asinh(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Asinh(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = asinh(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Asinh(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = asinh(-_v._in);
                if (!_cAlike(-_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Asinh(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(-_v._want));
                };
            };
        };
        for (_1 => _pt in _branchPoints) {
            {
                var _f0:GoComplex128 = asinh((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), _f1:GoComplex128 = asinh((_pt != null ? _pt[((1 : GoInt))] : new GoComplex128(0, 0)));
                if (!_cVeryclose(_f0, _f1)) {
                    _t.errorf(((("Asinh(%g) not continuous, got %g want %g" : GoString))), Go.toInterface((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f0), Go.toInterface(_f1));
                };
            };
        };
    }
function testAtan(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = atan((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cVeryclose((_atan != null ? _atan[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Atan(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_atan != null ? _atan[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _atanSC) {
            {
                var _f:GoComplex128 = atan(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Atan(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = atan(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Atan(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = atan(-_v._in);
                if (!_cAlike(-_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Atan(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(-_v._want));
                };
            };
        };
        for (_1 => _pt in _branchPoints) {
            {
                var _f0:GoComplex128 = atan((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), _f1:GoComplex128 = atan((_pt != null ? _pt[((1 : GoInt))] : new GoComplex128(0, 0)));
                if (!_cVeryclose(_f0, _f1)) {
                    _t.errorf(((("Atan(%g) not continuous, got %g want %g" : GoString))), Go.toInterface((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f0), Go.toInterface(_f1));
                };
            };
        };
    }
function testAtanh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = atanh((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cVeryclose((_atanh != null ? _atanh[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Atanh(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_atanh != null ? _atanh[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _atanhSC) {
            {
                var _f:GoComplex128 = atanh(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Atanh(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = atanh(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Atanh(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = atanh(-_v._in);
                if (!_cAlike(-_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Atanh(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(-_v._want));
                };
            };
        };
        for (_1 => _pt in _branchPoints) {
            {
                var _f0:GoComplex128 = atanh((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), _f1:GoComplex128 = atanh((_pt != null ? _pt[((1 : GoInt))] : new GoComplex128(0, 0)));
                if (!_cVeryclose(_f0, _f1)) {
                    _t.errorf(((("Atanh(%g) not continuous, got %g want %g" : GoString))), Go.toInterface((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f0), Go.toInterface(_f1));
                };
            };
        };
    }
function testConj(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = conj((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cVeryclose((_conj != null ? _conj[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Conj(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_conj != null ? _conj[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vcConjSC != null ? _vcConjSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = conj((_vcConjSC != null ? _vcConjSC[_i] : new GoComplex128(0, 0)));
                    if (!_cAlike((_conjSC != null ? _conjSC[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Conj(%g) = %g, want %g" : GoString))), Go.toInterface((_vcConjSC != null ? _vcConjSC[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_conjSC != null ? _conjSC[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
    }
function testCos(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = cos((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_cos != null ? _cos[_i] : new GoComplex128(0, 0)), _f, ((3e-15 : GoFloat64)))) {
                        _t.errorf(((("Cos(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_cos != null ? _cos[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _cosSC) {
            {
                var _f:GoComplex128 = cos(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Cos(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = cos(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Cos(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = cos(-_v._in);
                if (!_cAlike(_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Cos(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
        };
    }
function testCosh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = cosh((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_cosh != null ? _cosh[_i] : new GoComplex128(0, 0)), _f, ((2e-15 : GoFloat64)))) {
                        _t.errorf(((("Cosh(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_cosh != null ? _cosh[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _coshSC) {
            {
                var _f:GoComplex128 = cosh(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Cosh(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = cosh(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Cosh(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = cosh(-_v._in);
                if (!_cAlike(_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Cosh(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
        };
    }
function testExp(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = exp((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_exp != null ? _exp[_i] : new GoComplex128(0, 0)), _f, ((1e-15 : GoFloat64)))) {
                        _t.errorf(((("Exp(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_exp != null ? _exp[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _expSC) {
            {
                var _f:GoComplex128 = exp(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Exp(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = exp(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Exp(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
        };
    }
function testIsNaN(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vcIsNaNSC != null ? _vcIsNaNSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:Bool = isNaN((_vcIsNaNSC != null ? _vcIsNaNSC[_i] : new GoComplex128(0, 0)));
                    if ((_isNaNSC != null ? _isNaNSC[_i] : false) != _f) {
                        _t.errorf(((("IsNaN(%v) = %v, want %v" : GoString))), Go.toInterface((_vcIsNaNSC != null ? _vcIsNaNSC[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_isNaNSC != null ? _isNaNSC[_i] : false)));
                    };
                };
            });
        };
    }
function testLog(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = log((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cVeryclose((_log != null ? _log[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Log(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_log != null ? _log[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _logSC) {
            {
                var _f:GoComplex128 = log(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Log(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = log(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Log(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
        };
        for (_1 => _pt in _branchPoints) {
            {
                var _f0:GoComplex128 = log((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), _f1:GoComplex128 = log((_pt != null ? _pt[((1 : GoInt))] : new GoComplex128(0, 0)));
                if (!_cVeryclose(_f0, _f1)) {
                    _t.errorf(((("Log(%g) not continuous, got %g want %g" : GoString))), Go.toInterface((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f0), Go.toInterface(_f1));
                };
            };
        };
    }
function testLog10(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = log10((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cVeryclose((_log10 != null ? _log10[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Log10(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_log10 != null ? _log10[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _log10SC) {
            {
                var _f:GoComplex128 = log10(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Log10(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = log10(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Log10(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
        };
    }
function testPolar(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = polar((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), _r:GoFloat64 = __tmp__._0, _theta:GoFloat64 = __tmp__._1;
                    if (!_veryclose((_polar != null ? _polar[_i] : new T_ff())._r, _r) && !_veryclose((_polar != null ? _polar[_i] : new T_ff())._theta, _theta)) {
                        _t.errorf(((("Polar(%g) = %g, %g want %g, %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_r), Go.toInterface(_theta), Go.toInterface((_polar != null ? _polar[_i] : new T_ff())._r), Go.toInterface((_polar != null ? _polar[_i] : new T_ff())._theta));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vcPolarSC != null ? _vcPolarSC.length : ((0 : GoInt))), _i++, {
                {
                    var __tmp__ = polar((_vcPolarSC != null ? _vcPolarSC[_i] : new GoComplex128(0, 0))), _r:GoFloat64 = __tmp__._0, _theta:GoFloat64 = __tmp__._1;
                    if (!_alike((_polarSC != null ? _polarSC[_i] : new T_ff())._r, _r) && !_alike((_polarSC != null ? _polarSC[_i] : new T_ff())._theta, _theta)) {
                        _t.errorf(((("Polar(%g) = %g, %g, want %g, %g" : GoString))), Go.toInterface((_vcPolarSC != null ? _vcPolarSC[_i] : new GoComplex128(0, 0))), Go.toInterface(_r), Go.toInterface(_theta), Go.toInterface((_polarSC != null ? _polarSC[_i] : new T_ff())._r), Go.toInterface((_polarSC != null ? _polarSC[_i] : new T_ff())._theta));
                    };
                };
            });
        };
    }
function testPow(_t:stdgo.testing.Testing.T_):Void {
        var _zero:GoComplex128 = new GoComplex128(((0 : GoUnTypedInt)), ((0 : GoUnTypedInt)));
        var _zeroPowers:Slice<GoArray<GoComplex128>> = ((new Slice<GoArray<GoComplex128>>(((new GoArray<GoComplex128>(((0 : GoComplex128)), (((1 : GoFloat64)) + new GoComplex128(0, 0))) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>(((1.5 : GoComplex128)), (((0 : GoFloat64)) + new GoComplex128(0, 0))) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>((((-1.5 : GoFloat64)) + new GoComplex128(0, 0)), new GoComplex128(stdgo.math.Math.inf(((0 : GoInt))), ((0 : GoFloat64)))) : GoArray<GoComplex128>)), ((new GoArray<GoComplex128>((((-1.5 : GoFloat64)) + new GoComplex128(0, 1.5)), inf()) : GoArray<GoComplex128>))) : Slice<GoArray<GoComplex128>>));
        for (_0 => _zp in _zeroPowers) {
            {
                var _f:GoComplex128 = pow(_zero, (_zp != null ? _zp[((0 : GoInt))] : new GoComplex128(0, 0)));
                if (_f != (_zp != null ? _zp[((1 : GoInt))] : new GoComplex128(0, 0))) {
                    _t.errorf(((("Pow(%g, %g) = %g, want %g" : GoString))), Go.toInterface(_zero), Go.toInterface((_zp != null ? _zp[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_zp != null ? _zp[((1 : GoInt))] : new GoComplex128(0, 0))));
                };
            };
        };
        var _a:GoComplex128 = new GoComplex128(((3 : GoUnTypedFloat)), ((3 : GoUnTypedFloat)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = pow(_a, (_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_pow != null ? _pow[_i] : new GoComplex128(0, 0)), _f, ((4e-15 : GoFloat64)))) {
                        _t.errorf(((("Pow(%g, %g) = %g, want %g" : GoString))), Go.toInterface(_a), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_pow != null ? _pow[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vcPowSC != null ? _vcPowSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = pow(((_vcPowSC != null ? _vcPowSC[_i] : new GoArray<GoComplex128>(...[for (i in 0 ... 2) new GoComplex128(0, 0)])) != null ? (_vcPowSC != null ? _vcPowSC[_i] : new GoArray<GoComplex128>(...[for (i in 0 ... 2) new GoComplex128(0, 0)]))[((0 : GoInt))] : new GoComplex128(0, 0)), ((_vcPowSC != null ? _vcPowSC[_i] : new GoArray<GoComplex128>(...[for (i in 0 ... 2) new GoComplex128(0, 0)])) != null ? (_vcPowSC != null ? _vcPowSC[_i] : new GoArray<GoComplex128>(...[for (i in 0 ... 2) new GoComplex128(0, 0)]))[((1 : GoInt))] : new GoComplex128(0, 0)));
                    if (!_cAlike((_powSC != null ? _powSC[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Pow(%g, %g) = %g, want %g" : GoString))), Go.toInterface(((_vcPowSC != null ? _vcPowSC[_i] : new GoArray<GoComplex128>(...[for (i in 0 ... 2) new GoComplex128(0, 0)])) != null ? (_vcPowSC != null ? _vcPowSC[_i] : new GoArray<GoComplex128>(...[for (i in 0 ... 2) new GoComplex128(0, 0)]))[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(((_vcPowSC != null ? _vcPowSC[_i] : new GoArray<GoComplex128>(...[for (i in 0 ... 2) new GoComplex128(0, 0)])) != null ? (_vcPowSC != null ? _vcPowSC[_i] : new GoArray<GoComplex128>(...[for (i in 0 ... 2) new GoComplex128(0, 0)]))[((1 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_powSC != null ? _powSC[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_1 => _pt in _branchPoints) {
            {
                var _f0:GoComplex128 = pow((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0)), ((0.1 : GoComplex128))), _f1:GoComplex128 = pow((_pt != null ? _pt[((1 : GoInt))] : new GoComplex128(0, 0)), ((0.1 : GoComplex128)));
                if (!_cVeryclose(_f0, _f1)) {
                    _t.errorf(((("Pow(%g, 0.1) not continuous, got %g want %g" : GoString))), Go.toInterface((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f0), Go.toInterface(_f1));
                };
            };
        };
    }
function testRect(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = rect((_polar != null ? _polar[_i] : new T_ff())._r, (_polar != null ? _polar[_i] : new T_ff())._theta);
                    if (!_cVeryclose((_vc != null ? _vc[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Rect(%g, %g) = %g want %g" : GoString))), Go.toInterface((_polar != null ? _polar[_i] : new T_ff())._r), Go.toInterface((_polar != null ? _polar[_i] : new T_ff())._theta), Go.toInterface(_f), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vcPolarSC != null ? _vcPolarSC.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = rect((_polarSC != null ? _polarSC[_i] : new T_ff())._r, (_polarSC != null ? _polarSC[_i] : new T_ff())._theta);
                    if (!_cAlike((_vcPolarSC != null ? _vcPolarSC[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Rect(%g, %g) = %g, want %g" : GoString))), Go.toInterface((_polarSC != null ? _polarSC[_i] : new T_ff())._r), Go.toInterface((_polarSC != null ? _polarSC[_i] : new T_ff())._theta), Go.toInterface(_f), Go.toInterface((_vcPolarSC != null ? _vcPolarSC[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
    }
function testSin(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = sin((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_sin != null ? _sin[_i] : new GoComplex128(0, 0)), _f, ((2e-15 : GoFloat64)))) {
                        _t.errorf(((("Sin(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_sin != null ? _sin[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _sinSC) {
            {
                var _f:GoComplex128 = sin(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Sin(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = sin(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Sinh(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = sin(-_v._in);
                if (!_cAlike(-_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Sinh(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(-_v._want));
                };
            };
        };
    }
function testSinh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = sinh((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_sinh != null ? _sinh[_i] : new GoComplex128(0, 0)), _f, ((2e-15 : GoFloat64)))) {
                        _t.errorf(((("Sinh(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_sinh != null ? _sinh[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _sinhSC) {
            {
                var _f:GoComplex128 = sinh(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Sinh(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = sinh(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Sinh(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = sinh(-_v._in);
                if (!_cAlike(-_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Sinh(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(-_v._want));
                };
            };
        };
    }
function testSqrt(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = sqrt((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cVeryclose((_sqrt != null ? _sqrt[_i] : new GoComplex128(0, 0)), _f)) {
                        _t.errorf(((("Sqrt(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_sqrt != null ? _sqrt[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _sqrtSC) {
            {
                var _f:GoComplex128 = sqrt(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Sqrt(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = sqrt(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Sqrt(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
        };
        for (_1 => _pt in _branchPoints) {
            {
                var _f0:GoComplex128 = sqrt((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), _f1:GoComplex128 = sqrt((_pt != null ? _pt[((1 : GoInt))] : new GoComplex128(0, 0)));
                if (!_cVeryclose(_f0, _f1)) {
                    _t.errorf(((("Sqrt(%g) not continuous, got %g want %g" : GoString))), Go.toInterface((_pt != null ? _pt[((0 : GoInt))] : new GoComplex128(0, 0))), Go.toInterface(_f0), Go.toInterface(_f1));
                };
            };
        };
    }
function testTan(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = tan((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_tan != null ? _tan[_i] : new GoComplex128(0, 0)), _f, ((3e-15 : GoFloat64)))) {
                        _t.errorf(((("Tan(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_tan != null ? _tan[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _tanSC) {
            {
                var _f:GoComplex128 = tan(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Tan(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = tan(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Tan(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = tan(-_v._in);
                if (!_cAlike(-_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Tan(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(-_v._want));
                };
            };
        };
    }
function testTanh(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_vc != null ? _vc.length : ((0 : GoInt))), _i++, {
                {
                    var _f:GoComplex128 = tanh((_vc != null ? _vc[_i] : new GoComplex128(0, 0)));
                    if (!_cSoclose((_tanh != null ? _tanh[_i] : new GoComplex128(0, 0)), _f, ((2e-15 : GoFloat64)))) {
                        _t.errorf(((("Tanh(%g) = %g, want %g" : GoString))), Go.toInterface((_vc != null ? _vc[_i] : new GoComplex128(0, 0))), Go.toInterface(_f), Go.toInterface((_tanh != null ? _tanh[_i] : new GoComplex128(0, 0))));
                    };
                };
            });
        };
        for (_0 => _v in _tanhSC) {
            {
                var _f:GoComplex128 = tanh(_v._in);
                if (!_cAlike(_v._want, _f)) {
                    _t.errorf(((("Tanh(%g) = %g, want %g" : GoString))), Go.toInterface(_v._in), Go.toInterface(_f), Go.toInterface(_v._want));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.imag) || stdgo.math.Math.isNaN(_v._want.imag)) {
                continue;
            };
            {
                var _f:GoComplex128 = tanh(conj(_v._in));
                if (!_cAlike(conj(_v._want), _f) && !_cAlike(_v._in, conj(_v._in))) {
                    _t.errorf(((("Tanh(%g) = %g, want %g" : GoString))), Go.toInterface(conj(_v._in)), Go.toInterface(_f), Go.toInterface(conj(_v._want)));
                };
            };
            if (stdgo.math.Math.isNaN(_v._in.real) || stdgo.math.Math.isNaN(_v._want.real)) {
                continue;
            };
            {
                var _f:GoComplex128 = tanh(-_v._in);
                if (!_cAlike(-_v._want, _f) && !_cAlike(_v._in, -_v._in)) {
                    _t.errorf(((("Tanh(%g) = %g, want %g" : GoString))), Go.toInterface(-_v._in), Go.toInterface(_f), Go.toInterface(-_v._want));
                };
            };
        };
    }
function testInfiniteLoopIntanSeries(_t:stdgo.testing.Testing.T_):Void {
        var _want:GoComplex128 = inf();
        {
            var _got:GoComplex128 = cot(((0 : GoComplex128)));
            if (_got != _want) {
                _t.errorf(((("Cot(0): got %g, want %g" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function benchmarkAbs(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                abs(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkAcos(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                acos(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkAcosh(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                acosh(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkAsin(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                asin(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkAsinh(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                asinh(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkAtan(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                atan(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkAtanh(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                atanh(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkConj(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                conj(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkCos(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                cos(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkCosh(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                cosh(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkExp(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                exp(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkLog(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                log(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkLog10(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                log10(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkPhase(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                phase(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkPolar(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                polar(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkPow(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                pow(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))), new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkRect(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                rect(((2.5 : GoFloat64)), ((1.5 : GoFloat64)));
            });
        };
    }
function benchmarkSin(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                sin(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkSinh(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                sinh(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkSqrt(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                sqrt(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkTan(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                tan(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function benchmarkTanh(_b:stdgo.testing.Testing.B):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                tanh(new GoComplex128(((2.5 : GoUnTypedFloat)), ((3.5 : GoUnTypedFloat))));
            });
        };
    }
function conj(_x:GoComplex128):GoComplex128 {
        return new GoComplex128(_x.real, -_x.imag);
    }
function exp(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                if ((_re > ((0 : GoFloat64))) && (_im == ((0 : GoFloat64)))) {
                    return _x;
                } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im)) {
                    if (_re < ((0 : GoFloat64))) {
                        return new GoComplex128(((0 : GoFloat64)), stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
                    } else {
                        return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), stdgo.math.Math.naN());
                    };
                };
            } else if (stdgo.math.Math.isNaN(_re)) {
                if (_im == ((0 : GoFloat64))) {
                    return new GoComplex128(stdgo.math.Math.naN(), _im);
                };
            };
        };
        var _r:GoFloat64 = stdgo.math.Math.exp(_x.real);
        var __tmp__ = stdgo.math.Math.sincos(_x.imag), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
        return new GoComplex128(_r * _c, _r * _s);
    }
function testTanHuge(_t:stdgo.testing.Testing.T_):Void {
        for (_i => _x in _hugeIn) {
            {
                var _f:GoComplex128 = tan(_x);
                if (!_cSoclose((_tanHuge != null ? _tanHuge[_i] : new GoComplex128(0, 0)), _f, ((3e-15 : GoFloat64)))) {
                    _t.errorf(((("Tan(%g) = %g, want %g" : GoString))), Go.toInterface(_x), Go.toInterface(_f), Go.toInterface((_tanHuge != null ? _tanHuge[_i] : new GoComplex128(0, 0))));
                };
            };
        };
    }
function isInf(_x:GoComplex128):Bool {
        if (stdgo.math.Math.isInf(_x.real, ((0 : GoInt))) || stdgo.math.Math.isInf(_x.imag, ((0 : GoInt)))) {
            return true;
        };
        return false;
    }
function inf():GoComplex128 {
        var _inf:GoFloat64 = stdgo.math.Math.inf(((1 : GoInt)));
        return new GoComplex128(_inf, _inf);
    }
function isNaN(_x:GoComplex128):Bool {
        if (stdgo.math.Math.isInf(_x.real, ((0 : GoInt))) || stdgo.math.Math.isInf(_x.imag, ((0 : GoInt)))) {
            return false;
        } else if (stdgo.math.Math.isNaN(_x.real) || stdgo.math.Math.isNaN(_x.imag)) {
            return true;
        };
        return false;
    }
function naN():GoComplex128 {
        var _nan:GoFloat64 = stdgo.math.Math.naN();
        return new GoComplex128(_nan, _nan);
    }
function log(_x:GoComplex128):GoComplex128 {
        return new GoComplex128(stdgo.math.Math.log(abs(_x)), phase(_x));
    }
function log10(_x:GoComplex128):GoComplex128 {
        var _z:GoComplex128 = log(_x);
        return new GoComplex128(((0.4342944819032518 : GoFloat64)) * _z.real, ((0.4342944819032518 : GoFloat64)) * _z.imag);
    }
function phase(_x:GoComplex128):GoFloat64 {
        return stdgo.math.Math.atan2(_x.imag, _x.real);
    }
function polar(_x:GoComplex128):{ var _0 : GoFloat64; var _1 : GoFloat64; } {
        var _r:GoFloat64 = ((0 : GoFloat64)), __952:GoFloat64 = ((0 : GoFloat64));
        return { _0 : abs(_x), _1 : phase(_x) };
    }
function pow(_x:GoComplex128, _y:GoComplex128):GoComplex128 {
        if (_x == ((0 : GoComplex128))) {
            if (isNaN(_y)) {
                return naN();
            };
            var _r:GoFloat64 = _y.real, _i:GoFloat64 = _y.imag;
            if (_r == ((0 : GoFloat64))) {
                return ((1 : GoComplex128));
            } else if (_r < ((0 : GoFloat64))) {
                if (_i == ((0 : GoFloat64))) {
                    return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), ((0 : GoFloat64)));
                };
                return inf();
            } else if (_r > ((0 : GoFloat64))) {
                return ((0 : GoComplex128));
            };
            throw Go.toInterface(((("not reached" : GoString))));
        };
        var _modulus:GoFloat64 = abs(_x);
        if (_modulus == ((0 : GoFloat64))) {
            return new GoComplex128(((0 : GoUnTypedInt)), ((0 : GoUnTypedInt)));
        };
        var _r:GoFloat64 = stdgo.math.Math.pow(_modulus, _y.real);
        var _arg:GoFloat64 = phase(_x);
        var _theta:GoFloat64 = _y.real * _arg;
        if (_y.imag != ((0 : GoFloat64))) {
            _r = _r * (stdgo.math.Math.exp(-_y.imag * _arg));
            _theta = _theta + (_y.imag * stdgo.math.Math.log(_modulus));
        };
        var __tmp__ = stdgo.math.Math.sincos(_theta), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
        return new GoComplex128(_r * _c, _r * _s);
    }
function rect(_r:GoFloat64, __952:GoFloat64):GoComplex128 {
        var __tmp__ = stdgo.math.Math.sincos(__952), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
        return new GoComplex128(_r * _c, _r * _s);
    }
function sin(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if ((_im == ((0 : GoFloat64))) && (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re))) {
                return new GoComplex128(stdgo.math.Math.naN(), _im);
            } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
                if (_re == ((0 : GoFloat64))) {
                    return _x;
                } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re)) {
                    return new GoComplex128(stdgo.math.Math.naN(), _im);
                };
            } else if ((_re == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_im)) {
                return _x;
            };
        };
        var __tmp__ = stdgo.math.Math.sincos(_x.real), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
        var __tmp__ = _sinhcosh(_x.imag), _sh:GoFloat64 = __tmp__._0, _ch:GoFloat64 = __tmp__._1;
        return new GoComplex128(_s * _ch, _c * _sh);
    }
function sinh(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im))) {
                return new GoComplex128(_re, stdgo.math.Math.naN());
            } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                if (_im == ((0 : GoFloat64))) {
                    return new GoComplex128(_re, _im);
                } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im)) {
                    return new GoComplex128(_re, stdgo.math.Math.naN());
                };
            } else if ((_im == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_re)) {
                return new GoComplex128(stdgo.math.Math.naN(), _im);
            };
        };
        var __tmp__ = stdgo.math.Math.sincos(_x.imag), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
        var __tmp__ = _sinhcosh(_x.real), _sh:GoFloat64 = __tmp__._0, _ch:GoFloat64 = __tmp__._1;
        return new GoComplex128(_c * _sh, _s * _ch);
    }
function cos(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if ((_im == ((0 : GoFloat64))) && (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re))) {
                return new GoComplex128(stdgo.math.Math.naN(), -_im * stdgo.math.Math.copysign(((0 : GoFloat64)), _re));
            } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
                if (_re == ((0 : GoFloat64))) {
                    return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), -_re * stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
                } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re)) {
                    return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), stdgo.math.Math.naN());
                };
            } else if ((_re == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_im)) {
                return new GoComplex128(stdgo.math.Math.naN(), ((0 : GoFloat64)));
            };
        };
        var __tmp__ = stdgo.math.Math.sincos(_x.real), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
        var __tmp__ = _sinhcosh(_x.imag), _sh:GoFloat64 = __tmp__._0, _ch:GoFloat64 = __tmp__._1;
        return new GoComplex128(_c * _ch, -_s * _sh);
    }
function cosh(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if ((_re == ((0 : GoFloat64))) && (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im))) {
                return new GoComplex128(stdgo.math.Math.naN(), _re * stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
            } else if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                if (_im == ((0 : GoFloat64))) {
                    return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), _im * stdgo.math.Math.copysign(((0 : GoFloat64)), _re));
                } else if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im)) {
                    return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), stdgo.math.Math.naN());
                };
            } else if ((_im == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_re)) {
                return new GoComplex128(stdgo.math.Math.naN(), _im);
            };
        };
        var __tmp__ = stdgo.math.Math.sincos(_x.imag), _s:GoFloat64 = __tmp__._0, _c:GoFloat64 = __tmp__._1;
        var __tmp__ = _sinhcosh(_x.real), _sh:GoFloat64 = __tmp__._0, _ch:GoFloat64 = __tmp__._1;
        return new GoComplex128(_c * _ch, _s * _sh);
    }
function _sinhcosh(_x:GoFloat64):{ var _0 : GoFloat64; var _1 : GoFloat64; } {
        var _sh:GoFloat64 = ((0 : GoFloat64)), _ch:GoFloat64 = ((0 : GoFloat64));
        if (stdgo.math.Math.abs(_x) <= ((0.5 : GoFloat64))) {
            return { _0 : stdgo.math.Math.sinh(_x), _1 : stdgo.math.Math.cosh(_x) };
        };
        var _e:GoFloat64 = stdgo.math.Math.exp(_x);
        var _ei:GoFloat64 = ((0.5 : GoFloat64)) / _e;
        _e = _e * (((0.5 : GoFloat64)));
        return { _0 : _e - _ei, _1 : _e + _ei };
    }
function sqrt(_x:GoComplex128):GoComplex128 {
        if (_x.imag == ((0 : GoFloat64))) {
            if (_x.real == ((0 : GoFloat64))) {
                return new GoComplex128(((0 : GoFloat64)), _x.imag);
            };
            if (_x.real < ((0 : GoFloat64))) {
                return new GoComplex128(((0 : GoFloat64)), stdgo.math.Math.copysign(stdgo.math.Math.sqrt(-_x.real), _x.imag));
            };
            return new GoComplex128(stdgo.math.Math.sqrt(_x.real), _x.imag);
        } else if (stdgo.math.Math.isInf(_x.imag, ((0 : GoInt)))) {
            return new GoComplex128(stdgo.math.Math.inf(((1 : GoInt))), _x.imag);
        };
        if (_x.real == ((0 : GoFloat64))) {
            if (_x.imag < ((0 : GoFloat64))) {
                var _r:GoFloat64 = stdgo.math.Math.sqrt(((-0.5 : GoFloat64)) * _x.imag);
                return new GoComplex128(_r, -_r);
            };
            var _r:GoFloat64 = stdgo.math.Math.sqrt(((0.5 : GoFloat64)) * _x.imag);
            return new GoComplex128(_r, _r);
        };
        var _a:GoFloat64 = _x.real;
        var _b:GoFloat64 = _x.imag;
        var _scale:GoFloat64 = ((0 : GoFloat64));
        if ((stdgo.math.Math.abs(_a) > ((4 : GoFloat64))) || (stdgo.math.Math.abs(_b) > ((4 : GoFloat64)))) {
            _a = _a * (((0.25 : GoFloat64)));
            _b = _b * (((0.25 : GoFloat64)));
            _scale = ((2 : GoFloat64));
        } else {
            _a = _a * (((1.8014398509481984e+16 : GoFloat64)));
            _b = _b * (((1.8014398509481984e+16 : GoFloat64)));
            _scale = ((7.450580596923828e-09 : GoFloat64));
        };
        var _r:GoFloat64 = stdgo.math.Math.hypot(_a, _b);
        var _t:GoFloat64 = ((0 : GoFloat64));
        if (_a > ((0 : GoFloat64))) {
            _t = stdgo.math.Math.sqrt((((0.5 : GoFloat64)) * _r) + (((0.5 : GoFloat64)) * _a));
            _r = _scale * stdgo.math.Math.abs((((0.5 : GoFloat64)) * _b) / _t);
            _t = _t * (_scale);
        } else {
            _r = stdgo.math.Math.sqrt((((0.5 : GoFloat64)) * _r) - (((0.5 : GoFloat64)) * _a));
            _t = _scale * stdgo.math.Math.abs((((0.5 : GoFloat64)) * _b) / _r);
            _r = _r * (_scale);
        };
        if (_b < ((0 : GoFloat64))) {
            return new GoComplex128(_t, -_r);
        };
        return new GoComplex128(_t, _r);
    }
function tan(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if (stdgo.math.Math.isInf(_im, ((0 : GoInt)))) {
                if (stdgo.math.Math.isInf(_re, ((0 : GoInt))) || stdgo.math.Math.isNaN(_re)) {
                    return new GoComplex128(stdgo.math.Math.copysign(((0 : GoFloat64)), _re), stdgo.math.Math.copysign(((1 : GoFloat64)), _im));
                };
                return new GoComplex128(stdgo.math.Math.copysign(((0 : GoFloat64)), stdgo.math.Math.sin(((2 : GoFloat64)) * _re)), stdgo.math.Math.copysign(((1 : GoFloat64)), _im));
            } else if ((_re == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_im)) {
                return _x;
            };
        };
        var _d:GoFloat64 = stdgo.math.Math.cos(((2 : GoFloat64)) * _x.real) + stdgo.math.Math.cosh(((2 : GoFloat64)) * _x.imag);
        if (stdgo.math.Math.abs(_d) < ((0.25 : GoFloat64))) {
            _d = _tanSeries(_x);
        };
        if (_d == ((0 : GoFloat64))) {
            return inf();
        };
        return new GoComplex128(stdgo.math.Math.sin(((2 : GoFloat64)) * _x.real) / _d, stdgo.math.Math.sinh(((2 : GoFloat64)) * _x.imag) / _d);
    }
function tanh(_x:GoComplex128):GoComplex128 {
        {
            var _re:GoFloat64 = _x.real, _im:GoFloat64 = _x.imag;
            if (stdgo.math.Math.isInf(_re, ((0 : GoInt)))) {
                if (stdgo.math.Math.isInf(_im, ((0 : GoInt))) || stdgo.math.Math.isNaN(_im)) {
                    return new GoComplex128(stdgo.math.Math.copysign(((1 : GoFloat64)), _re), stdgo.math.Math.copysign(((0 : GoFloat64)), _im));
                };
                return new GoComplex128(stdgo.math.Math.copysign(((1 : GoFloat64)), _re), stdgo.math.Math.copysign(((0 : GoFloat64)), stdgo.math.Math.sin(((2 : GoFloat64)) * _im)));
            } else if ((_im == ((0 : GoFloat64))) && stdgo.math.Math.isNaN(_re)) {
                return _x;
            };
        };
        var _d:GoFloat64 = stdgo.math.Math.cosh(((2 : GoFloat64)) * _x.real) + stdgo.math.Math.cos(((2 : GoFloat64)) * _x.imag);
        if (_d == ((0 : GoFloat64))) {
            return inf();
        };
        return new GoComplex128(stdgo.math.Math.sinh(((2 : GoFloat64)) * _x.real) / _d, stdgo.math.Math.sin(((2 : GoFloat64)) * _x.imag) / _d);
    }
function _reducePi(_x:GoFloat64):GoFloat64 {
        {};
        if (stdgo.math.Math.abs(_x) < ((1.073741824e+09 : GoFloat64))) {
            {};
            var _t:GoFloat64 = _x / ((3.141592653589793 : GoFloat64));
            _t = _t + (((0.5 : GoFloat64)));
            _t = ((((_t : GoInt64)) : GoFloat64));
            return ((_x - (_t * ((3.141592502593994 : GoFloat64)))) - (_t * ((1.5099578831723193e-07 : GoFloat64)))) - (_t * ((1.0780605716316238e-14 : GoFloat64)));
        };
        {};
        var _ix:GoUInt64 = stdgo.math.Math.float64bits(_x);
        var _exp:GoInt = (((((_ix >> ((52 : GoUnTypedInt))) & ((2047 : GoUInt64))) : GoInt)) - ((1023 : GoInt))) - ((52 : GoInt));
        _ix = _ix & ((("4503599627370495" : GoUInt64)));
        _ix = _ix | ((("4503599627370496" : GoUInt64)));
        var _mPi:GoArray<GoUInt64> = ((new GoArray<GoUInt64>(
((0 : GoUInt64)),
(("5871781006564002452" : GoUInt64)),
(("18308165927316385504" : GoUInt64)),
(("7904181063698728992" : GoUInt64)),
(("18386141011142107824" : GoUInt64)),
(("15821769039155751280" : GoUInt64)),
(("226472410124699918" : GoUInt64)),
(("9155525084211106719" : GoUInt64)),
(("8377006445469475394" : GoUInt64)),
(("8416726409370648352" : GoUInt64)),
(("11297538173999619322" : GoUInt64)),
(("5639122210317440029" : GoUInt64)),
(("10375251204153461767" : GoUInt64)),
(("17840878831444244111" : GoUInt64)),
(("13158180450388509915" : GoUInt64)),
(("12079533480525952278" : GoUInt64)),
(("13444332734028904637" : GoUInt64)),
(("11422145685100251509" : GoUInt64)),
(("3890458997777936004" : GoUInt64)),
(("3098925296816862677" : GoUInt64))) : GoArray<GoUInt64>));
        var _digit:GoUInt = (((_exp + ((64 : GoInt))) : GoUInt)) / ((64 : GoUInt)), _bitshift:GoUInt = (((_exp + ((64 : GoInt))) : GoUInt)) % ((64 : GoUInt));
        var _z0:GoUInt64 = ((_mPi != null ? _mPi[_digit] : ((0 : GoUInt64))) << _bitshift) | ((_mPi != null ? _mPi[_digit + ((1 : GoUInt))] : ((0 : GoUInt64))) >> (((64 : GoUInt)) - _bitshift));
        var _z1:GoUInt64 = ((_mPi != null ? _mPi[_digit + ((1 : GoUInt))] : ((0 : GoUInt64))) << _bitshift) | ((_mPi != null ? _mPi[_digit + ((2 : GoUInt))] : ((0 : GoUInt64))) >> (((64 : GoUInt)) - _bitshift));
        var _z2:GoUInt64 = ((_mPi != null ? _mPi[_digit + ((2 : GoUInt))] : ((0 : GoUInt64))) << _bitshift) | ((_mPi != null ? _mPi[_digit + ((3 : GoUInt))] : ((0 : GoUInt64))) >> (((64 : GoUInt)) - _bitshift));
        var __tmp__ = stdgo.math.bits.Bits.mul64(_z2, _ix), _z2hi:GoUInt64 = __tmp__._0, _0:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.mul64(_z1, _ix), _z1hi:GoUInt64 = __tmp__._0, _z1lo:GoUInt64 = __tmp__._1;
        var _z0lo:GoUInt64 = _z0 * _ix;
        var __tmp__ = stdgo.math.bits.Bits.add64(_z1lo, _z2hi, ((0 : GoUInt64))), _lo:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
        var __tmp__ = stdgo.math.bits.Bits.add64(_z0lo, _z1hi, _c), _hi:GoUInt64 = __tmp__._0, _1:GoUInt64 = __tmp__._1;
        var _lz:GoUInt = ((stdgo.math.bits.Bits.leadingZeros64(_hi) : GoUInt));
        var _e:GoUInt64 = (((((1023 : GoUInt)) - (_lz + ((1 : GoUInt)))) : GoUInt64));
        _hi = (_hi << (_lz + ((1 : GoUInt)))) | (_lo >> (((64 : GoUInt)) - (_lz + ((1 : GoUInt)))));
        _hi = _hi >> (((12 : GoUnTypedInt)));
        _hi = _hi | (_e << ((52 : GoUnTypedInt)));
        _x = stdgo.math.Math.float64frombits(_hi);
        if (_x > ((0.5 : GoFloat64))) {
            _x--;
        };
        return ((3.141592653589793 : GoFloat64)) * _x;
    }
function _tanSeries(_z:GoComplex128):GoFloat64 {
        {};
        var _x:GoFloat64 = stdgo.math.Math.abs(((2 : GoFloat64)) * _z.real);
        var _y:GoFloat64 = stdgo.math.Math.abs(((2 : GoFloat64)) * _z.imag);
        _x = _reducePi(_x);
        _x = _x * _x;
        _y = _y * _y;
        var _x2:GoFloat64 = ((1 : GoFloat64));
        var _y2:GoFloat64 = ((1 : GoFloat64));
        var _f:GoFloat64 = ((1 : GoFloat64));
        var _rn:GoFloat64 = ((0 : GoFloat64));
        var _d:GoFloat64 = ((0 : GoFloat64));
        while (true) {
            _rn++;
            _f = _f * (_rn);
            _rn++;
            _f = _f * (_rn);
            _x2 = _x2 * (_x);
            _y2 = _y2 * (_y);
            var _t:GoFloat64 = _y2 + _x2;
            _t = _t / (_f);
            _d = _d + (_t);
            _rn++;
            _f = _f * (_rn);
            _rn++;
            _f = _f * (_rn);
            _x2 = _x2 * (_x);
            _y2 = _y2 * (_y);
            _t = _y2 - _x2;
            _t = _t / (_f);
            _d = _d + (_t);
            if (!(stdgo.math.Math.abs(_t / _d) > ((1.1102230246251565e-16 : GoFloat64)))) {
                break;
            };
        };
        return _d;
    }
function cot(_x:GoComplex128):GoComplex128 {
        var _d:GoFloat64 = stdgo.math.Math.cosh(((2 : GoFloat64)) * _x.imag) - stdgo.math.Math.cos(((2 : GoFloat64)) * _x.real);
        if (stdgo.math.Math.abs(_d) < ((0.25 : GoFloat64))) {
            _d = _tanSeries(_x);
        };
        if (_d == ((0 : GoFloat64))) {
            return inf();
        };
        return new GoComplex128(stdgo.math.Math.sin(((2 : GoFloat64)) * _x.real) / _d, -stdgo.math.Math.sinh(((2 : GoFloat64)) * _x.imag) / _d);
    }
class T_ff_wrapper {
    public var __t__ : T_ff;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
