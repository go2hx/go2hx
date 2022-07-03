package stdgo.crypto.elliptic;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _mask : Slice<GoUInt8> = ((new Slice<GoByte>(((255 : GoUInt8)), ((1 : GoUInt8)), ((3 : GoUInt8)), ((7 : GoUInt8)), ((15 : GoUInt8)), ((31 : GoUInt8)), ((63 : GoUInt8)), ((127 : GoUInt8))) : Slice<GoByte>));
var _p256One : GoArray<GoUInt32> = ((new GoArray<GoUInt32>(((2 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((268433408 : GoUInt32)), ((536870911 : GoUInt32)), ((268435455 : GoUInt32)), ((532676607 : GoUInt32)), ((33554431 : GoUInt32)), ((0 : GoUInt32))) : GoArray<GoUInt32>));
var _p256Zero : GoArray<GoUInt32> = ((new GoArray<GoUInt32>(((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32))) : GoArray<GoUInt32>));
var _p256P : GoArray<GoUInt32> = ((new GoArray<GoUInt32>(((536870911 : GoUInt32)), ((268435455 : GoUInt32)), ((536870911 : GoUInt32)), ((1023 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((2097152 : GoUInt32)), ((251658240 : GoUInt32)), ((268435455 : GoUInt32))) : GoArray<GoUInt32>));
var _p2562P : GoArray<GoUInt32> = ((new GoArray<GoUInt32>(((536870910 : GoUInt32)), ((268435455 : GoUInt32)), ((536870911 : GoUInt32)), ((2047 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((4194304 : GoUInt32)), ((234881024 : GoUInt32)), ((536870911 : GoUInt32))) : GoArray<GoUInt32>));
var _p256Precomputed : GoArray<GoUInt32> = ((new GoArray<GoUInt32>(
((290596984 : GoUInt32)),
((242421057 : GoUInt32)),
((230031737 : GoUInt32)),
((78635775 : GoUInt32)),
((310917853 : GoUInt32)),
((212721032 : GoUInt32)),
((295599836 : GoUInt32)),
((222981803 : GoUInt32)),
((51514350 : GoUInt32)),
((489335829 : GoUInt32)),
((254096764 : GoUInt32)),
((434396381 : GoUInt32)),
((96936400 : GoUInt32)),
((429049253 : GoUInt32)),
((170095751 : GoUInt32)),
((22329889 : GoUInt32)),
((21696699 : GoUInt32)),
((11419619 : GoUInt32)),
((222406006 : GoUInt32)),
((153287761 : GoUInt32)),
((37001551 : GoUInt32)),
((101408979 : GoUInt32)),
((373655214 : GoUInt32)),
((216620824 : GoUInt32)),
((535072883 : GoUInt32)),
((66729676 : GoUInt32)),
((99339564 : GoUInt32)),
((188755759 : GoUInt32)),
((22835391 : GoUInt32)),
((358715996 : GoUInt32)),
((94529284 : GoUInt32)),
((229187216 : GoUInt32)),
((215751807 : GoUInt32)),
((513877062 : GoUInt32)),
((236641822 : GoUInt32)),
((248061730 : GoUInt32)),
((40859512 : GoUInt32)),
((90604670 : GoUInt32)),
((168553630 : GoUInt32)),
((37024851 : GoUInt32)),
((439480858 : GoUInt32)),
((226879324 : GoUInt32)),
((90992905 : GoUInt32)),
((170293760 : GoUInt32)),
((190300240 : GoUInt32)),
((10025815 : GoUInt32)),
((178796492 : GoUInt32)),
((101451666 : GoUInt32)),
((217734681 : GoUInt32)),
((102476702 : GoUInt32)),
((92922779 : GoUInt32)),
((10691781 : GoUInt32)),
((131522279 : GoUInt32)),
((43478603 : GoUInt32)),
((532943434 : GoUInt32)),
((176956491 : GoUInt32)),
((484992866 : GoUInt32)),
((215358590 : GoUInt32)),
((405915872 : GoUInt32)),
((123172065 : GoUInt32)),
((496412073 : GoUInt32)),
((138651209 : GoUInt32)),
((205172986 : GoUInt32)),
((115533781 : GoUInt32)),
((124205610 : GoUInt32)),
((395011560 : GoUInt32)),
((67124891 : GoUInt32)),
((438243778 : GoUInt32)),
((7870186 : GoUInt32)),
((258227729 : GoUInt32)),
((93078495 : GoUInt32)),
((255999938 : GoUInt32)),
((425934842 : GoUInt32)),
((143782578 : GoUInt32)),
((305931036 : GoUInt32)),
((74112396 : GoUInt32)),
((88539357 : GoUInt32)),
((94251799 : GoUInt32)),
((388871183 : GoUInt32)),
((138291069 : GoUInt32)),
((185456137 : GoUInt32)),
((265411090 : GoUInt32)),
((56389202 : GoUInt32)),
((435020300 : GoUInt32)),
((219799744 : GoUInt32)),
((159190848 : GoUInt32)),
((184638233 : GoUInt32)),
((71951349 : GoUInt32)),
((14748830 : GoUInt32)),
((54179201 : GoUInt32)),
((90859435 : GoUInt32)),
((91714381 : GoUInt32)),
((501071970 : GoUInt32)),
((207073549 : GoUInt32)),
((21607325 : GoUInt32)),
((40541819 : GoUInt32)),
((204857247 : GoUInt32)),
((75982029 : GoUInt32)),
((124632266 : GoUInt32)),
((212120422 : GoUInt32)),
((244515755 : GoUInt32)),
((443842791 : GoUInt32)),
((92184193 : GoUInt32)),
((504621904 : GoUInt32)),
((256273651 : GoUInt32)),
((116484896 : GoUInt32)),
((79311219 : GoUInt32)),
((202804275 : GoUInt32)),
((365646905 : GoUInt32)),
((111382033 : GoUInt32)),
((121002173 : GoUInt32)),
((187258447 : GoUInt32)),
((66509915 : GoUInt32)),
((5486974 : GoUInt32)),
((321045696 : GoUInt32)),
((106813439 : GoUInt32)),
((60941558 : GoUInt32)),
((350622890 : GoUInt32)),
((153379607 : GoUInt32)),
((466107082 : GoUInt32)),
((182025965 : GoUInt32)),
((221826634 : GoUInt32)),
((260222982 : GoUInt32)),
((54653047 : GoUInt32)),
((174775689 : GoUInt32)),
((76106445 : GoUInt32)),
((166814421 : GoUInt32)),
((260313327 : GoUInt32)),
((455502422 : GoUInt32)),
((14152227 : GoUInt32)),
((65063826 : GoUInt32)),
((238663282 : GoUInt32)),
((111317018 : GoUInt32)),
((110789974 : GoUInt32)),
((518080 : GoUInt32)),
((163043539 : GoUInt32)),
((3185280 : GoUInt32)),
((449863551 : GoUInt32)),
((204453341 : GoUInt32)),
((213898269 : GoUInt32)),
((164542008 : GoUInt32)),
((273777244 : GoUInt32)),
((228642651 : GoUInt32)),
((135456897 : GoUInt32)),
((116610665 : GoUInt32)),
((111505196 : GoUInt32)),
((502845828 : GoUInt32)),
((3430432 : GoUInt32)),
((343397495 : GoUInt32)),
((23354801 : GoUInt32)),
((199756881 : GoUInt32)),
((203603518 : GoUInt32)),
((238413402 : GoUInt32)),
((451639968 : GoUInt32)),
((204952341 : GoUInt32)),
((258456729 : GoUInt32)),
((134076345 : GoUInt32)),
((421511614 : GoUInt32)),
((6366045 : GoUInt32)),
((46236905 : GoUInt32)),
((29730873 : GoUInt32)),
((75111974 : GoUInt32)),
((192722006 : GoUInt32)),
((155066973 : GoUInt32)),
((351520493 : GoUInt32)),
((214702793 : GoUInt32)),
((402536435 : GoUInt32)),
((77105545 : GoUInt32)),
((445695234 : GoUInt32)),
((49487938 : GoUInt32)),
((169309851 : GoUInt32)),
((184388732 : GoUInt32)),
((135863406 : GoUInt32)),
((500019767 : GoUInt32)),
((23199936 : GoUInt32)),
((276509345 : GoUInt32)),
((107743451 : GoUInt32)),
((282094082 : GoUInt32)),
((261267 : GoUInt32)),
((90308643 : GoUInt32)),
((376580903 : GoUInt32)),
((109796441 : GoUInt32)),
((40959228 : GoUInt32)),
((262999756 : GoUInt32)),
((241033666 : GoUInt32)),
((246105707 : GoUInt32)),
((50090300 : GoUInt32)),
((67630940 : GoUInt32)),
((195735859 : GoUInt32)),
((158359529 : GoUInt32)),
((193509607 : GoUInt32)),
((120899987 : GoUInt32)),
((31588239 : GoUInt32)),
((420833648 : GoUInt32)),
((180162304 : GoUInt32)),
((273063591 : GoUInt32)),
((53033664 : GoUInt32)),
((215783594 : GoUInt32)),
((30950397 : GoUInt32)),
((236240872 : GoUInt32)),
((364806751 : GoUInt32)),
((9130514 : GoUInt32)),
((246676327 : GoUInt32)),
((136101161 : GoUInt32)),
((197537558 : GoUInt32)),
((45546695 : GoUInt32)),
((257576489 : GoUInt32)),
((324406118 : GoUInt32)),
((202074818 : GoUInt32)),
((85649040 : GoUInt32)),
((222421617 : GoUInt32)),
((255761364 : GoUInt32)),
((30870187 : GoUInt32)),
((16949106 : GoUInt32)),
((121510965 : GoUInt32)),
((250023868 : GoUInt32)),
((181935023 : GoUInt32)),
((166511770 : GoUInt32)),
((141325342 : GoUInt32)),
((266780208 : GoUInt32)),
((392647399 : GoUInt32)),
((2348054 : GoUInt32)),
((528735877 : GoUInt32)),
((41804168 : GoUInt32)),
((107966648 : GoUInt32)),
((404542751 : GoUInt32)),
((158035532 : GoUInt32)),
((412033845 : GoUInt32)),
((173930329 : GoUInt32)),
((396852918 : GoUInt32)),
((267062899 : GoUInt32)),
((357230868 : GoUInt32)),
((49540177 : GoUInt32)),
((58878809 : GoUInt32)),
((194113917 : GoUInt32)),
((29829449 : GoUInt32)),
((325238538 : GoUInt32)),
((237239775 : GoUInt32)),
((173413552 : GoUInt32)),
((1015183 : GoUInt32)),
((495713 : GoUInt32)),
((136567250 : GoUInt32)),
((136396601 : GoUInt32)),
((287878667 : GoUInt32)),
((218717445 : GoUInt32)),
((193315010 : GoUInt32)),
((32289519 : GoUInt32)),
((38657156 : GoUInt32)),
((238414081 : GoUInt32)),
((406919754 : GoUInt32)),
((257809469 : GoUInt32)),
((58222217 : GoUInt32)),
((86139112 : GoUInt32)),
((95303012 : GoUInt32)),
((88256781 : GoUInt32)),
((148453957 : GoUInt32)),
((429206180 : GoUInt32)),
((160877633 : GoUInt32)),
((273786665 : GoUInt32)),
((79574169 : GoUInt32)),
((86713258 : GoUInt32)),
((278868094 : GoUInt32)),
((116766395 : GoUInt32)),
((528802279 : GoUInt32)),
((125439226 : GoUInt32)),
((281337663 : GoUInt32)),
((39453418 : GoUInt32)),
((184844341 : GoUInt32)),
((238149222 : GoUInt32)),
((208587427 : GoUInt32)),
((42902325 : GoUInt32)),
((42491940 : GoUInt32)),
((326299680 : GoUInt32)),
((16080181 : GoUInt32)),
((367290444 : GoUInt32)),
((254451223 : GoUInt32)),
((441087273 : GoUInt32)),
((213368497 : GoUInt32)),
((187332769 : GoUInt32)),
((447880991 : GoUInt32)),
((104209615 : GoUInt32)),
((113842077 : GoUInt32)),
((185816615 : GoUInt32)),
((308787572 : GoUInt32)),
((71338925 : GoUInt32)),
((482342488 : GoUInt32)),
((238904593 : GoUInt32)),
((13096815 : GoUInt32)),
((30177897 : GoUInt32)),
((243196699 : GoUInt32)),
((89107279 : GoUInt32)),
((2855247 : GoUInt32)),
((450001456 : GoUInt32)),
((215177118 : GoUInt32)),
((206574156 : GoUInt32)),
((84781712 : GoUInt32)),
((11616114 : GoUInt32)),
((184986229 : GoUInt32)),
((118447302 : GoUInt32)),
((373941674 : GoUInt32)),
((139088658 : GoUInt32)),
((53019708 : GoUInt32)),
((68960273 : GoUInt32)),
((332604433 : GoUInt32)),
((184854584 : GoUInt32)),
((225840429 : GoUInt32)),
((387167538 : GoUInt32)),
((195693571 : GoUInt32)),
((138420907 : GoUInt32)),
((113046977 : GoUInt32)),
((49566585 : GoUInt32)),
((25878640 : GoUInt32)),
((415883550 : GoUInt32)),
((34327194 : GoUInt32)),
((107956587 : GoUInt32)),
((65991316 : GoUInt32)),
((108331218 : GoUInt32)),
((226451772 : GoUInt32)),
((2997227 : GoUInt32)),
((192155704 : GoUInt32)),
((235148095 : GoUInt32)),
((360879757 : GoUInt32)),
((199853559 : GoUInt32)),
((28097562 : GoUInt32)),
((443192223 : GoUInt32)),
((54415606 : GoUInt32)),
((224812756 : GoUInt32)),
((189496278 : GoUInt32)),
((509228953 : GoUInt32)),
((112408647 : GoUInt32)),
((402282239 : GoUInt32)),
((106887472 : GoUInt32)),
((2219082 : GoUInt32)),
((45315673 : GoUInt32)),
((72416791 : GoUInt32)),
((188054373 : GoUInt32)),
((234221484 : GoUInt32)),
((356088815 : GoUInt32)),
((164846207 : GoUInt32)),
((288014687 : GoUInt32)),
((103081518 : GoUInt32)),
((177253935 : GoUInt32)),
((276753618 : GoUInt32)),
((32938942 : GoUInt32)),
((125660110 : GoUInt32)),
((91493268 : GoUInt32)),
((331777276 : GoUInt32)),
((156289296 : GoUInt32)),
((119886379 : GoUInt32)),
((231179651 : GoUInt32)),
((68086459 : GoUInt32)),
((534655626 : GoUInt32)),
((198581654 : GoUInt32)),
((220775303 : GoUInt32)),
((166165897 : GoUInt32)),
((307563584 : GoUInt32)),
((123325309 : GoUInt32)),
((57143092 : GoUInt32)),
((182626656 : GoUInt32)),
((152800220 : GoUInt32)),
((154428073 : GoUInt32)),
((16017903 : GoUInt32)),
((187603695 : GoUInt32)),
((221030257 : GoUInt32)),
((89005890 : GoUInt32)),
((8038985 : GoUInt32)),
((103901883 : GoUInt32)),
((37829774 : GoUInt32)),
((88235001 : GoUInt32)),
((468532794 : GoUInt32)),
((254222964 : GoUInt32)),
((526283558 : GoUInt32)),
((104949015 : GoUInt32)),
((245526642 : GoUInt32)),
((164552359 : GoUInt32)),
((7239219 : GoUInt32)),
((130619730 : GoUInt32)),
((226520526 : GoUInt32)),
((149071841 : GoUInt32)),
((239214106 : GoUInt32)),
((68733409 : GoUInt32)),
((31180944 : GoUInt32)),
((456743990 : GoUInt32)),
((169722229 : GoUInt32)),
((499445619 : GoUInt32)),
((144011060 : GoUInt32)),
((239820018 : GoUInt32)),
((453851672 : GoUInt32)),
((51989046 : GoUInt32)),
((113402911 : GoUInt32)),
((239342156 : GoUInt32)),
((170872490 : GoUInt32)),
((176956858 : GoUInt32)),
((261258967 : GoUInt32)),
((103265812 : GoUInt32)),
((121052362 : GoUInt32)),
((195126932 : GoUInt32)),
((68664323 : GoUInt32)),
((130066403 : GoUInt32)),
((163798041 : GoUInt32)),
((292069893 : GoUInt32)),
((146190349 : GoUInt32)),
((283373001 : GoUInt32)),
((163683314 : GoUInt32)),
((92807721 : GoUInt32)),
((455819618 : GoUInt32)),
((173862682 : GoUInt32)),
((356737579 : GoUInt32)),
((163398462 : GoUInt32)),
((56942669 : GoUInt32)),
((122161042 : GoUInt32)),
((97105331 : GoUInt32)),
((243662629 : GoUInt32)),
((67694423 : GoUInt32)),
((404017060 : GoUInt32)),
((18986011 : GoUInt32)),
((220498447 : GoUInt32)),
((61887010 : GoUInt32)),
((60535146 : GoUInt32)),
((209032813 : GoUInt32)),
((168001811 : GoUInt32)),
((172627817 : GoUInt32)),
((18857068 : GoUInt32)),
((152560910 : GoUInt32)),
((250363304 : GoUInt32)),
((379416236 : GoUInt32)),
((17569433 : GoUInt32)),
((172056915 : GoUInt32)),
((259148050 : GoUInt32)),
((365781175 : GoUInt32)),
((78428889 : GoUInt32)),
((99599866 : GoUInt32)),
((253038295 : GoUInt32)),
((1190737 : GoUInt32)),
((285520906 : GoUInt32)),
((213382210 : GoUInt32)),
((263923967 : GoUInt32)),
((111956938 : GoUInt32)),
((425804492 : GoUInt32)),
((129961897 : GoUInt32)),
((9795153 : GoUInt32)),
((81850901 : GoUInt32)),
((248789496 : GoUInt32)),
((66350037 : GoUInt32)),
((95217711 : GoUInt32)),
((285808310 : GoUInt32)),
((7188600 : GoUInt32)),
((268270935 : GoUInt32)),
((254724780 : GoUInt32)),
((212364780 : GoUInt32)),
((366392026 : GoUInt32)),
((157674697 : GoUInt32)),
((479376578 : GoUInt32)),
((2045969 : GoUInt32)),
((481329397 : GoUInt32)),
((47757316 : GoUInt32)),
((433176877 : GoUInt32)),
((253803846 : GoUInt32)),
((26550183 : GoUInt32)),
((171333315 : GoUInt32)),
((86221861 : GoUInt32)),
((265094802 : GoUInt32)),
((222617032 : GoUInt32)),
((320802651 : GoUInt32)),
((184028746 : GoUInt32)),
((215612532 : GoUInt32)),
((161199640 : GoUInt32)),
((47944780 : GoUInt32)),
((174534800 : GoUInt32)),
((29495521 : GoUInt32)),
((395087139 : GoUInt32)),
((21447555 : GoUInt32)),
((280523837 : GoUInt32)),
((159753563 : GoUInt32)),
((48711545 : GoUInt32)),
((5726520 : GoUInt32)),
((156793127 : GoUInt32)),
((321990906 : GoUInt32)),
((199251222 : GoUInt32)),
((167040537 : GoUInt32)),
((196486512 : GoUInt32)),
((161400209 : GoUInt32)),
((227830014 : GoUInt32)),
((487028781 : GoUInt32)),
((264711691 : GoUInt32)),
((117551768 : GoUInt32)),
((409175611 : GoUInt32)),
((140072120 : GoUInt32)),
((303696950 : GoUInt32)),
((166199007 : GoUInt32)),
((258257961 : GoUInt32)),
((163174174 : GoUInt32)),
((350418392 : GoUInt32)),
((260410682 : GoUInt32)),
((155381416 : GoUInt32)),
((228964197 : GoUInt32)),
((116240383 : GoUInt32)),
((178067660 : GoUInt32)),
((208004282 : GoUInt32)),
((477396614 : GoUInt32)),
((240036117 : GoUInt32)),
((427939745 : GoUInt32)),
((137975385 : GoUInt32)),
((86955234 : GoUInt32)),
((142427063 : GoUInt32)),
((58372379 : GoUInt32)),
((433230542 : GoUInt32)),
((260916882 : GoUInt32)),
((415434047 : GoUInt32)),
((143015443 : GoUInt32)),
((79775424 : GoUInt32)),
((113112410 : GoUInt32)),
((82068861 : GoUInt32)),
((370483849 : GoUInt32)),
((180850370 : GoUInt32)),
((442090914 : GoUInt32)),
((33721239 : GoUInt32)),
((119287041 : GoUInt32)),
((43353375 : GoUInt32)),
((67400827 : GoUInt32)),
((142103949 : GoUInt32)),
((131242660 : GoUInt32)),
((332936223 : GoUInt32)),
((148565975 : GoUInt32)),
((329029421 : GoUInt32)),
((112716405 : GoUInt32)),
((222993886 : GoUInt32)),
((267477976 : GoUInt32)),
((136140247 : GoUInt32)),
((173797224 : GoUInt32)),
((192622808 : GoUInt32)),
((199703919 : GoUInt32)),
((178815297 : GoUInt32)),
((228027521 : GoUInt32)),
((132622796 : GoUInt32)),
((415151985 : GoUInt32)),
((225918141 : GoUInt32)),
((334829905 : GoUInt32)),
((164675959 : GoUInt32)),
((29661816 : GoUInt32))) : GoArray<GoUInt32>));
var _p256Zero31 : GoArray<GoUInt32> = ((new GoArray<GoUInt32>(((2147483640 : GoUInt32)), ((1073741820 : GoUInt32)), ((2147483644 : GoUInt32)), ((1073750012 : GoUInt32)), ((2147483644 : GoUInt32)), ((1073741820 : GoUInt32)), (("2164260860" : GoUInt32)), ((939524092 : GoUInt32)), ((2147483644 : GoUInt32))) : GoArray<GoUInt32>));
var _initonce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _p224 : T_p224Curve = new T_p224Curve();
var _3 : Curve = _p224;
var _p256Params : CurveParams = null;
var _p256RInverse : stdgo.math.big.Big.Int_ = null;
var _p256 : T_p256Curve = new T_p256Curve();
var _p384 : T_p384Curve = new T_p384Curve();
var _4 : Curve = _p384;
var _p521 : T_p521Curve = new T_p521Curve();
var _5 : Curve = _p521;
typedef Curve = StructType & {
    public function params():CurveParams;
    public function isOnCurve(_x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):Bool;
    public function add(_x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_, _x2:stdgo.math.big.Big.Int_, _y2:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; };
    public function double(_x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; };
    public function scalarMult(_x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_, _k:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; };
    public function scalarBaseMult(_k:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; };
};
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.CurveParams_static_extension) class CurveParams {
    public var p : Ref<stdgo.math.big.Big.Int_> = null;
    public var n : Ref<stdgo.math.big.Big.Int_> = null;
    public var b : Ref<stdgo.math.big.Big.Int_> = null;
    public var gx : Ref<stdgo.math.big.Big.Int_> = null;
    public var gy : Ref<stdgo.math.big.Big.Int_> = null;
    public var bitSize : GoInt = ((0 : GoInt));
    public var name : GoString = (("" : GoString));
    public function new(?p:Ref<stdgo.math.big.Big.Int_>, ?n:Ref<stdgo.math.big.Big.Int_>, ?b:Ref<stdgo.math.big.Big.Int_>, ?gx:Ref<stdgo.math.big.Big.Int_>, ?gy:Ref<stdgo.math.big.Big.Int_>, ?bitSize:GoInt, ?name:GoString) {
        if (p != null) this.p = p;
        if (n != null) this.n = n;
        if (b != null) this.b = b;
        if (gx != null) this.gx = gx;
        if (gy != null) this.gy = gy;
        if (bitSize != null) this.bitSize = bitSize;
        if (name != null) this.name = name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CurveParams(p, n, b, gx, gy, bitSize, name);
    }
}
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.T_p224Curve_static_extension) class T_p224Curve {
    public var _params : Ref<CurveParams> = null;
    public function new(?_params:Ref<CurveParams>) {
        if (_params != null) this._params = _params;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_p224Curve(_params);
    }
}
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.T_p256Curve_static_extension) class T_p256Curve {
    @:embedded
    public var curveParams : Ref<CurveParams> = null;
    public function new(?curveParams:Ref<CurveParams>) {
        if (curveParams != null) this.curveParams = curveParams;
    }
    public function add(_x1:Ref<stdgo.math.big.Big.Int_>, _y1:Ref<stdgo.math.big.Big.Int_>, _x2:Ref<stdgo.math.big.Big.Int_>, _y2:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return curveParams.add(_x1, _y1, _x2, _y2);
    public function double(_x1:Ref<stdgo.math.big.Big.Int_>, _y1:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return curveParams.double(_x1, _y1);
    public function isOnCurve(_x:Ref<stdgo.math.big.Big.Int_>, _y:Ref<stdgo.math.big.Big.Int_>):Bool return curveParams.isOnCurve(_x, _y);
    public function _addJacobian(_x1:Ref<stdgo.math.big.Big.Int_>, _y1:Ref<stdgo.math.big.Big.Int_>, _z1:Ref<stdgo.math.big.Big.Int_>, _x2:Ref<stdgo.math.big.Big.Int_>, _y2:Ref<stdgo.math.big.Big.Int_>, _z2:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; var _2 : Ref<stdgo.math.big.Big.Int_>; } return curveParams._addJacobian(_x1, _y1, _z1, _x2, _y2, _z2);
    public function _affineFromJacobian(_x:Ref<stdgo.math.big.Big.Int_>, _y:Ref<stdgo.math.big.Big.Int_>, _z:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; } return curveParams._affineFromJacobian(_x, _y, _z);
    public function _doubleJacobian(_x:Ref<stdgo.math.big.Big.Int_>, _y:Ref<stdgo.math.big.Big.Int_>, _z:Ref<stdgo.math.big.Big.Int_>):{ var _0 : Ref<stdgo.math.big.Big.Int_>; var _1 : Ref<stdgo.math.big.Big.Int_>; var _2 : Ref<stdgo.math.big.Big.Int_>; } return curveParams._doubleJacobian(_x, _y, _z);
    public function _polynomial(_x:Ref<stdgo.math.big.Big.Int_>):Ref<stdgo.math.big.Big.Int_> return curveParams._polynomial(_x);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_p256Curve(curveParams);
    }
}
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.T_p384Curve_static_extension) class T_p384Curve {
    public var _params : Ref<CurveParams> = null;
    public function new(?_params:Ref<CurveParams>) {
        if (_params != null) this._params = _params;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_p384Curve(_params);
    }
}
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.T_p521Curve_static_extension) class T_p521Curve {
    public var _params : Ref<CurveParams> = null;
    public function new(?_params:Ref<CurveParams>) {
        if (_params != null) this._params = _params;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_p521Curve(_params);
    }
}
function _matchesSpecificCurve(_params:CurveParams, _available:haxe.Rest<Curve>):{ var _0 : Curve; var _1 : Bool; } {
        var _available = new Slice<Curve>(..._available);
        for (_0 => _c in _available) {
            if (_params == _c.params()) {
                return { _0 : _c, _1 : true };
            };
        };
        return { _0 : ((null : Curve)), _1 : false };
    }
/**
    // zForAffine returns a Jacobian Z value for the affine point (x, y). If x and
    // y are zero, it assumes that they represent the point at infinity because (0,
    // 0) is not on the any of the curves handled here.
**/
function _zForAffine(_x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):stdgo.math.big.Big.Int_ {
        var _z = new stdgo.math.big.Big.Int_();
        if ((_x.sign() != ((0 : GoInt))) || (_y.sign() != ((0 : GoInt)))) {
            _z.setInt64(((1 : GoInt64)));
        };
        return _z;
    }
/**
    // GenerateKey returns a public/private key pair. The private key is
    // generated using the given reader, which must return random data.
**/
function generateKey(_curve:Curve, _rand:stdgo.io.Io.Reader):{ var _0 : Slice<GoByte>; var _1 : stdgo.math.big.Big.Int_; var _2 : stdgo.math.big.Big.Int_; var _3 : Error; } {
        var _priv:Slice<GoByte> = ((null : Slice<GoUInt8>)), _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null, _err:Error = ((null : stdgo.Error));
        var n = _curve.params().n;
        var _bitSize:GoInt = n.bitLen();
        var _byteLen:GoInt = (_bitSize + ((7 : GoInt))) / ((8 : GoInt));
        _priv = new Slice<GoUInt8>(...[for (i in 0 ... ((_byteLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        while (_x == null) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _priv);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _priv, _1 : _x, _2 : _y, _3 : _err };
            };
            if (_priv != null) (_priv != null ? _priv[((0 : GoInt))] : ((0 : GoUInt8))) & ((_mask != null ? _mask[_bitSize % ((8 : GoInt))] : ((0 : GoUInt8))));
            if (_priv != null) (_priv != null ? _priv[((1 : GoInt))] : ((0 : GoUInt8))) ^ (((66 : GoUInt8)));
            if (new stdgo.math.big.Big.Int_().setBytes(_priv).cmp(n) >= ((0 : GoInt))) {
                continue;
            };
            {
                var __tmp__ = _curve.scalarBaseMult(_priv);
                _x = __tmp__._0;
                _y = __tmp__._1;
            };
        };
        return { _0 : _priv, _1 : _x, _2 : _y, _3 : _err };
    }
/**
    // Marshal converts a point on the curve into the uncompressed form specified in
    // SEC 1, Version 2.0, Section 2.3.3. If the point is not on the curve (or is
    // the conventional point at infinity), the behavior is undefined.
**/
function marshal(_curve:Curve, _x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):Slice<GoByte> {
        var _byteLen:GoInt = (_curve.params().bitSize + ((7 : GoInt))) / ((8 : GoInt));
        var _ret = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) + (((2 : GoInt)) * _byteLen) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if (_ret != null) _ret[((0 : GoInt))] = ((4 : GoUInt8));
        _x.fillBytes(((_ret.__slice__(((1 : GoInt)), ((1 : GoInt)) + _byteLen) : Slice<GoUInt8>)));
        _y.fillBytes(((_ret.__slice__(((1 : GoInt)) + _byteLen, ((1 : GoInt)) + (((2 : GoInt)) * _byteLen)) : Slice<GoUInt8>)));
        return _ret;
    }
/**
    // MarshalCompressed converts a point on the curve into the compressed form
    // specified in SEC 1, Version 2.0, Section 2.3.3. If the point is not on the
    // curve (or is the conventional point at infinity), the behavior is undefined.
**/
function marshalCompressed(_curve:Curve, _x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):Slice<GoByte> {
        var _byteLen:GoInt = (_curve.params().bitSize + ((7 : GoInt))) / ((8 : GoInt));
        var _compressed = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) + _byteLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if (_compressed != null) _compressed[((0 : GoInt))] = ((_y.bit(((0 : GoInt))) : GoByte)) | ((2 : GoUInt8));
        _x.fillBytes(((_compressed.__slice__(((1 : GoInt))) : Slice<GoUInt8>)));
        return _compressed;
    }
/**
    // Unmarshal converts a point, serialized by Marshal, into an x, y pair. It is
    // an error if the point is not in uncompressed form, is not on the curve, or is
    // the point at infinity. On error, x = nil.
**/
function unmarshal(_curve:Curve, _data:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var _byteLen:GoInt = (_curve.params().bitSize + ((7 : GoInt))) / ((8 : GoInt));
        if ((_data != null ? _data.length : ((0 : GoInt))) != (((1 : GoInt)) + (((2 : GoInt)) * _byteLen))) {
            return { _0 : null, _1 : null };
        };
        if ((_data != null ? _data[((0 : GoInt))] : ((0 : GoUInt8))) != ((4 : GoUInt8))) {
            return { _0 : null, _1 : null };
        };
        var _p = _curve.params().p;
        _x = new stdgo.math.big.Big.Int_().setBytes(((_data.__slice__(((1 : GoInt)), ((1 : GoInt)) + _byteLen) : Slice<GoUInt8>)));
        _y = new stdgo.math.big.Big.Int_().setBytes(((_data.__slice__(((1 : GoInt)) + _byteLen) : Slice<GoUInt8>)));
        if ((_x.cmp(_p) >= ((0 : GoInt))) || (_y.cmp(_p) >= ((0 : GoInt)))) {
            return { _0 : null, _1 : null };
        };
        if (!_curve.isOnCurve(_x, _y)) {
            return { _0 : null, _1 : null };
        };
        return { _0 : _x, _1 : _y };
    }
/**
    // UnmarshalCompressed converts a point, serialized by MarshalCompressed, into
    // an x, y pair. It is an error if the point is not in compressed form, is not
    // on the curve, or is the point at infinity. On error, x = nil.
**/
function unmarshalCompressed(_curve:Curve, _data:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var _byteLen:GoInt = (_curve.params().bitSize + ((7 : GoInt))) / ((8 : GoInt));
        if ((_data != null ? _data.length : ((0 : GoInt))) != (((1 : GoInt)) + _byteLen)) {
            return { _0 : null, _1 : null };
        };
        if (((_data != null ? _data[((0 : GoInt))] : ((0 : GoUInt8))) != ((2 : GoUInt8))) && ((_data != null ? _data[((0 : GoInt))] : ((0 : GoUInt8))) != ((3 : GoUInt8)))) {
            return { _0 : null, _1 : null };
        };
        var _p = _curve.params().p;
        _x = new stdgo.math.big.Big.Int_().setBytes(((_data.__slice__(((1 : GoInt))) : Slice<GoUInt8>)));
        if (_x.cmp(_p) >= ((0 : GoInt))) {
            return { _0 : null, _1 : null };
        };
        _y = _curve.params()._polynomial(_x);
        _y = _y.modSqrt(_y, _p);
        if (_y == null) {
            return { _0 : null, _1 : null };
        };
        if (((_y.bit(((0 : GoInt))) : GoByte)) != ((_data != null ? _data[((0 : GoInt))] : ((0 : GoUInt8))) & ((1 : GoUInt8)))) {
            _y.neg(_y).mod(_y, _p);
        };
        if (!_curve.isOnCurve(_x, _y)) {
            return { _0 : null, _1 : null };
        };
        return { _0 : _x, _1 : _y };
    }
function _initAll():Void {
        _initP224();
        _initP256();
        _initP384();
        _initP521();
    }
/**
    // P224 returns a Curve which implements NIST P-224 (FIPS 186-3, section D.2.2),
    // also known as secp224r1. The CurveParams.Name of this Curve is "P-224".
    //
    // Multiple invocations of this function will return the same value, so it can
    // be used for equality checks and switch statements.
    //
    // The cryptographic operations are implemented using constant-time algorithms.
**/
function p224():Curve {
        _initonce.do_(_initAll);
        return _p224;
    }
/**
    // P256 returns a Curve which implements NIST P-256 (FIPS 186-3, section D.2.3),
    // also known as secp256r1 or prime256v1. The CurveParams.Name of this Curve is
    // "P-256".
    //
    // Multiple invocations of this function will return the same value, so it can
    // be used for equality checks and switch statements.
    //
    // ScalarMult and ScalarBaseMult are implemented using constant-time algorithms.
**/
function p256():Curve {
        _initonce.do_(_initAll);
        return _p256;
    }
/**
    // P384 returns a Curve which implements NIST P-384 (FIPS 186-3, section D.2.4),
    // also known as secp384r1. The CurveParams.Name of this Curve is "P-384".
    //
    // Multiple invocations of this function will return the same value, so it can
    // be used for equality checks and switch statements.
    //
    // The cryptographic operations are implemented using constant-time algorithms.
**/
function p384():Curve {
        _initonce.do_(_initAll);
        return _p384;
    }
/**
    // P521 returns a Curve which implements NIST P-521 (FIPS 186-3, section D.2.5),
    // also known as secp521r1. The CurveParams.Name of this Curve is "P-521".
    //
    // Multiple invocations of this function will return the same value, so it can
    // be used for equality checks and switch statements.
    //
    // The cryptographic operations are implemented using constant-time algorithms.
**/
function p521():Curve {
        _initonce.do_(_initAll);
        return _p521;
    }
function _initP224():Void {
        _p224._params = (({ name : ((("P-224" : GoString))), bitSize : ((224 : GoInt)), p : _bigFromDecimal(((("26959946667150639794667015087019630673557916260026308143510066298881" : GoString)))), n : _bigFromDecimal(((("26959946667150639794667015087019625940457807714424391721682722368061" : GoString)))), b : _bigFromHex(((("b4050a850c04b3abf54132565044b0b7d7bfd8ba270b39432355ffb4" : GoString)))), gx : _bigFromHex(((("b70e0cbd6bb4bf7f321390b94a03c1d356c21122343280d6115c1d21" : GoString)))), gy : _bigFromHex(((("bd376388b5f723fb4c22dfe6cd4375a05a07476444d5819985007e34" : GoString)))) } : CurveParams));
    }
function _p224PointFromAffine(_x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):{ var _0 : crypto.elliptic.internal.nistec.Nistec.P224Point; var _1 : Bool; } {
        var _p:crypto.elliptic.internal.nistec.Nistec.P224Point = null, _ok:Bool = false;
        if ((_x.sign() == ((0 : GoInt))) && (_y.sign() == ((0 : GoInt)))) {
            return { _0 : crypto.elliptic.internal.nistec.Nistec.newP224Point(), _1 : true };
        };
        if ((_x.sign() < ((0 : GoInt))) || (_y.sign() < ((0 : GoInt)))) {
            return { _0 : null, _1 : false };
        };
        if ((_x.bitLen() > ((224 : GoInt))) || (_y.bitLen() > ((224 : GoInt)))) {
            return { _0 : null, _1 : false };
        };
        var __tmp__ = crypto.elliptic.internal.nistec.Nistec.newP224Point().setBytes(marshal(p224(), _x, _y)), _p:Ref<crypto.elliptic.internal.nistec.Nistec.P224Point> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        return { _0 : _p, _1 : true };
    }
function _p224PointToAffine(_p:crypto.elliptic.internal.nistec.Nistec.P224Point):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var _out = _p.bytes();
        if (((_out != null ? _out.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_out != null ? _out[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : new stdgo.math.big.Big.Int_(), _1 : new stdgo.math.big.Big.Int_() };
        };
        {
            var __tmp__ = unmarshal(p224(), _out);
            _x = __tmp__._0;
            _y = __tmp__._1;
        };
        if (_x == null) {
            throw Go.toInterface(((("crypto/elliptic: internal error: Unmarshal rejected a valid point encoding" : GoString))));
        };
        return { _0 : _x, _1 : _y };
    }
/**
    // p224RandomPoint returns a random point on the curve. It's used when Add,
    // Double, or ScalarMult are fed a point not on the curve, which is undefined
    // behavior. Originally, we used to do the math on it anyway (which allows
    // invalid curve attacks) and relied on the caller and Unmarshal to avoid this
    // happening in the first place. Now, we just can't construct a nistec.P224Point
    // for an invalid pair of coordinates, because that API is safer. If we panic,
    // we risk introducing a DoS. If we return nil, we risk a panic. If we return
    // the input, ecdsa.Verify might fail open. The safest course seems to be to
    // return a valid, random point, which hopefully won't help the attacker.
**/
function _p224RandomPoint():{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var __tmp__ = generateKey(p224(), stdgo.crypto.rand.Rand.reader), _0:Slice<GoUInt8> = __tmp__._0, _x:Ref<stdgo.math.big.Big.Int_> = __tmp__._1, _y:Ref<stdgo.math.big.Big.Int_> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            throw Go.toInterface(((("crypto/elliptic: failed to generate random point" : GoString))));
        };
        return { _0 : _x, _1 : _y };
    }
function _initP256():Void {
        _p256Params = (({ name : ((("P-256" : GoString))), p : null, n : null, b : null, gx : null, gy : null, bitSize : 0 } : CurveParams));
        {
            var __tmp__ = new stdgo.math.big.Big.Int_().setString(((("115792089210356248762697446949407573530086143415290314195533631308867097853951" : GoString))), ((10 : GoInt)));
            _p256Params.p = __tmp__._0;
        };
        {
            var __tmp__ = new stdgo.math.big.Big.Int_().setString(((("115792089210356248762697446949407573529996955224135760342422259061068512044369" : GoString))), ((10 : GoInt)));
            _p256Params.n = __tmp__._0;
        };
        {
            var __tmp__ = new stdgo.math.big.Big.Int_().setString(((("5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b" : GoString))), ((16 : GoInt)));
            _p256Params.b = __tmp__._0;
        };
        {
            var __tmp__ = new stdgo.math.big.Big.Int_().setString(((("6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296" : GoString))), ((16 : GoInt)));
            _p256Params.gx = __tmp__._0;
        };
        {
            var __tmp__ = new stdgo.math.big.Big.Int_().setString(((("4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5" : GoString))), ((16 : GoInt)));
            _p256Params.gy = __tmp__._0;
        };
        _p256Params.bitSize = ((256 : GoInt));
        {
            var __tmp__ = new stdgo.math.big.Big.Int_().setString(((("7fffffff00000001fffffffe8000000100000000ffffffff0000000180000000" : GoString))), ((16 : GoInt)));
            _p256RInverse = __tmp__._0;
        };
        _initP256Arch();
    }
/**
    // p256GetScalar endian-swaps the big-endian scalar value from in and writes it
    // to out. If the scalar is equal or greater than the order of the group, it's
    // reduced modulo that order.
**/
function _p256GetScalar(_out:GoArray<GoByte>, _in:Slice<GoByte>):Void {
        var _n = new stdgo.math.big.Big.Int_().setBytes(_in);
        var _scalarBytes:Slice<GoByte> = ((null : Slice<GoUInt8>));
        if ((_n.cmp(_p256Params.n) >= ((0 : GoInt))) || ((_in != null ? _in.length : ((0 : GoInt))) > (_out != null ? _out.length : ((0 : GoInt))))) {
            _n.mod(_n, _p256Params.n);
            _scalarBytes = _n.bytes();
        } else {
            _scalarBytes = _in;
        };
        for (_i => _v in _scalarBytes) {
            if (_out != null) _out[(_scalarBytes != null ? _scalarBytes.length : ((0 : GoInt))) - (((1 : GoInt)) + _i)] = _v;
        };
    }
/**
    // nonZeroToAllOnes returns:
    //   0xffffffff for 0 < x <= 2**31
    //   0 for x == 0 or x > 2**31.
**/
function _nonZeroToAllOnes(_x:GoUInt32):GoUInt32 {
        return ((_x - ((1 : GoUInt32))) >> ((31 : GoUnTypedInt))) - ((1 : GoUInt32));
    }
/**
    // p256ReduceCarry adds a multiple of p in order to cancel |carry|,
    // which is a term at 2**257.
    //
    // On entry: carry < 2**3, inout[0,2,...] < 2**29, inout[1,3,...] < 2**28.
    // On exit: inout[0,2,..] < 2**30, inout[1,3,...] < 2**29.
**/
function _p256ReduceCarry(_inout:GoArray<GoUInt32>, _carry:GoUInt32):Void {
        var _carry_mask:GoUInt32 = _nonZeroToAllOnes(_carry);
        if (_inout != null) (_inout != null ? _inout[((0 : GoInt))] : ((0 : GoUInt32))) + (_carry << ((1 : GoUnTypedInt)));
        if (_inout != null) (_inout != null ? _inout[((3 : GoInt))] : ((0 : GoUInt32))) + (((268435456 : GoUInt32)) & _carry_mask);
        if (_inout != null) (_inout != null ? _inout[((3 : GoInt))] : ((0 : GoUInt32))) - (_carry << ((11 : GoUnTypedInt)));
        if (_inout != null) (_inout != null ? _inout[((4 : GoInt))] : ((0 : GoUInt32))) + (((536870911 : GoUInt32)) & _carry_mask);
        if (_inout != null) (_inout != null ? _inout[((5 : GoInt))] : ((0 : GoUInt32))) + (((268435455 : GoUInt32)) & _carry_mask);
        if (_inout != null) (_inout != null ? _inout[((6 : GoInt))] : ((0 : GoUInt32))) + (((536870911 : GoUInt32)) & _carry_mask);
        if (_inout != null) (_inout != null ? _inout[((6 : GoInt))] : ((0 : GoUInt32))) - (_carry << ((22 : GoUnTypedInt)));
        if (_inout != null) (_inout != null ? _inout[((7 : GoInt))] : ((0 : GoUInt32))) - (((1 : GoUInt32)) & _carry_mask);
        if (_inout != null) (_inout != null ? _inout[((7 : GoInt))] : ((0 : GoUInt32))) + (_carry << ((25 : GoUnTypedInt)));
    }
/**
    // p256Sum sets out = in+in2.
    //
    // On entry, in[i]+in2[i] must not overflow a 32-bit word.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29
**/
function _p256Sum(_out:GoArray<GoUInt32>, _in:GoArray<GoUInt32>, _in2:GoArray<GoUInt32>):Void {
        var _carry:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                if (_out != null) _out[_i] = (_in != null ? _in[_i] : ((0 : GoUInt32))) + (_in2 != null ? _in2[_i] : ((0 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((29 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
                _i++;
                if (_i == ((9 : GoInt))) {
                    break;
                };
                if (_out != null) _out[_i] = (_in != null ? _in[_i] : ((0 : GoUInt32))) + (_in2 != null ? _in2[_i] : ((0 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((28 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256Diff sets out = in-in2.
    //
    // On entry: in[0,2,...] < 2**30, in[1,3,...] < 2**29 and
    //           in2[0,2,...] < 2**30, in2[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Diff(_out:GoArray<GoUInt32>, _in:GoArray<GoUInt32>, _in2:GoArray<GoUInt32>):Void {
        var _carry:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                if (_out != null) _out[_i] = (_in != null ? _in[_i] : ((0 : GoUInt32))) - (_in2 != null ? _in2[_i] : ((0 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + ((_p256Zero31 != null ? _p256Zero31[_i] : ((0 : GoUInt32))));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((29 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
                _i++;
                if (_i == ((9 : GoInt))) {
                    break;
                };
                if (_out != null) _out[_i] = (_in != null ? _in[_i] : ((0 : GoUInt32))) - (_in2 != null ? _in2[_i] : ((0 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + ((_p256Zero31 != null ? _p256Zero31[_i] : ((0 : GoUInt32))));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((28 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256ReduceDegree sets out = tmp/R mod p where tmp contains 64-bit words with
    // the same 29,28,... bit positions as a field element.
    //
    // The values in field elements are in Montgomery form: x*R mod p where R =
    // 2**257. Since we just multiplied two Montgomery values together, the result
    // is x*y*R*R mod p. We wish to divide by R in order for the result also to be
    // in Montgomery form.
    //
    // On entry: tmp[i] < 2**64
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29
**/
function _p256ReduceDegree(_out:GoArray<GoUInt32>, _tmp:GoArray<GoUInt64>):Void {
        var _tmp2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 18) ((0 : GoUInt32))]);
        var _carry:GoUInt32 = ((0 : GoUInt32)), _x:GoUInt32 = ((0 : GoUInt32)), _xMask:GoUInt32 = ((0 : GoUInt32));
        if (_tmp2 != null) _tmp2[((0 : GoInt))] = (((_tmp != null ? _tmp[((0 : GoInt))] : ((0 : GoUInt64))) : GoUInt32)) & ((536870911 : GoUInt32));
        if (_tmp2 != null) _tmp2[((1 : GoInt))] = (((_tmp != null ? _tmp[((0 : GoInt))] : ((0 : GoUInt64))) : GoUInt32)) >> ((29 : GoUnTypedInt));
        if (_tmp2 != null) (_tmp2 != null ? _tmp2[((1 : GoInt))] : ((0 : GoUInt32))) | ((((((_tmp != null ? _tmp[((0 : GoInt))] : ((0 : GoUInt64))) >> ((32 : GoUnTypedInt))) : GoUInt32)) << ((3 : GoUnTypedInt))) & ((268435455 : GoUInt32)));
        if (_tmp2 != null) (_tmp2 != null ? _tmp2[((1 : GoInt))] : ((0 : GoUInt32))) + ((((_tmp != null ? _tmp[((1 : GoInt))] : ((0 : GoUInt64))) : GoUInt32)) & ((268435455 : GoUInt32)));
        _carry = (_tmp2 != null ? _tmp2[((1 : GoInt))] : ((0 : GoUInt32))) >> ((28 : GoUnTypedInt));
        if (_tmp2 != null) (_tmp2 != null ? _tmp2[((1 : GoInt))] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((17 : GoInt)), _i++, {
                if (_tmp2 != null) _tmp2[_i] = (((((_tmp != null ? _tmp[_i - ((2 : GoInt))] : ((0 : GoUInt64))) >> ((32 : GoUnTypedInt))) : GoUInt32))) >> ((25 : GoUnTypedInt));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) + (((((_tmp != null ? _tmp[_i - ((1 : GoInt))] : ((0 : GoUInt64))) : GoUInt32))) >> ((28 : GoUnTypedInt)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) + ((((((_tmp != null ? _tmp[_i - ((1 : GoInt))] : ((0 : GoUInt64))) >> ((32 : GoUnTypedInt))) : GoUInt32)) << ((4 : GoUnTypedInt))) & ((536870911 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) + ((((_tmp != null ? _tmp[_i] : ((0 : GoUInt64))) : GoUInt32)) & ((536870911 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) >> ((29 : GoUnTypedInt));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
                _i++;
                if (_i == ((17 : GoInt))) {
                    break;
                };
                if (_tmp2 != null) _tmp2[_i] = ((((_tmp != null ? _tmp[_i - ((2 : GoInt))] : ((0 : GoUInt64))) >> ((32 : GoUnTypedInt))) : GoUInt32)) >> ((25 : GoUnTypedInt));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) + ((((_tmp != null ? _tmp[_i - ((1 : GoInt))] : ((0 : GoUInt64))) : GoUInt32)) >> ((29 : GoUnTypedInt)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) + (((((((_tmp != null ? _tmp[_i - ((1 : GoInt))] : ((0 : GoUInt64))) >> ((32 : GoUnTypedInt))) : GoUInt32))) << ((3 : GoUnTypedInt))) & ((268435455 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) + ((((_tmp != null ? _tmp[_i] : ((0 : GoUInt64))) : GoUInt32)) & ((268435455 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) >> ((28 : GoUnTypedInt));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
            });
        };
        if (_tmp2 != null) _tmp2[((17 : GoInt))] = ((((_tmp != null ? _tmp[((15 : GoInt))] : ((0 : GoUInt64))) >> ((32 : GoUnTypedInt))) : GoUInt32)) >> ((25 : GoUnTypedInt));
        if (_tmp2 != null) (_tmp2 != null ? _tmp2[((17 : GoInt))] : ((0 : GoUInt32))) + ((((_tmp != null ? _tmp[((16 : GoInt))] : ((0 : GoUInt64))) : GoUInt32)) >> ((29 : GoUnTypedInt)));
        if (_tmp2 != null) (_tmp2 != null ? _tmp2[((17 : GoInt))] : ((0 : GoUInt32))) + (((((_tmp != null ? _tmp[((16 : GoInt))] : ((0 : GoUInt64))) >> ((32 : GoUnTypedInt))) : GoUInt32)) << ((3 : GoUnTypedInt)));
        if (_tmp2 != null) (_tmp2 != null ? _tmp2[((17 : GoInt))] : ((0 : GoUInt32))) + (_carry);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i = _i + (((2 : GoInt))), {
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((1 : GoInt))] : ((0 : GoUInt32))) + ((_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) >> ((29 : GoUnTypedInt)));
                _x = (_tmp2 != null ? _tmp2[_i] : ((0 : GoUInt32))) & ((536870911 : GoUInt32));
                _xMask = _nonZeroToAllOnes(_x);
                if (_tmp2 != null) _tmp2[_i] = ((0 : GoUInt32));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((3 : GoInt))] : ((0 : GoUInt32))) + ((_x << ((10 : GoUnTypedInt))) & ((268435455 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((4 : GoInt))] : ((0 : GoUInt32))) + ((_x >> ((18 : GoUnTypedInt))));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((6 : GoInt))] : ((0 : GoUInt32))) + ((_x << ((21 : GoUnTypedInt))) & ((536870911 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((7 : GoInt))] : ((0 : GoUInt32))) + (_x >> ((8 : GoUnTypedInt)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((7 : GoInt))] : ((0 : GoUInt32))) + (((268435456 : GoUInt32)) & _xMask);
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((8 : GoInt))] : ((0 : GoUInt32))) + ((_x - ((1 : GoUInt32))) & _xMask);
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((7 : GoInt))] : ((0 : GoUInt32))) - ((_x << ((24 : GoUnTypedInt))) & ((268435455 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((8 : GoInt))] : ((0 : GoUInt32))) - (_x >> ((4 : GoUnTypedInt)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((8 : GoInt))] : ((0 : GoUInt32))) + (((536870912 : GoUInt32)) & _xMask);
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((8 : GoInt))] : ((0 : GoUInt32))) - (_x);
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((8 : GoInt))] : ((0 : GoUInt32))) + ((_x << ((28 : GoUnTypedInt))) & ((536870911 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((9 : GoInt))] : ((0 : GoUInt32))) + (((_x >> ((1 : GoUnTypedInt))) - ((1 : GoUInt32))) & _xMask);
                if ((_i + ((1 : GoInt))) == ((9 : GoInt))) {
                    break;
                };
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((2 : GoInt))] : ((0 : GoUInt32))) + ((_tmp2 != null ? _tmp2[_i + ((1 : GoInt))] : ((0 : GoUInt32))) >> ((28 : GoUnTypedInt)));
                _x = (_tmp2 != null ? _tmp2[_i + ((1 : GoInt))] : ((0 : GoUInt32))) & ((268435455 : GoUInt32));
                _xMask = _nonZeroToAllOnes(_x);
                if (_tmp2 != null) _tmp2[_i + ((1 : GoInt))] = ((0 : GoUInt32));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((4 : GoInt))] : ((0 : GoUInt32))) + ((_x << ((11 : GoUnTypedInt))) & ((536870911 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((5 : GoInt))] : ((0 : GoUInt32))) + ((_x >> ((18 : GoUnTypedInt))));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((7 : GoInt))] : ((0 : GoUInt32))) + ((_x << ((21 : GoUnTypedInt))) & ((268435455 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((8 : GoInt))] : ((0 : GoUInt32))) + (_x >> ((7 : GoUnTypedInt)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((8 : GoInt))] : ((0 : GoUInt32))) + (((536870912 : GoUInt32)) & _xMask);
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((9 : GoInt))] : ((0 : GoUInt32))) + ((_x - ((1 : GoUInt32))) & _xMask);
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((8 : GoInt))] : ((0 : GoUInt32))) - ((_x << ((25 : GoUnTypedInt))) & ((536870911 : GoUInt32)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((9 : GoInt))] : ((0 : GoUInt32))) - (_x >> ((4 : GoUnTypedInt)));
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((9 : GoInt))] : ((0 : GoUInt32))) + (((268435456 : GoUInt32)) & _xMask);
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((9 : GoInt))] : ((0 : GoUInt32))) - (_x);
                if (_tmp2 != null) (_tmp2 != null ? _tmp2[_i + ((10 : GoInt))] : ((0 : GoUInt32))) + ((_x - ((1 : GoUInt32))) & _xMask);
            });
        };
        _carry = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                if (_out != null) _out[_i] = (_tmp2 != null ? _tmp2[_i + ((9 : GoInt))] : ((0 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (((_tmp2 != null ? _tmp2[_i + ((10 : GoInt))] : ((0 : GoUInt32))) << ((28 : GoUnTypedInt))) & ((536870911 : GoUInt32)));
                _carry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((29 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
                _i++;
                if (_out != null) _out[_i] = (_tmp2 != null ? _tmp2[_i + ((9 : GoInt))] : ((0 : GoUInt32))) >> ((1 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((28 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
            });
        };
        if (_out != null) _out[((8 : GoInt))] = (_tmp2 != null ? _tmp2[((17 : GoInt))] : ((0 : GoUInt32)));
        if (_out != null) (_out != null ? _out[((8 : GoInt))] : ((0 : GoUInt32))) + (_carry);
        _carry = (_out != null ? _out[((8 : GoInt))] : ((0 : GoUInt32))) >> ((29 : GoUnTypedInt));
        if (_out != null) (_out != null ? _out[((8 : GoInt))] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256Square sets out=in*in.
    //
    // On entry: in[0,2,...] < 2**30, in[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Square(_out:GoArray<GoUInt32>, _in:GoArray<GoUInt32>):Void {
        var _tmp:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 17) ((0 : GoUInt64))]);
        if (_tmp != null) _tmp[((0 : GoInt))] = (((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * (((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64));
        if (_tmp != null) _tmp[((1 : GoInt))] = (((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)));
        if (_tmp != null) _tmp[((2 : GoInt))] = ((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((3 : GoInt))] = ((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((4 : GoInt))] = (((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((2 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * (((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)));
        if (_tmp != null) _tmp[((5 : GoInt))] = (((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((6 : GoInt))] = ((((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((2 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((7 : GoInt))] = ((((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((8 : GoInt))] = (((((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((2 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((2 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * (((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)));
        if (_tmp != null) _tmp[((9 : GoInt))] = ((((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((10 : GoInt))] = ((((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((2 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((11 : GoInt))] = (((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((12 : GoInt))] = (((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((2 : GoUnTypedInt))))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * (((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)));
        if (_tmp != null) _tmp[((13 : GoInt))] = ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((14 : GoInt))] = ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((15 : GoInt))] = (((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt)));
        if (_tmp != null) _tmp[((16 : GoInt))] = (((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * (((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64));
        _p256ReduceDegree(_out, (_tmp == null ? null : _tmp.__copy__()));
    }
/**
    // p256Mul sets out=in*in2.
    //
    // On entry: in[0,2,...] < 2**30, in[1,3,...] < 2**29 and
    //           in2[0,2,...] < 2**30, in2[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Mul(_out:GoArray<GoUInt32>, _in:GoArray<GoUInt32>, _in2:GoArray<GoUInt32>):Void {
        var _tmp:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 17) ((0 : GoUInt64))]);
        if (_tmp != null) _tmp[((0 : GoInt))] = (((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * (((_in2 != null ? _in2[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64));
        if (_tmp != null) _tmp[((1 : GoInt))] = ((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((2 : GoInt))] = (((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((3 : GoInt))] = ((((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((4 : GoInt))] = (((((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((5 : GoInt))] = ((((((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((6 : GoInt))] = (((((((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((7 : GoInt))] = ((((((((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((8 : GoInt))] = (((((((((((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((0 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((9 : GoInt))] = ((((((((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((1 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((10 : GoInt))] = (((((((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((2 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((11 : GoInt))] = ((((((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((3 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((12 : GoInt))] = (((((((_in != null ? _in[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((4 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((13 : GoInt))] = ((((((_in != null ? _in[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))))) + ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((5 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((14 : GoInt))] = (((((_in != null ? _in[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((1 : GoUnTypedInt))))) + ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((6 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((15 : GoInt))] = ((((_in != null ? _in[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((7 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt))));
        if (_tmp != null) _tmp[((16 : GoInt))] = (((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) * ((((_in2 != null ? _in2[((8 : GoInt))] : ((0 : GoUInt32))) : GoUInt64)) << ((0 : GoUnTypedInt)));
        _p256ReduceDegree(_out, (_tmp == null ? null : _tmp.__copy__()));
    }
function _p256Assign(_out:GoArray<GoUInt32>, _in:GoArray<GoUInt32>):Void {
        _out = (_in == null ? null : _in.__copy__());
    }
/**
    // p256Invert calculates |out| = |in|^{-1}
    //
    // Based on Fermat's Little Theorem:
    //   a^p = a (mod p)
    //   a^{p-1} = 1 (mod p)
    //   a^{p-2} = a^{-1} (mod p)
**/
function _p256Invert(_out:GoArray<GoUInt32>, _in:GoArray<GoUInt32>):Void {
        var _ftmp:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _ftmp2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        var _e2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e4:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e8:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e16:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e32:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e64:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Square(_ftmp, _in);
        _p256Mul(_ftmp, _in, _ftmp);
        _p256Assign(_e2, _ftmp);
        _p256Square(_ftmp, _ftmp);
        _p256Square(_ftmp, _ftmp);
        _p256Mul(_ftmp, _ftmp, _e2);
        _p256Assign(_e4, _ftmp);
        _p256Square(_ftmp, _ftmp);
        _p256Square(_ftmp, _ftmp);
        _p256Square(_ftmp, _ftmp);
        _p256Square(_ftmp, _ftmp);
        _p256Mul(_ftmp, _ftmp, _e4);
        _p256Assign(_e8, _ftmp);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _p256Square(_ftmp, _ftmp);
            });
        };
        _p256Mul(_ftmp, _ftmp, _e8);
        _p256Assign(_e16, _ftmp);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                _p256Square(_ftmp, _ftmp);
            });
        };
        _p256Mul(_ftmp, _ftmp, _e16);
        _p256Assign(_e32, _ftmp);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((32 : GoInt)), _i++, {
                _p256Square(_ftmp, _ftmp);
            });
        };
        _p256Assign(_e64, _ftmp);
        _p256Mul(_ftmp, _ftmp, _in);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((192 : GoInt)), _i++, {
                _p256Square(_ftmp, _ftmp);
            });
        };
        _p256Mul(_ftmp2, _e64, _e32);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                _p256Square(_ftmp2, _ftmp2);
            });
        };
        _p256Mul(_ftmp2, _ftmp2, _e16);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _p256Square(_ftmp2, _ftmp2);
            });
        };
        _p256Mul(_ftmp2, _ftmp2, _e8);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((4 : GoInt)), _i++, {
                _p256Square(_ftmp2, _ftmp2);
            });
        };
        _p256Mul(_ftmp2, _ftmp2, _e4);
        _p256Square(_ftmp2, _ftmp2);
        _p256Square(_ftmp2, _ftmp2);
        _p256Mul(_ftmp2, _ftmp2, _e2);
        _p256Square(_ftmp2, _ftmp2);
        _p256Square(_ftmp2, _ftmp2);
        _p256Mul(_ftmp2, _ftmp2, _in);
        _p256Mul(_out, _ftmp2, _ftmp);
    }
/**
    // p256Scalar3 sets out=3*out.
    //
    // On entry: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Scalar3(_out:GoArray<GoUInt32>):Void {
        var _carry:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) * (((3 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((29 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
                _i++;
                if (_i == ((9 : GoInt))) {
                    break;
                };
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) * (((3 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((28 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256Scalar4 sets out=4*out.
    //
    // On entry: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Scalar4(_out:GoArray<GoUInt32>):Void {
        var _carry:GoUInt32 = ((0 : GoUInt32)), _nextCarry:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                _nextCarry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((27 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) << (((2 : GoUnTypedInt)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = _nextCarry + ((_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((29 : GoUnTypedInt)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
                _i++;
                if (_i == ((9 : GoInt))) {
                    break;
                };
                _nextCarry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((26 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) << (((2 : GoUnTypedInt)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = _nextCarry + ((_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((28 : GoUnTypedInt)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256Scalar8 sets out=8*out.
    //
    // On entry: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Scalar8(_out:GoArray<GoUInt32>):Void {
        var _carry:GoUInt32 = ((0 : GoUInt32)), _nextCarry:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                _nextCarry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((26 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) << (((3 : GoUnTypedInt)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = _nextCarry + ((_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((29 : GoUnTypedInt)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((536870911 : GoUInt32)));
                _i++;
                if (_i == ((9 : GoInt))) {
                    break;
                };
                _nextCarry = (_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((25 : GoUnTypedInt));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) << (((3 : GoUnTypedInt)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) + (_carry);
                _carry = _nextCarry + ((_out != null ? _out[_i] : ((0 : GoUInt32))) >> ((28 : GoUnTypedInt)));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) & (((268435455 : GoUInt32)));
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256PointDouble sets {xOut,yOut,zOut} = 2*{x,y,z}.
    //
    // See https://www.hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-0.html#doubling-dbl-2009-l
**/
function _p256PointDouble(_xOut:GoArray<GoUInt32>, _yOut:GoArray<GoUInt32>, _zOut:GoArray<GoUInt32>, _x:GoArray<GoUInt32>, _y:GoArray<GoUInt32>, _z:GoArray<GoUInt32>):Void {
        var _delta:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _gamma:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _alpha:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _beta:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tmp:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tmp2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Square(_delta, _z);
        _p256Square(_gamma, _y);
        _p256Mul(_beta, _x, _gamma);
        _p256Sum(_tmp, _x, _delta);
        _p256Diff(_tmp2, _x, _delta);
        _p256Mul(_alpha, _tmp, _tmp2);
        _p256Scalar3(_alpha);
        _p256Sum(_tmp, _y, _z);
        _p256Square(_tmp, _tmp);
        _p256Diff(_tmp, _tmp, _gamma);
        _p256Diff(_zOut, _tmp, _delta);
        _p256Scalar4(_beta);
        _p256Square(_xOut, _alpha);
        _p256Diff(_xOut, _xOut, _beta);
        _p256Diff(_xOut, _xOut, _beta);
        _p256Diff(_tmp, _beta, _xOut);
        _p256Mul(_tmp, _alpha, _tmp);
        _p256Square(_tmp2, _gamma);
        _p256Scalar8(_tmp2);
        _p256Diff(_yOut, _tmp, _tmp2);
    }
/**
    // p256PointAddMixed sets {xOut,yOut,zOut} = {x1,y1,z1} + {x2,y2,1}.
    // (i.e. the second point is affine.)
    //
    // See https://www.hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-0.html#addition-add-2007-bl
    //
    // Note that this function does not handle P+P, infinity+P nor P+infinity
    // correctly.
**/
function _p256PointAddMixed(_xOut:GoArray<GoUInt32>, _yOut:GoArray<GoUInt32>, _zOut:GoArray<GoUInt32>, _x1:GoArray<GoUInt32>, _y1:GoArray<GoUInt32>, _z1:GoArray<GoUInt32>, _x2:GoArray<GoUInt32>, _y2:GoArray<GoUInt32>):Void {
        var _z1z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z1z1z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _s2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _u2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _h:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _i:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _j:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _r:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _rr:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _v:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tmp:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Square(_z1z1, _z1);
        _p256Sum(_tmp, _z1, _z1);
        _p256Mul(_u2, _x2, _z1z1);
        _p256Mul(_z1z1z1, _z1, _z1z1);
        _p256Mul(_s2, _y2, _z1z1z1);
        _p256Diff(_h, _u2, _x1);
        _p256Sum(_i, _h, _h);
        _p256Square(_i, _i);
        _p256Mul(_j, _h, _i);
        _p256Diff(_r, _s2, _y1);
        _p256Sum(_r, _r, _r);
        _p256Mul(_v, _x1, _i);
        _p256Mul(_zOut, _tmp, _h);
        _p256Square(_rr, _r);
        _p256Diff(_xOut, _rr, _j);
        _p256Diff(_xOut, _xOut, _v);
        _p256Diff(_xOut, _xOut, _v);
        _p256Diff(_tmp, _v, _xOut);
        _p256Mul(_yOut, _tmp, _r);
        _p256Mul(_tmp, _y1, _j);
        _p256Diff(_yOut, _yOut, _tmp);
        _p256Diff(_yOut, _yOut, _tmp);
    }
/**
    // p256PointAdd sets {xOut,yOut,zOut} = {x1,y1,z1} + {x2,y2,z2}.
    //
    // See https://www.hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-0.html#addition-add-2007-bl
    //
    // Note that this function does not handle P+P, infinity+P nor P+infinity
    // correctly.
**/
function _p256PointAdd(_xOut:GoArray<GoUInt32>, _yOut:GoArray<GoUInt32>, _zOut:GoArray<GoUInt32>, _x1:GoArray<GoUInt32>, _y1:GoArray<GoUInt32>, _z1:GoArray<GoUInt32>, _x2:GoArray<GoUInt32>, _y2:GoArray<GoUInt32>, _z2:GoArray<GoUInt32>):Void {
        var _z1z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z1z1z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z2z2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z2z2z2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _s1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _s2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _u1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _u2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _h:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _i:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _j:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _r:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _rr:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _v:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tmp:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Square(_z1z1, _z1);
        _p256Square(_z2z2, _z2);
        _p256Mul(_u1, _x1, _z2z2);
        _p256Sum(_tmp, _z1, _z2);
        _p256Square(_tmp, _tmp);
        _p256Diff(_tmp, _tmp, _z1z1);
        _p256Diff(_tmp, _tmp, _z2z2);
        _p256Mul(_z2z2z2, _z2, _z2z2);
        _p256Mul(_s1, _y1, _z2z2z2);
        _p256Mul(_u2, _x2, _z1z1);
        _p256Mul(_z1z1z1, _z1, _z1z1);
        _p256Mul(_s2, _y2, _z1z1z1);
        _p256Diff(_h, _u2, _u1);
        _p256Sum(_i, _h, _h);
        _p256Square(_i, _i);
        _p256Mul(_j, _h, _i);
        _p256Diff(_r, _s2, _s1);
        _p256Sum(_r, _r, _r);
        _p256Mul(_v, _u1, _i);
        _p256Mul(_zOut, _tmp, _h);
        _p256Square(_rr, _r);
        _p256Diff(_xOut, _rr, _j);
        _p256Diff(_xOut, _xOut, _v);
        _p256Diff(_xOut, _xOut, _v);
        _p256Diff(_tmp, _v, _xOut);
        _p256Mul(_yOut, _tmp, _r);
        _p256Mul(_tmp, _s1, _j);
        _p256Diff(_yOut, _yOut, _tmp);
        _p256Diff(_yOut, _yOut, _tmp);
    }
/**
    // p256CopyConditional sets out=in if mask = 0xffffffff in constant time.
    //
    // On entry: mask is either 0 or 0xffffffff.
**/
function _p256CopyConditional(_out:GoArray<GoUInt32>, _in:GoArray<GoUInt32>, _mask:GoUInt32):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((9 : GoInt)), _i++, {
                var _tmp:GoUInt32 = _mask & ((_in != null ? _in[_i] : ((0 : GoUInt32))) ^ (_out != null ? _out[_i] : ((0 : GoUInt32))));
                if (_out != null) (_out != null ? _out[_i] : ((0 : GoUInt32))) ^ (_tmp);
            });
        };
    }
/**
    // p256SelectAffinePoint sets {out_x,out_y} to the index'th entry of table.
    // On entry: index < 16, table[0] must be zero.
**/
function _p256SelectAffinePoint(_xOut:GoArray<GoUInt32>, _yOut:GoArray<GoUInt32>, _table:Slice<GoUInt32>, _index:GoUInt32):Void {
        for (_i => _ in _xOut) {
            if (_xOut != null) _xOut[_i] = ((0 : GoUInt32));
        };
        for (_i => _ in _yOut) {
            if (_yOut != null) _yOut[_i] = ((0 : GoUInt32));
        };
        {
            var _i:GoUInt32 = ((((1 : GoUInt32)) : GoUInt32));
            Go.cfor(_i < ((16 : GoUInt32)), _i++, {
                var _mask:GoUInt32 = _i ^ _index;
                _mask = _mask | (_mask >> ((2 : GoUnTypedInt)));
                _mask = _mask | (_mask >> ((1 : GoUnTypedInt)));
                _mask = _mask & (((1 : GoUInt32)));
                _mask--;
                for (_j => _ in _xOut) {
                    if (_xOut != null) (_xOut != null ? _xOut[_j] : ((0 : GoUInt32))) | ((_table != null ? _table[((0 : GoInt))] : ((0 : GoUInt32))) & _mask);
                    _table = ((_table.__slice__(((1 : GoInt))) : Slice<GoUInt32>));
                };
                for (_j => _ in _yOut) {
                    if (_yOut != null) (_yOut != null ? _yOut[_j] : ((0 : GoUInt32))) | ((_table != null ? _table[((0 : GoInt))] : ((0 : GoUInt32))) & _mask);
                    _table = ((_table.__slice__(((1 : GoInt))) : Slice<GoUInt32>));
                };
            });
        };
    }
/**
    // p256SelectJacobianPoint sets {out_x,out_y,out_z} to the index'th entry of
    // table.
    // On entry: index < 16, table[0] must be zero.
**/
function _p256SelectJacobianPoint(_xOut:GoArray<GoUInt32>, _yOut:GoArray<GoUInt32>, _zOut:GoArray<GoUInt32>, _table:GoArray<GoArray<GoArray<GoUInt32>>>, _index:GoUInt32):Void {
        for (_i => _ in _xOut) {
            if (_xOut != null) _xOut[_i] = ((0 : GoUInt32));
        };
        for (_i => _ in _yOut) {
            if (_yOut != null) _yOut[_i] = ((0 : GoUInt32));
        };
        for (_i => _ in _zOut) {
            if (_zOut != null) _zOut[_i] = ((0 : GoUInt32));
        };
        {
            var _i:GoUInt32 = ((((1 : GoUInt32)) : GoUInt32));
            Go.cfor(_i < ((16 : GoUInt32)), _i++, {
                var _mask:GoUInt32 = _i ^ _index;
                _mask = _mask | (_mask >> ((2 : GoUnTypedInt)));
                _mask = _mask | (_mask >> ((1 : GoUnTypedInt)));
                _mask = _mask & (((1 : GoUInt32)));
                _mask--;
                for (_j => _ in _xOut) {
                    if (_xOut != null) (_xOut != null ? _xOut[_j] : ((0 : GoUInt32))) | ((((_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])) != null ? ((_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]))[_j] : ((0 : GoUInt32))) & _mask);
                };
                for (_j => _ in _yOut) {
                    if (_yOut != null) (_yOut != null ? _yOut[_j] : ((0 : GoUInt32))) | ((((_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])) != null ? ((_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]))[_j] : ((0 : GoUInt32))) & _mask);
                };
                for (_j => _ in _zOut) {
                    if (_zOut != null) (_zOut != null ? _zOut[_j] : ((0 : GoUInt32))) | ((((_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])) != null ? ((_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_table != null ? _table[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]))[_j] : ((0 : GoUInt32))) & _mask);
                };
            });
        };
    }
/**
    // p256GetBit returns the bit'th bit of scalar.
**/
function _p256GetBit(_scalar:GoArray<GoUInt8>, _bit:GoUInt):GoUInt32 {
        return ((((((_scalar != null ? _scalar[_bit >> ((3 : GoUnTypedInt))] : ((0 : GoUInt8)))) >> (_bit & ((7 : GoUInt)))) & ((1 : GoUInt8))) : GoUInt32));
    }
/**
    // p256ScalarBaseMult sets {xOut,yOut,zOut} = scalar*G where scalar is a
    // little-endian number. Note that the value of scalar must be less than the
    // order of the group.
**/
function _p256ScalarBaseMult(_xOut:GoArray<GoUInt32>, _yOut:GoArray<GoUInt32>, _zOut:GoArray<GoUInt32>, _scalar:GoArray<GoUInt8>):Void {
        var _nIsInfinityMask:GoUInt32 = (("4294967295" : GoUInt32));
        var _pIsNoninfiniteMask:GoUInt32 = ((0 : GoUInt32)), _mask:GoUInt32 = ((0 : GoUInt32)), _tableOffset:GoUInt32 = ((0 : GoUInt32));
        var _px:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _py:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tx:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _ty:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tz:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        for (_i => _ in _xOut) {
            if (_xOut != null) _xOut[_i] = ((0 : GoUInt32));
        };
        for (_i => _ in _yOut) {
            if (_yOut != null) _yOut[_i] = ((0 : GoUInt32));
        };
        for (_i => _ in _zOut) {
            if (_zOut != null) _zOut[_i] = ((0 : GoUInt32));
        };
        {
            var _i:GoUInt = ((((0 : GoUInt)) : GoUInt));
            Go.cfor(_i < ((32 : GoUInt)), _i++, {
                if (_i != ((0 : GoUInt))) {
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                };
                _tableOffset = ((0 : GoUInt32));
                {
                    var _j:GoUInt = ((((0 : GoUInt)) : GoUInt));
                    Go.cfor(_j <= ((32 : GoUInt)), _j = _j + (((32 : GoUInt))), {
                        var _bit0:GoUInt32 = _p256GetBit(_scalar, (((31 : GoUInt)) - _i) + _j);
                        var _bit1:GoUInt32 = _p256GetBit(_scalar, (((95 : GoUInt)) - _i) + _j);
                        var _bit2:GoUInt32 = _p256GetBit(_scalar, (((159 : GoUInt)) - _i) + _j);
                        var _bit3:GoUInt32 = _p256GetBit(_scalar, (((223 : GoUInt)) - _i) + _j);
                        var _index:GoUInt32 = ((_bit0 | (_bit1 << ((1 : GoUnTypedInt)))) | (_bit2 << ((2 : GoUnTypedInt)))) | (_bit3 << ((3 : GoUnTypedInt)));
                        _p256SelectAffinePoint(_px, _py, ((_p256Precomputed.__slice__(_tableOffset) : Slice<GoUInt32>)), _index);
                        _tableOffset = _tableOffset + (((270 : GoUInt32)));
                        _p256PointAddMixed(_tx, _ty, _tz, _xOut, _yOut, _zOut, _px, _py);
                        _p256CopyConditional(_xOut, _px, _nIsInfinityMask);
                        _p256CopyConditional(_yOut, _py, _nIsInfinityMask);
                        _p256CopyConditional(_zOut, _p256One, _nIsInfinityMask);
                        _pIsNoninfiniteMask = _nonZeroToAllOnes(_index);
                        _mask = _pIsNoninfiniteMask & (-1 ^ _nIsInfinityMask);
                        _p256CopyConditional(_xOut, _tx, _mask);
                        _p256CopyConditional(_yOut, _ty, _mask);
                        _p256CopyConditional(_zOut, _tz, _mask);
                        _nIsInfinityMask = _nIsInfinityMask & ((_pIsNoninfiniteMask) ^ ((-1 : GoUnTypedInt)));
                    });
                };
            });
        };
    }
/**
    // p256PointToAffine converts a Jacobian point to an affine point. If the input
    // is the point at infinity then it returns (0, 0) in constant time.
**/
function _p256PointToAffine(_xOut:GoArray<GoUInt32>, _yOut:GoArray<GoUInt32>, _x:GoArray<GoUInt32>, _y:GoArray<GoUInt32>, _z:GoArray<GoUInt32>):Void {
        var _zInv:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _zInvSq:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Invert(_zInv, _z);
        _p256Square(_zInvSq, _zInv);
        _p256Mul(_xOut, _x, _zInvSq);
        _p256Mul(_zInv, _zInv, _zInvSq);
        _p256Mul(_yOut, _y, _zInv);
    }
/**
    // p256ToAffine returns a pair of *big.Int containing the affine representation
    // of {x,y,z}.
**/
function _p256ToAffine(_x:GoArray<GoUInt32>, _y:GoArray<GoUInt32>, _z:GoArray<GoUInt32>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _xOut:stdgo.math.big.Big.Int_ = null, _yOut:stdgo.math.big.Big.Int_ = null;
        var _xx:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _yy:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256PointToAffine(_xx, _yy, _x, _y, _z);
        return { _0 : _p256ToBig(_xx), _1 : _p256ToBig(_yy) };
    }
/**
    // p256ScalarMult sets {xOut,yOut,zOut} = scalar*{x,y}.
**/
function _p256ScalarMult(_xOut:GoArray<GoUInt32>, _yOut:GoArray<GoUInt32>, _zOut:GoArray<GoUInt32>, _x:GoArray<GoUInt32>, _y:GoArray<GoUInt32>, _scalar:GoArray<GoUInt8>):Void {
        var _px:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _py:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _pz:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tx:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _ty:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tz:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        var _precomp:GoArray<GoArray<GoArray<GoUInt32>>> = new GoArray<GoArray<GoArray<GoUInt32>>>(...[for (i in 0 ... 16) new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])]);
        var _nIsInfinityMask:GoUInt32 = ((0 : GoUInt32)), _index:GoUInt32 = ((0 : GoUInt32)), _pIsNoninfiniteMask:GoUInt32 = ((0 : GoUInt32)), _mask:GoUInt32 = ((0 : GoUInt32));
        if ((_precomp != null ? _precomp[((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null) (_precomp != null ? _precomp[((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((0 : GoInt))] = (_x == null ? null : _x.__copy__());
        if ((_precomp != null ? _precomp[((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null) (_precomp != null ? _precomp[((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((1 : GoInt))] = (_y == null ? null : _y.__copy__());
        if ((_precomp != null ? _precomp[((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null) (_precomp != null ? _precomp[((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((2 : GoInt))] = (_p256One == null ? null : _p256One.__copy__());
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i = _i + (((2 : GoInt))), {
                _p256PointDouble(((_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i / ((2 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i / ((2 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i / ((2 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i / ((2 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i / ((2 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i / ((2 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])));
                _p256PointAddMixed(((_precomp != null ? _precomp[_i + ((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i + ((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i + ((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i + ((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i + ((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i + ((1 : GoInt))] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), ((_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])) != null ? (_precomp != null ? _precomp[_i] : new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])]))[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])), _x, _y);
            });
        };
        for (_i => _ in _xOut) {
            if (_xOut != null) _xOut[_i] = ((0 : GoUInt32));
        };
        for (_i => _ in _yOut) {
            if (_yOut != null) _yOut[_i] = ((0 : GoUInt32));
        };
        for (_i => _ in _zOut) {
            if (_zOut != null) _zOut[_i] = ((0 : GoUInt32));
        };
        _nIsInfinityMask = (("4294967295" : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((64 : GoInt)), _i++, {
                if (_i != ((0 : GoInt))) {
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                };
                _index = (((_scalar != null ? _scalar[((31 : GoInt)) - (_i / ((2 : GoInt)))] : ((0 : GoUInt8))) : GoUInt32));
                if ((_i & ((1 : GoInt))) == ((1 : GoInt))) {
                    _index = _index & (((15 : GoUInt32)));
                } else {
                    _index = _index >> (((4 : GoUnTypedInt)));
                };
                _p256SelectJacobianPoint(_px, _py, _pz, _precomp, _index);
                _p256PointAdd(_tx, _ty, _tz, _xOut, _yOut, _zOut, _px, _py, _pz);
                _p256CopyConditional(_xOut, _px, _nIsInfinityMask);
                _p256CopyConditional(_yOut, _py, _nIsInfinityMask);
                _p256CopyConditional(_zOut, _pz, _nIsInfinityMask);
                _pIsNoninfiniteMask = _nonZeroToAllOnes(_index);
                _mask = _pIsNoninfiniteMask & (-1 ^ _nIsInfinityMask);
                _p256CopyConditional(_xOut, _tx, _mask);
                _p256CopyConditional(_yOut, _ty, _mask);
                _p256CopyConditional(_zOut, _tz, _mask);
                _nIsInfinityMask = _nIsInfinityMask & ((_pIsNoninfiniteMask) ^ ((-1 : GoUnTypedInt)));
            });
        };
    }
/**
    // p256FromBig sets out = R*in.
**/
function _p256FromBig(_out:GoArray<GoUInt32>, _in:stdgo.math.big.Big.Int_):Void {
        var _tmp = new stdgo.math.big.Big.Int_().lsh(_in, ((257 : GoUInt)));
        _tmp.mod(_tmp, _p256Params.p);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((9 : GoInt)), _i++, {
                {
                    var _bits = _tmp.bits();
                    if ((_bits != null ? _bits.length : ((0 : GoInt))) > ((0 : GoInt))) {
                        if (_out != null) _out[_i] = (((_bits != null ? _bits[((0 : GoInt))] : new stdgo.math.big.Big.Word()) : GoUInt32)) & ((536870911 : GoUInt32));
                    } else {
                        if (_out != null) _out[_i] = ((0 : GoUInt32));
                    };
                };
                _tmp.rsh(_tmp, ((29 : GoUInt)));
                _i++;
                if (_i == ((9 : GoInt))) {
                    break;
                };
                {
                    var _bits = _tmp.bits();
                    if ((_bits != null ? _bits.length : ((0 : GoInt))) > ((0 : GoInt))) {
                        if (_out != null) _out[_i] = (((_bits != null ? _bits[((0 : GoInt))] : new stdgo.math.big.Big.Word()) : GoUInt32)) & ((268435455 : GoUInt32));
                    } else {
                        if (_out != null) _out[_i] = ((0 : GoUInt32));
                    };
                };
                _tmp.rsh(_tmp, ((28 : GoUInt)));
            });
        };
    }
/**
    // p256ToBig returns a *big.Int containing the value of in.
**/
function _p256ToBig(_in:GoArray<GoUInt32>):stdgo.math.big.Big.Int_ {
        var _result = new stdgo.math.big.Big.Int_(), _tmp = new stdgo.math.big.Big.Int_();
        _result.setInt64((((_in != null ? _in[((8 : GoInt))] : ((0 : GoUInt32))) : GoInt64)));
        {
            var _i:GoInt = ((7 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if ((_i & ((1 : GoInt))) == ((0 : GoInt))) {
                    _result.lsh(_result, ((29 : GoUInt)));
                } else {
                    _result.lsh(_result, ((28 : GoUInt)));
                };
                _tmp.setInt64((((_in != null ? _in[_i] : ((0 : GoUInt32))) : GoInt64)));
                _result.add(_result, _tmp);
            });
        };
        _result.mul(_result, _p256RInverse);
        _result.mod(_result, _p256Params.p);
        return _result;
    }
function _initP256Arch():Void {
        _p256 = ((new T_p256Curve(_p256Params) : T_p256Curve));
    }
function _initP384():Void {
        _p384._params = (({ name : ((("P-384" : GoString))), bitSize : ((384 : GoInt)), p : _bigFromDecimal(((("39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319" : GoString)))), n : _bigFromDecimal(((("39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643" : GoString)))), b : _bigFromHex(((("b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef" : GoString)))), gx : _bigFromHex(((("aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7" : GoString)))), gy : _bigFromHex(((("3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f" : GoString)))) } : CurveParams));
    }
function _p384PointFromAffine(_x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):{ var _0 : crypto.elliptic.internal.nistec.Nistec.P384Point; var _1 : Bool; } {
        var _p:crypto.elliptic.internal.nistec.Nistec.P384Point = null, _ok:Bool = false;
        if ((_x.sign() == ((0 : GoInt))) && (_y.sign() == ((0 : GoInt)))) {
            return { _0 : crypto.elliptic.internal.nistec.Nistec.newP384Point(), _1 : true };
        };
        if ((_x.sign() < ((0 : GoInt))) || (_y.sign() < ((0 : GoInt)))) {
            return { _0 : null, _1 : false };
        };
        if ((_x.bitLen() > ((384 : GoInt))) || (_y.bitLen() > ((384 : GoInt)))) {
            return { _0 : null, _1 : false };
        };
        var __tmp__ = crypto.elliptic.internal.nistec.Nistec.newP384Point().setBytes(marshal(p384(), _x, _y)), _p:Ref<crypto.elliptic.internal.nistec.Nistec.P384Point> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        return { _0 : _p, _1 : true };
    }
function _p384PointToAffine(_p:crypto.elliptic.internal.nistec.Nistec.P384Point):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var _out = _p.bytes();
        if (((_out != null ? _out.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_out != null ? _out[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : new stdgo.math.big.Big.Int_(), _1 : new stdgo.math.big.Big.Int_() };
        };
        {
            var __tmp__ = unmarshal(p384(), _out);
            _x = __tmp__._0;
            _y = __tmp__._1;
        };
        if (_x == null) {
            throw Go.toInterface(((("crypto/elliptic: internal error: Unmarshal rejected a valid point encoding" : GoString))));
        };
        return { _0 : _x, _1 : _y };
    }
/**
    // p384RandomPoint returns a random point on the curve. It's used when Add,
    // Double, or ScalarMult are fed a point not on the curve, which is undefined
    // behavior. Originally, we used to do the math on it anyway (which allows
    // invalid curve attacks) and relied on the caller and Unmarshal to avoid this
    // happening in the first place. Now, we just can't construct a nistec.P384Point
    // for an invalid pair of coordinates, because that API is safer. If we panic,
    // we risk introducing a DoS. If we return nil, we risk a panic. If we return
    // the input, ecdsa.Verify might fail open. The safest course seems to be to
    // return a valid, random point, which hopefully won't help the attacker.
**/
function _p384RandomPoint():{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var __tmp__ = generateKey(p384(), stdgo.crypto.rand.Rand.reader), _0:Slice<GoUInt8> = __tmp__._0, _x:Ref<stdgo.math.big.Big.Int_> = __tmp__._1, _y:Ref<stdgo.math.big.Big.Int_> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            throw Go.toInterface(((("crypto/elliptic: failed to generate random point" : GoString))));
        };
        return { _0 : _x, _1 : _y };
    }
function _initP521():Void {
        _p521._params = (({ name : ((("P-521" : GoString))), bitSize : ((521 : GoInt)), p : _bigFromDecimal(((("6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151" : GoString)))), n : _bigFromDecimal(((("6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449" : GoString)))), b : _bigFromHex(((("0051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00" : GoString)))), gx : _bigFromHex(((("00c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66" : GoString)))), gy : _bigFromHex(((("011839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650" : GoString)))) } : CurveParams));
    }
function _p521PointFromAffine(_x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):{ var _0 : crypto.elliptic.internal.nistec.Nistec.P521Point; var _1 : Bool; } {
        var _p:crypto.elliptic.internal.nistec.Nistec.P521Point = null, _ok:Bool = false;
        if ((_x.sign() == ((0 : GoInt))) && (_y.sign() == ((0 : GoInt)))) {
            return { _0 : crypto.elliptic.internal.nistec.Nistec.newP521Point(), _1 : true };
        };
        if ((_x.sign() < ((0 : GoInt))) || (_y.sign() < ((0 : GoInt)))) {
            return { _0 : null, _1 : false };
        };
        if ((_x.bitLen() > ((521 : GoInt))) || (_y.bitLen() > ((521 : GoInt)))) {
            return { _0 : null, _1 : false };
        };
        var __tmp__ = crypto.elliptic.internal.nistec.Nistec.newP521Point().setBytes(marshal(p521(), _x, _y)), _p:Ref<crypto.elliptic.internal.nistec.Nistec.P521Point> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : false };
        };
        return { _0 : _p, _1 : true };
    }
function _p521PointToAffine(_p:crypto.elliptic.internal.nistec.Nistec.P521Point):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var _out = _p.bytes();
        if (((_out != null ? _out.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_out != null ? _out[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8)))) {
            return { _0 : new stdgo.math.big.Big.Int_(), _1 : new stdgo.math.big.Big.Int_() };
        };
        {
            var __tmp__ = unmarshal(p521(), _out);
            _x = __tmp__._0;
            _y = __tmp__._1;
        };
        if (_x == null) {
            throw Go.toInterface(((("crypto/elliptic: internal error: Unmarshal rejected a valid point encoding" : GoString))));
        };
        return { _0 : _x, _1 : _y };
    }
/**
    // p521RandomPoint returns a random point on the curve. It's used when Add,
    // Double, or ScalarMult are fed a point not on the curve, which is undefined
    // behavior. Originally, we used to do the math on it anyway (which allows
    // invalid curve attacks) and relied on the caller and Unmarshal to avoid this
    // happening in the first place. Now, we just can't construct a nistec.P521Point
    // for an invalid pair of coordinates, because that API is safer. If we panic,
    // we risk introducing a DoS. If we return nil, we risk a panic. If we return
    // the input, ecdsa.Verify might fail open. The safest course seems to be to
    // return a valid, random point, which hopefully won't help the attacker.
**/
function _p521RandomPoint():{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var __tmp__ = generateKey(p521(), stdgo.crypto.rand.Rand.reader), _0:Slice<GoUInt8> = __tmp__._0, _x:Ref<stdgo.math.big.Big.Int_> = __tmp__._1, _y:Ref<stdgo.math.big.Big.Int_> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            throw Go.toInterface(((("crypto/elliptic: failed to generate random point" : GoString))));
        };
        return { _0 : _x, _1 : _y };
    }
function _bigFromDecimal(_s:GoString):stdgo.math.big.Big.Int_ {
        var __tmp__ = new stdgo.math.big.Big.Int_().setString(_s, ((10 : GoInt))), _b:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw Go.toInterface(((("invalid encoding" : GoString))));
        };
        return _b;
    }
function _bigFromHex(_s:GoString):stdgo.math.big.Big.Int_ {
        var __tmp__ = new stdgo.math.big.Big.Int_().setString(_s, ((16 : GoInt))), _b:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw Go.toInterface(((("invalid encoding" : GoString))));
        };
        return _b;
    }
@:keep class CurveParams_static_extension {
    @:keep
    public static function scalarBaseMult( _curve:CurveParams, _k:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224, _p256, _p384, _p521), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.scalarBaseMult(_k);
            };
        };
        return _curve.scalarMult(_curve.gx, _curve.gy, _k);
    }
    @:keep
    public static function scalarMult( _curve:CurveParams, bx:stdgo.math.big.Big.Int_, by:stdgo.math.big.Big.Int_, _k:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224, _p256, _p384, _p521), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.scalarMult(bx, by, _k);
            };
        };
        var bz = new stdgo.math.big.Big.Int_().setInt64(((1 : GoInt64)));
        var _x = new stdgo.math.big.Big.Int_(), _y = new stdgo.math.big.Big.Int_(), _z = new stdgo.math.big.Big.Int_();
        for (_0 => _byte in _k) {
            {
                var _bitNum:GoInt = ((0 : GoInt));
                Go.cfor(_bitNum < ((8 : GoInt)), _bitNum++, {
                    {
                        var __tmp__ = _curve._doubleJacobian(_x, _y, _z);
                        _x = __tmp__._0;
                        _y = __tmp__._1;
                        _z = __tmp__._2;
                    };
                    if ((_byte & ((128 : GoUInt8))) == ((128 : GoUInt8))) {
                        {
                            var __tmp__ = _curve._addJacobian(bx, by, bz, _x, _y, _z);
                            _x = __tmp__._0;
                            _y = __tmp__._1;
                            _z = __tmp__._2;
                        };
                    };
                    _byte = _byte << (((1 : GoUnTypedInt)));
                });
            };
        };
        return _curve._affineFromJacobian(_x, _y, _z);
    }
    /**
        // doubleJacobian takes a point in Jacobian coordinates, (x, y, z), and
        // returns its double, also in Jacobian form.
    **/
    @:keep
    public static function _doubleJacobian( _curve:CurveParams, _x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_, _z:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; var _2 : stdgo.math.big.Big.Int_; } {
        var _delta = new stdgo.math.big.Big.Int_().mul(_z, _z);
        _delta.mod(_delta, _curve.p);
        var _gamma = new stdgo.math.big.Big.Int_().mul(_y, _y);
        _gamma.mod(_gamma, _curve.p);
        var _alpha = new stdgo.math.big.Big.Int_().sub(_x, _delta);
        if (_alpha.sign() == ((-1 : GoInt))) {
            _alpha.add(_alpha, _curve.p);
        };
        var _alpha2 = new stdgo.math.big.Big.Int_().add(_x, _delta);
        _alpha.mul(_alpha, _alpha2);
        _alpha2.set(_alpha);
        _alpha.lsh(_alpha, ((1 : GoUInt)));
        _alpha.add(_alpha, _alpha2);
        var _beta = _alpha2.mul(_x, _gamma);
        var _x3 = new stdgo.math.big.Big.Int_().mul(_alpha, _alpha);
        var _beta8 = new stdgo.math.big.Big.Int_().lsh(_beta, ((3 : GoUInt)));
        _beta8.mod(_beta8, _curve.p);
        _x3.sub(_x3, _beta8);
        if (_x3.sign() == ((-1 : GoInt))) {
            _x3.add(_x3, _curve.p);
        };
        _x3.mod(_x3, _curve.p);
        var _z3 = new stdgo.math.big.Big.Int_().add(_y, _z);
        _z3.mul(_z3, _z3);
        _z3.sub(_z3, _gamma);
        if (_z3.sign() == ((-1 : GoInt))) {
            _z3.add(_z3, _curve.p);
        };
        _z3.sub(_z3, _delta);
        if (_z3.sign() == ((-1 : GoInt))) {
            _z3.add(_z3, _curve.p);
        };
        _z3.mod(_z3, _curve.p);
        _beta.lsh(_beta, ((2 : GoUInt)));
        _beta.sub(_beta, _x3);
        if (_beta.sign() == ((-1 : GoInt))) {
            _beta.add(_beta, _curve.p);
        };
        var _y3 = _alpha.mul(_alpha, _beta);
        _gamma.mul(_gamma, _gamma);
        _gamma.lsh(_gamma, ((3 : GoUInt)));
        _gamma.mod(_gamma, _curve.p);
        _y3.sub(_y3, _gamma);
        if (_y3.sign() == ((-1 : GoInt))) {
            _y3.add(_y3, _curve.p);
        };
        _y3.mod(_y3, _curve.p);
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    @:keep
    public static function double( _curve:CurveParams, _x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224, _p384, _p521), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.double(_x1, _y1);
            };
        };
        var _z1 = _zForAffine(_x1, _y1);
        return {
            var __tmp__ = _curve._doubleJacobian(_x1, _y1, _z1);
            _curve._affineFromJacobian(((__tmp__._0 : Ref<stdgo.math.big.Big.Int_>)), ((__tmp__._1 : Ref<stdgo.math.big.Big.Int_>)), ((__tmp__._2 : Ref<stdgo.math.big.Big.Int_>)));
        };
    }
    /**
        // addJacobian takes two points in Jacobian coordinates, (x1, y1, z1) and
        // (x2, y2, z2) and returns their sum, also in Jacobian form.
    **/
    @:keep
    public static function _addJacobian( _curve:CurveParams, _x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_, _z1:stdgo.math.big.Big.Int_, _x2:stdgo.math.big.Big.Int_, _y2:stdgo.math.big.Big.Int_, _z2:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; var _2 : stdgo.math.big.Big.Int_; } {
        var _x3 = new stdgo.math.big.Big.Int_(), _y3 = new stdgo.math.big.Big.Int_(), _z3 = new stdgo.math.big.Big.Int_();
        if (_z1.sign() == ((0 : GoInt))) {
            _x3.set(_x2);
            _y3.set(_y2);
            _z3.set(_z2);
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        if (_z2.sign() == ((0 : GoInt))) {
            _x3.set(_x1);
            _y3.set(_y1);
            _z3.set(_z1);
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        var _z1z1 = new stdgo.math.big.Big.Int_().mul(_z1, _z1);
        _z1z1.mod(_z1z1, _curve.p);
        var _z2z2 = new stdgo.math.big.Big.Int_().mul(_z2, _z2);
        _z2z2.mod(_z2z2, _curve.p);
        var _u1 = new stdgo.math.big.Big.Int_().mul(_x1, _z2z2);
        _u1.mod(_u1, _curve.p);
        var _u2 = new stdgo.math.big.Big.Int_().mul(_x2, _z1z1);
        _u2.mod(_u2, _curve.p);
        var _h = new stdgo.math.big.Big.Int_().sub(_u2, _u1);
        var _xEqual:Bool = _h.sign() == ((0 : GoInt));
        if (_h.sign() == ((-1 : GoInt))) {
            _h.add(_h, _curve.p);
        };
        var _i = new stdgo.math.big.Big.Int_().lsh(_h, ((1 : GoUInt)));
        _i.mul(_i, _i);
        var _j = new stdgo.math.big.Big.Int_().mul(_h, _i);
        var _s1 = new stdgo.math.big.Big.Int_().mul(_y1, _z2);
        _s1.mul(_s1, _z2z2);
        _s1.mod(_s1, _curve.p);
        var _s2 = new stdgo.math.big.Big.Int_().mul(_y2, _z1);
        _s2.mul(_s2, _z1z1);
        _s2.mod(_s2, _curve.p);
        var _r = new stdgo.math.big.Big.Int_().sub(_s2, _s1);
        if (_r.sign() == ((-1 : GoInt))) {
            _r.add(_r, _curve.p);
        };
        var _yEqual:Bool = _r.sign() == ((0 : GoInt));
        if (_xEqual && _yEqual) {
            return _curve._doubleJacobian(_x1, _y1, _z1);
        };
        _r.lsh(_r, ((1 : GoUInt)));
        var _v = new stdgo.math.big.Big.Int_().mul(_u1, _i);
        _x3.set(_r);
        _x3.mul(_x3, _x3);
        _x3.sub(_x3, _j);
        _x3.sub(_x3, _v);
        _x3.sub(_x3, _v);
        _x3.mod(_x3, _curve.p);
        _y3.set(_r);
        _v.sub(_v, _x3);
        _y3.mul(_y3, _v);
        _s1.mul(_s1, _j);
        _s1.lsh(_s1, ((1 : GoUInt)));
        _y3.sub(_y3, _s1);
        _y3.mod(_y3, _curve.p);
        _z3.add(_z1, _z2);
        _z3.mul(_z3, _z3);
        _z3.sub(_z3, _z1z1);
        _z3.sub(_z3, _z2z2);
        _z3.mul(_z3, _h);
        _z3.mod(_z3, _curve.p);
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    @:keep
    public static function add( _curve:CurveParams, _x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_, _x2:stdgo.math.big.Big.Int_, _y2:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224, _p384, _p521), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.add(_x1, _y1, _x2, _y2);
            };
        };
        var _z1 = _zForAffine(_x1, _y1);
        var _z2 = _zForAffine(_x2, _y2);
        return {
            var __tmp__ = _curve._addJacobian(_x1, _y1, _z1, _x2, _y2, _z2);
            _curve._affineFromJacobian(((__tmp__._0 : Ref<stdgo.math.big.Big.Int_>)), ((__tmp__._1 : Ref<stdgo.math.big.Big.Int_>)), ((__tmp__._2 : Ref<stdgo.math.big.Big.Int_>)));
        };
    }
    /**
        // affineFromJacobian reverses the Jacobian transform. See the comment at the
        // top of the file. If the point is ∞ it returns 0, 0.
    **/
    @:keep
    public static function _affineFromJacobian( _curve:CurveParams, _x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_, _z:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _xOut:stdgo.math.big.Big.Int_ = null, _yOut:stdgo.math.big.Big.Int_ = null;
        if (_z.sign() == ((0 : GoInt))) {
            return { _0 : new stdgo.math.big.Big.Int_(), _1 : new stdgo.math.big.Big.Int_() };
        };
        var _zinv = new stdgo.math.big.Big.Int_().modInverse(_z, _curve.p);
        var _zinvsq = new stdgo.math.big.Big.Int_().mul(_zinv, _zinv);
        _xOut = new stdgo.math.big.Big.Int_().mul(_x, _zinvsq);
        _xOut.mod(_xOut, _curve.p);
        _zinvsq.mul(_zinvsq, _zinv);
        _yOut = new stdgo.math.big.Big.Int_().mul(_y, _zinvsq);
        _yOut.mod(_yOut, _curve.p);
        return { _0 : _xOut, _1 : _yOut };
    }
    @:keep
    public static function isOnCurve( _curve:CurveParams, _x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):Bool {
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224, _p384, _p521), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.isOnCurve(_x, _y);
            };
        };
        if ((((_x.sign() < ((0 : GoInt))) || (_x.cmp(_curve.p) >= ((0 : GoInt)))) || (_y.sign() < ((0 : GoInt)))) || (_y.cmp(_curve.p) >= ((0 : GoInt)))) {
            return false;
        };
        var _y2 = new stdgo.math.big.Big.Int_().mul(_y, _y);
        _y2.mod(_y2, _curve.p);
        return _curve._polynomial(_x).cmp(_y2) == ((0 : GoInt));
    }
    /**
        // polynomial returns x³ - 3x + b.
    **/
    @:keep
    public static function _polynomial( _curve:CurveParams, _x:stdgo.math.big.Big.Int_):stdgo.math.big.Big.Int_ {
        var _x3 = new stdgo.math.big.Big.Int_().mul(_x, _x);
        _x3.mul(_x3, _x);
        var _threeX = new stdgo.math.big.Big.Int_().lsh(_x, ((1 : GoUInt)));
        _threeX.add(_threeX, _x);
        _x3.sub(_x3, _threeX);
        _x3.add(_x3, _curve.b);
        _x3.mod(_x3, _curve.p);
        return _x3;
    }
    @:keep
    public static function params( _curve:CurveParams):CurveParams {
        return _curve;
    }
}
class CurveParams_wrapper {
    @:keep
    public var scalarBaseMult : Slice<GoByte> -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var scalarMult : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, Slice<GoByte>) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    /**
        // doubleJacobian takes a point in Jacobian coordinates, (x, y, z), and
        // returns its double, also in Jacobian form.
    **/
    @:keep
    public var _doubleJacobian : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; var _2 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var double : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    /**
        // addJacobian takes two points in Jacobian coordinates, (x1, y1, z1) and
        // (x2, y2, z2) and returns their sum, also in Jacobian form.
    **/
    @:keep
    public var _addJacobian : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; var _2 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var add : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    /**
        // affineFromJacobian reverses the Jacobian transform. See the comment at the
        // top of the file. If the point is ∞ it returns 0, 0.
    **/
    @:keep
    public var _affineFromJacobian : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var isOnCurve : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> Bool = null;
    /**
        // polynomial returns x³ - 3x + b.
    **/
    @:keep
    public var _polynomial : stdgo.math.big.Big.Int_ -> stdgo.math.big.Big.Int_ = null;
    @:keep
    public var params : () -> CurveParams = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : CurveParams;
}
@:keep class T_p224Curve_static_extension {
    @:keep
    public static function scalarBaseMult( _:T_p224Curve, _scalar:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _p = crypto.elliptic.internal.nistec.Nistec.newP224Generator();
        return _p224PointToAffine(_p.scalarMult(_p, _scalar));
    }
    @:keep
    public static function scalarMult( _:T_p224Curve, bx:stdgo.math.big.Big.Int_, by:stdgo.math.big.Big.Int_, _scalar:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var __tmp__ = _p224PointFromAffine(bx, by), _p:Ref<crypto.elliptic.internal.nistec.Nistec.P224Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p224RandomPoint();
        };
        return _p224PointToAffine(_p.scalarMult(_p, _scalar));
    }
    @:keep
    public static function double( _:T_p224Curve, _x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var __tmp__ = _p224PointFromAffine(_x1, _y1), _p:Ref<crypto.elliptic.internal.nistec.Nistec.P224Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p224RandomPoint();
        };
        return _p224PointToAffine(_p.double(_p));
    }
    @:keep
    public static function add( _:T_p224Curve, _x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_, _x2:stdgo.math.big.Big.Int_, _y2:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var __tmp__ = _p224PointFromAffine(_x1, _y1), _p1:Ref<crypto.elliptic.internal.nistec.Nistec.P224Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p224RandomPoint();
        };
        var __tmp__ = _p224PointFromAffine(_x2, _y2), _p2:Ref<crypto.elliptic.internal.nistec.Nistec.P224Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p224RandomPoint();
        };
        return _p224PointToAffine(_p1.add(_p1, _p2));
    }
    @:keep
    public static function isOnCurve( _curve:T_p224Curve, _x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):Bool {
        if ((_x.sign() == ((0 : GoInt))) && (_y.sign() == ((0 : GoInt)))) {
            return false;
        };
        var __tmp__ = _p224PointFromAffine(_x, _y), _0:Ref<crypto.elliptic.internal.nistec.Nistec.P224Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
    @:keep
    public static function params( _curve:T_p224Curve):CurveParams {
        return _curve._params;
    }
}
class T_p224Curve_wrapper {
    @:keep
    public var scalarBaseMult : Slice<GoByte> -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var scalarMult : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, Slice<GoByte>) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var double : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var add : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var isOnCurve : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> Bool = null;
    @:keep
    public var params : () -> CurveParams = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_p224Curve;
}
@:keep class T_p256Curve_static_extension {
    @:keep
    public static function scalarMult( _:T_p256Curve, _bigX:stdgo.math.big.Big.Int_, _bigY:stdgo.math.big.Big.Int_, _scalar:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var _scalarReversed:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        _p256GetScalar(_scalarReversed, _scalar);
        var _px:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _py:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _x1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _y1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256FromBig(_px, _bigX);
        _p256FromBig(_py, _bigY);
        _p256ScalarMult(_x1, _y1, _z1, _px, _py, _scalarReversed);
        return _p256ToAffine(_x1, _y1, _z1);
    }
    @:keep
    public static function scalarBaseMult( _:T_p256Curve, _scalar:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _x:stdgo.math.big.Big.Int_ = null, _y:stdgo.math.big.Big.Int_ = null;
        var _scalarReversed:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        _p256GetScalar(_scalarReversed, _scalar);
        var _x1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _y1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256ScalarBaseMult(_x1, _y1, _z1, _scalarReversed);
        return _p256ToAffine(_x1, _y1, _z1);
    }
    @:keep
    public static function params( _curve:T_p256Curve):CurveParams {
        return _curve.curveParams;
    }
}
class T_p256Curve_wrapper {
    @:keep
    public var scalarMult : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, Slice<GoByte>) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var scalarBaseMult : Slice<GoByte> -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var params : () -> CurveParams = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_p256Curve;
}
@:keep class T_p384Curve_static_extension {
    @:keep
    public static function scalarBaseMult( _:T_p384Curve, _scalar:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _p = crypto.elliptic.internal.nistec.Nistec.newP384Generator();
        return _p384PointToAffine(_p.scalarMult(_p, _scalar));
    }
    @:keep
    public static function scalarMult( _:T_p384Curve, bx:stdgo.math.big.Big.Int_, by:stdgo.math.big.Big.Int_, _scalar:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var __tmp__ = _p384PointFromAffine(bx, by), _p:Ref<crypto.elliptic.internal.nistec.Nistec.P384Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p384RandomPoint();
        };
        return _p384PointToAffine(_p.scalarMult(_p, _scalar));
    }
    @:keep
    public static function double( _:T_p384Curve, _x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var __tmp__ = _p384PointFromAffine(_x1, _y1), _p:Ref<crypto.elliptic.internal.nistec.Nistec.P384Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p384RandomPoint();
        };
        return _p384PointToAffine(_p.double(_p));
    }
    @:keep
    public static function add( _:T_p384Curve, _x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_, _x2:stdgo.math.big.Big.Int_, _y2:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var __tmp__ = _p384PointFromAffine(_x1, _y1), _p1:Ref<crypto.elliptic.internal.nistec.Nistec.P384Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p384RandomPoint();
        };
        var __tmp__ = _p384PointFromAffine(_x2, _y2), _p2:Ref<crypto.elliptic.internal.nistec.Nistec.P384Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p384RandomPoint();
        };
        return _p384PointToAffine(_p1.add(_p1, _p2));
    }
    @:keep
    public static function isOnCurve( _curve:T_p384Curve, _x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):Bool {
        if ((_x.sign() == ((0 : GoInt))) && (_y.sign() == ((0 : GoInt)))) {
            return false;
        };
        var __tmp__ = _p384PointFromAffine(_x, _y), _0:Ref<crypto.elliptic.internal.nistec.Nistec.P384Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
    @:keep
    public static function params( _curve:T_p384Curve):CurveParams {
        return _curve._params;
    }
}
class T_p384Curve_wrapper {
    @:keep
    public var scalarBaseMult : Slice<GoByte> -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var scalarMult : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, Slice<GoByte>) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var double : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var add : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var isOnCurve : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> Bool = null;
    @:keep
    public var params : () -> CurveParams = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_p384Curve;
}
@:keep class T_p521Curve_static_extension {
    @:keep
    public static function scalarBaseMult( _:T_p521Curve, _scalar:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var _p = crypto.elliptic.internal.nistec.Nistec.newP521Generator();
        return _p521PointToAffine(_p.scalarMult(_p, _scalar));
    }
    @:keep
    public static function scalarMult( _:T_p521Curve, bx:stdgo.math.big.Big.Int_, by:stdgo.math.big.Big.Int_, _scalar:Slice<GoByte>):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var __tmp__ = _p521PointFromAffine(bx, by), _p:Ref<crypto.elliptic.internal.nistec.Nistec.P521Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p521RandomPoint();
        };
        return _p521PointToAffine(_p.scalarMult(_p, _scalar));
    }
    @:keep
    public static function double( _:T_p521Curve, _x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var __tmp__ = _p521PointFromAffine(_x1, _y1), _p:Ref<crypto.elliptic.internal.nistec.Nistec.P521Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p521RandomPoint();
        };
        return _p521PointToAffine(_p.double(_p));
    }
    @:keep
    public static function add( _:T_p521Curve, _x1:stdgo.math.big.Big.Int_, _y1:stdgo.math.big.Big.Int_, _x2:stdgo.math.big.Big.Int_, _y2:stdgo.math.big.Big.Int_):{ var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } {
        var __tmp__ = _p521PointFromAffine(_x1, _y1), _p1:Ref<crypto.elliptic.internal.nistec.Nistec.P521Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p521RandomPoint();
        };
        var __tmp__ = _p521PointFromAffine(_x2, _y2), _p2:Ref<crypto.elliptic.internal.nistec.Nistec.P521Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return _p521RandomPoint();
        };
        return _p521PointToAffine(_p1.add(_p1, _p2));
    }
    @:keep
    public static function isOnCurve( _curve:T_p521Curve, _x:stdgo.math.big.Big.Int_, _y:stdgo.math.big.Big.Int_):Bool {
        if ((_x.sign() == ((0 : GoInt))) && (_y.sign() == ((0 : GoInt)))) {
            return false;
        };
        var __tmp__ = _p521PointFromAffine(_x, _y), _0:Ref<crypto.elliptic.internal.nistec.Nistec.P521Point> = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
    @:keep
    public static function params( _curve:T_p521Curve):CurveParams {
        return _curve._params;
    }
}
class T_p521Curve_wrapper {
    @:keep
    public var scalarBaseMult : Slice<GoByte> -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var scalarMult : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, Slice<GoByte>) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var double : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var add : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> { var _0 : stdgo.math.big.Big.Int_; var _1 : stdgo.math.big.Big.Int_; } = null;
    @:keep
    public var isOnCurve : (stdgo.math.big.Big.Int_, stdgo.math.big.Big.Int_) -> Bool = null;
    @:keep
    public var params : () -> CurveParams = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_p521Curve;
}
