package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
private var __go2hxdoc__package : Bool;
final _re : stdgo.GoFloat64 = (7.69711747013105 : stdgo.GoFloat64);
final _rn : stdgo.GoFloat64 = (3.442619855899 : stdgo.GoFloat64);
var _globalRandGenerator : stdgo._internal.sync.atomic_.Atomic_.Pointer_<Rand> = ({} : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.math.rand.Rand.Rand>);
final _rngLen : stdgo.GoUInt64 = (607i64 : stdgo.GoUInt64);
final _rngTap : stdgo.GoUInt64 = (273i64 : stdgo.GoUInt64);
final _rngMax : stdgo.GoUInt64 = (-9223372036854775808i64 : stdgo.GoUInt64);
final _rngMask : stdgo.GoUInt64 = (9223372036854775807i64 : stdgo.GoUInt64);
final _int32max : stdgo.GoUInt64 = (2147483647i64 : stdgo.GoUInt64);
var _ke : stdgo.GoArray<stdgo.GoUInt32> = (new stdgo.GoArray<stdgo.GoUInt32>(256, 256, ...[
(-493838023u32 : stdgo.GoUInt32),
(0u32 : stdgo.GoUInt32),
(-1679106372u32 : stdgo.GoUInt32),
(-1015567247u32 : stdgo.GoUInt32),
(-723666544u32 : stdgo.GoUInt32),
(-561430600u32 : stdgo.GoUInt32),
(-458692484u32 : stdgo.GoUInt32),
(-387976854u32 : stdgo.GoUInt32),
(-336404821u32 : stdgo.GoUInt32),
(-297163032u32 : stdgo.GoUInt32),
(-266318083u32 : stdgo.GoUInt32),
(-241443954u32 : stdgo.GoUInt32),
(-220964677u32 : stdgo.GoUInt32),
(-203812789u32 : stdgo.GoUInt32),
(-189239944u32 : stdgo.GoUInt32),
(-176706166u32 : stdgo.GoUInt32),
(-165812163u32 : stdgo.GoUInt32),
(-156256380u32 : stdgo.GoUInt32),
(-147806861u32 : stdgo.GoUInt32),
(-140282287u32 : stdgo.GoUInt32),
(-133538890u32 : stdgo.GoUInt32),
(-127461219u32 : stdgo.GoUInt32),
(-121955505u32 : stdgo.GoUInt32),
(-116944798u32 : stdgo.GoUInt32),
(-112365366u32 : stdgo.GoUInt32),
(-108163971u32 : stdgo.GoUInt32),
(-104295798u32 : stdgo.GoUInt32),
(-100722853u32 : stdgo.GoUInt32),
(-97412714u32 : stdgo.GoUInt32),
(-94337544u32 : stdgo.GoUInt32),
(-91473310u32 : stdgo.GoUInt32),
(-88799154u32 : stdgo.GoUInt32),
(-86296888u32 : stdgo.GoUInt32),
(-83950576u32 : stdgo.GoUInt32),
(-81746198u32 : stdgo.GoUInt32),
(-79671372u32 : stdgo.GoUInt32),
(-77715119u32 : stdgo.GoUInt32),
(-75867671u32 : stdgo.GoUInt32),
(-74120308u32 : stdgo.GoUInt32),
(-72465222u32 : stdgo.GoUInt32),
(-70895400u32 : stdgo.GoUInt32),
(-69404526u32 : stdgo.GoUInt32),
(-67986896u32 : stdgo.GoUInt32),
(-66637345u32 : stdgo.GoUInt32),
(-65351187u32 : stdgo.GoUInt32),
(-64124158u32 : stdgo.GoUInt32),
(-62952371u32 : stdgo.GoUInt32),
(-61832276u32 : stdgo.GoUInt32),
(-60760623u32 : stdgo.GoUInt32),
(-59734430u32 : stdgo.GoUInt32),
(-58750960u32 : stdgo.GoUInt32),
(-57807692u32 : stdgo.GoUInt32),
(-56902302u32 : stdgo.GoUInt32),
(-56032644u32 : stdgo.GoUInt32),
(-55196733u32 : stdgo.GoUInt32),
(-54392732u32 : stdgo.GoUInt32),
(-53618934u32 : stdgo.GoUInt32),
(-52873757u32 : stdgo.GoUInt32),
(-52155728u32 : stdgo.GoUInt32),
(-51463474u32 : stdgo.GoUInt32),
(-50795717u32 : stdgo.GoUInt32),
(-50151264u32 : stdgo.GoUInt32),
(-49528999u32 : stdgo.GoUInt32),
(-48927877u32 : stdgo.GoUInt32),
(-48346922u32 : stdgo.GoUInt32),
(-47785217u32 : stdgo.GoUInt32),
(-47241902u32 : stdgo.GoUInt32),
(-46716169u32 : stdgo.GoUInt32),
(-46207259u32 : stdgo.GoUInt32),
(-45714457u32 : stdgo.GoUInt32),
(-45237090u32 : stdgo.GoUInt32),
(-44774523u32 : stdgo.GoUInt32),
(-44326158u32 : stdgo.GoUInt32),
(-43891429u32 : stdgo.GoUInt32),
(-43469803u32 : stdgo.GoUInt32),
(-43060774u32 : stdgo.GoUInt32),
(-42663865u32 : stdgo.GoUInt32),
(-42278624u32 : stdgo.GoUInt32),
(-41904622u32 : stdgo.GoUInt32),
(-41541452u32 : stdgo.GoUInt32),
(-41188731u32 : stdgo.GoUInt32),
(-40846091u32 : stdgo.GoUInt32),
(-40513186u32 : stdgo.GoUInt32),
(-40189685u32 : stdgo.GoUInt32),
(-39875274u32 : stdgo.GoUInt32),
(-39569656u32 : stdgo.GoUInt32),
(-39272546u32 : stdgo.GoUInt32),
(-38983674u32 : stdgo.GoUInt32),
(-38702783u32 : stdgo.GoUInt32),
(-38429626u32 : stdgo.GoUInt32),
(-38163971u32 : stdgo.GoUInt32),
(-37905594u32 : stdgo.GoUInt32),
(-37654282u32 : stdgo.GoUInt32),
(-37409832u32 : stdgo.GoUInt32),
(-37172052u32 : stdgo.GoUInt32),
(-36940755u32 : stdgo.GoUInt32),
(-36715765u32 : stdgo.GoUInt32),
(-36496913u32 : stdgo.GoUInt32),
(-36284038u32 : stdgo.GoUInt32),
(-36076987u32 : stdgo.GoUInt32),
(-35875611u32 : stdgo.GoUInt32),
(-35679770u32 : stdgo.GoUInt32),
(-35489330u32 : stdgo.GoUInt32),
(-35304161u32 : stdgo.GoUInt32),
(-35124142u32 : stdgo.GoUInt32),
(-34949154u32 : stdgo.GoUInt32),
(-34779084u32 : stdgo.GoUInt32),
(-34613826u32 : stdgo.GoUInt32),
(-34453277u32 : stdgo.GoUInt32),
(-34297338u32 : stdgo.GoUInt32),
(-34145916u32 : stdgo.GoUInt32),
(-33998922u32 : stdgo.GoUInt32),
(-33856268u32 : stdgo.GoUInt32),
(-33717875u32 : stdgo.GoUInt32),
(-33583664u32 : stdgo.GoUInt32),
(-33453560u32 : stdgo.GoUInt32),
(-33327494u32 : stdgo.GoUInt32),
(-33205396u32 : stdgo.GoUInt32),
(-33087204u32 : stdgo.GoUInt32),
(-32972855u32 : stdgo.GoUInt32),
(-32862293u32 : stdgo.GoUInt32),
(-32755461u32 : stdgo.GoUInt32),
(-32652308u32 : stdgo.GoUInt32),
(-32552783u32 : stdgo.GoUInt32),
(-32456842u32 : stdgo.GoUInt32),
(-32364439u32 : stdgo.GoUInt32),
(-32275532u32 : stdgo.GoUInt32),
(-32190084u32 : stdgo.GoUInt32),
(-32108057u32 : stdgo.GoUInt32),
(-32029418u32 : stdgo.GoUInt32),
(-31954134u32 : stdgo.GoUInt32),
(-31882178u32 : stdgo.GoUInt32),
(-31813520u32 : stdgo.GoUInt32),
(-31748138u32 : stdgo.GoUInt32),
(-31686007u32 : stdgo.GoUInt32),
(-31627109u32 : stdgo.GoUInt32),
(-31571424u32 : stdgo.GoUInt32),
(-31518938u32 : stdgo.GoUInt32),
(-31469636u32 : stdgo.GoUInt32),
(-31423507u32 : stdgo.GoUInt32),
(-31380541u32 : stdgo.GoUInt32),
(-31340731u32 : stdgo.GoUInt32),
(-31304072u32 : stdgo.GoUInt32),
(-31270561u32 : stdgo.GoUInt32),
(-31240197u32 : stdgo.GoUInt32),
(-31212982u32 : stdgo.GoUInt32),
(-31188919u32 : stdgo.GoUInt32),
(-31168014u32 : stdgo.GoUInt32),
(-31150276u32 : stdgo.GoUInt32),
(-31135714u32 : stdgo.GoUInt32),
(-31124341u32 : stdgo.GoUInt32),
(-31116172u32 : stdgo.GoUInt32),
(-31111225u32 : stdgo.GoUInt32),
(-31109520u32 : stdgo.GoUInt32),
(-31111078u32 : stdgo.GoUInt32),
(-31115926u32 : stdgo.GoUInt32),
(-31124090u32 : stdgo.GoUInt32),
(-31135601u32 : stdgo.GoUInt32),
(-31150492u32 : stdgo.GoUInt32),
(-31168799u32 : stdgo.GoUInt32),
(-31190561u32 : stdgo.GoUInt32),
(-31215820u32 : stdgo.GoUInt32),
(-31244620u32 : stdgo.GoUInt32),
(-31277012u32 : stdgo.GoUInt32),
(-31313045u32 : stdgo.GoUInt32),
(-31352776u32 : stdgo.GoUInt32),
(-31396264u32 : stdgo.GoUInt32),
(-31443572u32 : stdgo.GoUInt32),
(-31494766u32 : stdgo.GoUInt32),
(-31549919u32 : stdgo.GoUInt32),
(-31609104u32 : stdgo.GoUInt32),
(-31672404u32 : stdgo.GoUInt32),
(-31739902u32 : stdgo.GoUInt32),
(-31811688u32 : stdgo.GoUInt32),
(-31887859u32 : stdgo.GoUInt32),
(-31968515u32 : stdgo.GoUInt32),
(-32053762u32 : stdgo.GoUInt32),
(-32143715u32 : stdgo.GoUInt32),
(-32238492u32 : stdgo.GoUInt32),
(-32338221u32 : stdgo.GoUInt32),
(-32443035u32 : stdgo.GoUInt32),
(-32553076u32 : stdgo.GoUInt32),
(-32668495u32 : stdgo.GoUInt32),
(-32789450u32 : stdgo.GoUInt32),
(-32916109u32 : stdgo.GoUInt32),
(-33048651u32 : stdgo.GoUInt32),
(-33187264u32 : stdgo.GoUInt32),
(-33332148u32 : stdgo.GoUInt32),
(-33483516u32 : stdgo.GoUInt32),
(-33641592u32 : stdgo.GoUInt32),
(-33806615u32 : stdgo.GoUInt32),
(-33978839u32 : stdgo.GoUInt32),
(-34158533u32 : stdgo.GoUInt32),
(-34345983u32 : stdgo.GoUInt32),
(-34541494u32 : stdgo.GoUInt32),
(-34745391u32 : stdgo.GoUInt32),
(-34958019u32 : stdgo.GoUInt32),
(-35179746u32 : stdgo.GoUInt32),
(-35410967u32 : stdgo.GoUInt32),
(-35652101u32 : stdgo.GoUInt32),
(-35903599u32 : stdgo.GoUInt32),
(-36165939u32 : stdgo.GoUInt32),
(-36439640u32 : stdgo.GoUInt32),
(-36725252u32 : stdgo.GoUInt32),
(-37023370u32 : stdgo.GoUInt32),
(-37334632u32 : stdgo.GoUInt32),
(-37659725u32 : stdgo.GoUInt32),
(-37999390u32 : stdgo.GoUInt32),
(-38354426u32 : stdgo.GoUInt32),
(-38725698u32 : stdgo.GoUInt32),
(-39114141u32 : stdgo.GoUInt32),
(-39520771u32 : stdgo.GoUInt32),
(-39946688u32 : stdgo.GoUInt32),
(-40393094u32 : stdgo.GoUInt32),
(-40861294u32 : stdgo.GoUInt32),
(-41352718u32 : stdgo.GoUInt32),
(-41868926u32 : stdgo.GoUInt32),
(-42411634u32 : stdgo.GoUInt32),
(-42982725u32 : stdgo.GoUInt32),
(-43584275u32 : stdgo.GoUInt32),
(-44218574u32 : stdgo.GoUInt32),
(-44888164u32 : stdgo.GoUInt32),
(-45595861u32 : stdgo.GoUInt32),
(-46344806u32 : stdgo.GoUInt32),
(-47138506u32 : stdgo.GoUInt32),
(-47980892u32 : stdgo.GoUInt32),
(-48876386u32 : stdgo.GoUInt32),
(-49829981u32 : stdgo.GoUInt32),
(-50847333u32 : stdgo.GoUInt32),
(-51934885u32 : stdgo.GoUInt32),
(-53100000u32 : stdgo.GoUInt32),
(-54351141u32 : stdgo.GoUInt32),
(-55698082u32 : stdgo.GoUInt32),
(-57152178u32 : stdgo.GoUInt32),
(-58726700u32 : stdgo.GoUInt32),
(-60437261u32 : stdgo.GoUInt32),
(-62302366u32 : stdgo.GoUInt32),
(-64344120u32 : stdgo.GoUInt32),
(-66589159u32 : stdgo.GoUInt32),
(-69069887u32 : stdgo.GoUInt32),
(-71826150u32 : stdgo.GoUInt32),
(-74907528u32 : stdgo.GoUInt32),
(-78376539u32 : stdgo.GoUInt32),
(-82313211u32 : stdgo.GoUInt32),
(-86821758u32 : stdgo.GoUInt32),
(-92040586u32 : stdgo.GoUInt32),
(-98157774u32 : stdgo.GoUInt32),
(-105435876u32 : stdgo.GoUInt32),
(-114253406u32 : stdgo.GoUInt32),
(-125177821u32 : stdgo.GoUInt32),
(-139102254u32 : stdgo.GoUInt32),
(-157522676u32 : stdgo.GoUInt32),
(-183160592u32 : stdgo.GoUInt32),
(-221573572u32 : stdgo.GoUInt32),
(-286281379u32 : stdgo.GoUInt32),
(-421892401u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>);
var _we : stdgo.GoArray<stdgo.GoFloat32> = (new stdgo.GoArray<stdgo.GoFloat32>(256, 256, ...[
(2.0249555365836613e-09 : stdgo.GoFloat64),
(1.4866739783681027e-11 : stdgo.GoFloat64),
(2.4409616689036184e-11 : stdgo.GoFloat64),
(3.1968806074589295e-11 : stdgo.GoFloat64),
(3.844677007314168e-11 : stdgo.GoFloat64),
(4.42282044321729e-11 : stdgo.GoFloat64),
(4.951644302919611e-11 : stdgo.GoFloat64),
(5.443358958023836e-11 : stdgo.GoFloat64),
(5.905943789574764e-11 : stdgo.GoFloat64),
(6.34494193296753e-11 : stdgo.GoFloat64),
(6.764381416113352e-11 : stdgo.GoFloat64),
(7.167294535648239e-11 : stdgo.GoFloat64),
(7.556032188826833e-11 : stdgo.GoFloat64),
(7.932458162551725e-11 : stdgo.GoFloat64),
(8.298078890689453e-11 : stdgo.GoFloat64),
(8.654132271912474e-11 : stdgo.GoFloat64),
(9.001651507523079e-11 : stdgo.GoFloat64),
(9.341507428706208e-11 : stdgo.GoFloat64),
(9.674443190998971e-11 : stdgo.GoFloat64),
(1.0001099254308699e-10 : stdgo.GoFloat64),
(1.0322031424037093e-10 : stdgo.GoFloat64),
(1.0637725422757427e-10 : stdgo.GoFloat64),
(1.0948611461891744e-10 : stdgo.GoFloat64),
(1.1255067711157807e-10 : stdgo.GoFloat64),
(1.1557434870246297e-10 : stdgo.GoFloat64),
(1.1856014781042035e-10 : stdgo.GoFloat64),
(1.2151082917633005e-10 : stdgo.GoFloat64),
(1.2442885610752796e-10 : stdgo.GoFloat64),
(1.2731647680563896e-10 : stdgo.GoFloat64),
(1.3017574518325858e-10 : stdgo.GoFloat64),
(1.330085347417409e-10 : stdgo.GoFloat64),
(1.3581656632677408e-10 : stdgo.GoFloat64),
(1.386014220061682e-10 : stdgo.GoFloat64),
(1.413645728254309e-10 : stdgo.GoFloat64),
(1.4410737880776736e-10 : stdgo.GoFloat64),
(1.4683107507629245e-10 : stdgo.GoFloat64),
(1.4953686899854546e-10 : stdgo.GoFloat64),
(1.522258291641876e-10 : stdgo.GoFloat64),
(1.5489899640730442e-10 : stdgo.GoFloat64),
(1.575573282952547e-10 : stdgo.GoFloat64),
(1.6020171300645814e-10 : stdgo.GoFloat64),
(1.628330109637588e-10 : stdgo.GoFloat64),
(1.6545202707884954e-10 : stdgo.GoFloat64),
(1.68059510752272e-10 : stdgo.GoFloat64),
(1.7065616975120435e-10 : stdgo.GoFloat64),
(1.73242697965037e-10 : stdgo.GoFloat64),
(1.758197337720091e-10 : stdgo.GoFloat64),
(1.783878739169964e-10 : stdgo.GoFloat64),
(1.8094774290045024e-10 : stdgo.GoFloat64),
(1.834998542005195e-10 : stdgo.GoFloat64),
(1.8604476292871652e-10 : stdgo.GoFloat64),
(1.8858298256319017e-10 : stdgo.GoFloat64),
(1.9111498494872592e-10 : stdgo.GoFloat64),
(1.9364125580789704e-10 : stdgo.GoFloat64),
(1.9616222535212557e-10 : stdgo.GoFloat64),
(1.9867835154840918e-10 : stdgo.GoFloat64),
(2.011900368525943e-10 : stdgo.GoFloat64),
(2.0369768372052732e-10 : stdgo.GoFloat64),
(2.062016807302669e-10 : stdgo.GoFloat64),
(2.0870240258208383e-10 : stdgo.GoFloat64),
(2.1120022397624894e-10 : stdgo.GoFloat64),
(2.136955057352452e-10 : stdgo.GoFloat64),
(2.1618855317040442e-10 : stdgo.GoFloat64),
(2.1867974098199738e-10 : stdgo.GoFloat64),
(2.2116936060356807e-10 : stdgo.GoFloat64),
(2.2365774510202385e-10 : stdgo.GoFloat64),
(2.2614519978869652e-10 : stdgo.GoFloat64),
(2.2863201609713002e-10 : stdgo.GoFloat64),
(2.3111849933865614e-10 : stdgo.GoFloat64),
(2.3360494094681883e-10 : stdgo.GoFloat64),
(2.3609159072179864e-10 : stdgo.GoFloat64),
(2.3857874009713953e-10 : stdgo.GoFloat64),
(2.4106666662859766e-10 : stdgo.GoFloat64),
(2.4355562011635357e-10 : stdgo.GoFloat64),
(2.460458781161634e-10 : stdgo.GoFloat64),
(2.485376904282077e-10 : stdgo.GoFloat64),
(2.5103127909709144e-10 : stdgo.GoFloat64),
(2.5352694943414633e-10 : stdgo.GoFloat64),
(2.560248957284017e-10 : stdgo.GoFloat64),
(2.585253955356137e-10 : stdgo.GoFloat64),
(2.610286709003873e-10 : stdgo.GoFloat64),
(2.6353494386732734e-10 : stdgo.GoFloat64),
(2.6604446423661443e-10 : stdgo.GoFloat64),
(2.6855745405285347e-10 : stdgo.GoFloat64),
(2.71074163116225e-10 : stdgo.GoFloat64),
(2.7359478571575835e-10 : stdgo.GoFloat64),
(2.7611959940720965e-10 : stdgo.GoFloat64),
(2.786487707240326e-10 : stdgo.GoFloat64),
(2.8118254946640775e-10 : stdgo.GoFloat64),
(2.8372118543451563e-10 : stdgo.GoFloat64),
(2.8626484516180994e-10 : stdgo.GoFloat64),
(2.8881380620404684e-10 : stdgo.GoFloat64),
(2.9136826285025563e-10 : stdgo.GoFloat64),
(2.9392840938946563e-10 : stdgo.GoFloat64),
(2.96494523377433e-10 : stdgo.GoFloat64),
(2.990667713476114e-10 : stdgo.GoFloat64),
(3.016454031001814e-10 : stdgo.GoFloat64),
(3.042306406797479e-10 : stdgo.GoFloat64),
(3.068226783753403e-10 : stdgo.GoFloat64),
(3.09421765987139e-10 : stdgo.GoFloat64),
(3.12028125559749e-10 : stdgo.GoFloat64),
(3.1464195138219964e-10 : stdgo.GoFloat64),
(3.17263521010247e-10 : stdgo.GoFloat64),
(3.1989300097734485e-10 : stdgo.GoFloat64),
(3.225306410836737e-10 : stdgo.GoFloat64),
(3.2517669112941405e-10 : stdgo.GoFloat64),
(3.2783134540359526e-10 : stdgo.GoFloat64),
(3.3049485370639786e-10 : stdgo.GoFloat64),
(3.3316743808242677e-10 : stdgo.GoFloat64),
(3.3584937608743815e-10 : stdgo.GoFloat64),
(3.385408342548857e-10 : stdgo.GoFloat64),
(3.4124211789610115e-10 : stdgo.GoFloat64),
(3.4395342130011386e-10 : stdgo.GoFloat64),
(3.4667499426710435e-10 : stdgo.GoFloat64),
(3.494071143528288e-10 : stdgo.GoFloat64),
(3.521500313574677e-10 : stdgo.GoFloat64),
(3.54903967325626e-10 : stdgo.GoFloat64),
(3.576691720574843e-10 : stdgo.GoFloat64),
(3.6044595086437425e-10 : stdgo.GoFloat64),
(3.632345535464765e-10 : stdgo.GoFloat64),
(3.660352021483959e-10 : stdgo.GoFloat64),
(3.688482297370399e-10 : stdgo.GoFloat64),
(3.716738583570134e-10 : stdgo.GoFloat64),
(3.7451239331964814e-10 : stdgo.GoFloat64),
(3.773641121807003e-10 : stdgo.GoFloat64),
(3.802292924959261e-10 : stdgo.GoFloat64),
(3.831082673322328e-10 : stdgo.GoFloat64),
(3.8600128648980103e-10 : stdgo.GoFloat64),
(3.8890865527996255e-10 : stdgo.GoFloat64),
(3.9183070676962473e-10 : stdgo.GoFloat64),
(3.9476774627011935e-10 : stdgo.GoFloat64),
(3.977200790927782e-10 : stdgo.GoFloat64),
(4.006880383045086e-10 : stdgo.GoFloat64),
(4.0367195697221803e-10 : stdgo.GoFloat64),
(4.066721681628138e-10 : stdgo.GoFloat64),
(4.0968900494320337e-10 : stdgo.GoFloat64),
(4.127228558914453e-10 : stdgo.GoFloat64),
(4.15774054074447e-10 : stdgo.GoFloat64),
(4.188429603146915e-10 : stdgo.GoFloat64),
(4.2192993543466173e-10 : stdgo.GoFloat64),
(4.25035395767992e-10 : stdgo.GoFloat64),
(4.2815970213716525e-10 : stdgo.GoFloat64),
(4.313032986313914e-10 : stdgo.GoFloat64),
(4.3446651831757777e-10 : stdgo.GoFloat64),
(4.376498607960855e-10 : stdgo.GoFloat64),
(4.408536868893975e-10 : stdgo.GoFloat64),
(4.4407846844229937e-10 : stdgo.GoFloat64),
(4.4732464954400086e-10 : stdgo.GoFloat64),
(4.5059267428371186e-10 : stdgo.GoFloat64),
(4.538830145062178e-10 : stdgo.GoFloat64),
(4.5719619756745544e-10 : stdgo.GoFloat64),
(4.605326675566346e-10 : stdgo.GoFloat64),
(4.638929240741163e-10 : stdgo.GoFloat64),
(4.672775499869886e-10 : stdgo.GoFloat64),
(4.706869893844612e-10 : stdgo.GoFloat64),
(4.74121908400349e-10 : stdgo.GoFloat64),
(4.775827511238617e-10 : stdgo.GoFloat64),
(4.810701836888143e-10 : stdgo.GoFloat64),
(4.845848167178701e-10 : stdgo.GoFloat64),
(4.881271498113904e-10 : stdgo.GoFloat64),
(4.916979601254923e-10 : stdgo.GoFloat64),
(4.952977472605369e-10 : stdgo.GoFloat64),
(4.989272883726414e-10 : stdgo.GoFloat64),
(5.025872495956207e-10 : stdgo.GoFloat64),
(5.062783525744408e-10 : stdgo.GoFloat64),
(5.100013189540675e-10 : stdgo.GoFloat64),
(5.13756870379467e-10 : stdgo.GoFloat64),
(5.175458395179078e-10 : stdgo.GoFloat64),
(5.21369003525507e-10 : stdgo.GoFloat64),
(5.252272505806843e-10 : stdgo.GoFloat64),
(5.29121357839557e-10 : stdgo.GoFloat64),
(5.330522134805449e-10 : stdgo.GoFloat64),
(5.3702081670437e-10 : stdgo.GoFloat64),
(5.41028055689452e-10 : stdgo.GoFloat64),
(5.450749851476644e-10 : stdgo.GoFloat64),
(5.491624932574268e-10 : stdgo.GoFloat64),
(5.532918012640664e-10 : stdgo.GoFloat64),
(5.574638528571541e-10 : stdgo.GoFloat64),
(5.616799247931681e-10 : stdgo.GoFloat64),
(5.659410717839819e-10 : stdgo.GoFloat64),
(5.702485705860738e-10 : stdgo.GoFloat64),
(5.746036979559221e-10 : stdgo.GoFloat64),
(5.790077306500052e-10 : stdgo.GoFloat64),
(5.83462111958255e-10 : stdgo.GoFloat64),
(5.879682296594524e-10 : stdgo.GoFloat64),
(5.925275825546805e-10 : stdgo.GoFloat64),
(5.971417249561739e-10 : stdgo.GoFloat64),
(6.01812211176167e-10 : stdgo.GoFloat64),
(6.065408175714992e-10 : stdgo.GoFloat64),
(6.113292094767075e-10 : stdgo.GoFloat64),
(6.16179329782085e-10 : stdgo.GoFloat64),
(6.21092954844471e-10 : stdgo.GoFloat64),
(6.260721940876124e-10 : stdgo.GoFloat64),
(6.311191569352559e-10 : stdgo.GoFloat64),
(6.362359528111483e-10 : stdgo.GoFloat64),
(6.414249686947926e-10 : stdgo.GoFloat64),
(6.466885360545405e-10 : stdgo.GoFloat64),
(6.520292639144998e-10 : stdgo.GoFloat64),
(6.574497612987784e-10 : stdgo.GoFloat64),
(6.629528592760892e-10 : stdgo.GoFloat64),
(6.685415554485985e-10 : stdgo.GoFloat64),
(6.742187919073217e-10 : stdgo.GoFloat64),
(6.799880103436351e-10 : stdgo.GoFloat64),
(6.858525969377638e-10 : stdgo.GoFloat64),
(6.918161599145378e-10 : stdgo.GoFloat64),
(6.978825850545434e-10 : stdgo.GoFloat64),
(7.040559801829716e-10 : stdgo.GoFloat64),
(7.103406751696184e-10 : stdgo.GoFloat64),
(7.167412219288849e-10 : stdgo.GoFloat64),
(7.232625609532306e-10 : stdgo.GoFloat64),
(7.2990985477972e-10 : stdgo.GoFloat64),
(7.366885990123251e-10 : stdgo.GoFloat64),
(7.436047333442275e-10 : stdgo.GoFloat64),
(7.506645305355164e-10 : stdgo.GoFloat64),
(7.57874762946642e-10 : stdgo.GoFloat64),
(7.652426470272644e-10 : stdgo.GoFloat64),
(7.727759543385559e-10 : stdgo.GoFloat64),
(7.804830115532013e-10 : stdgo.GoFloat64),
(7.883728114777e-10 : stdgo.GoFloat64),
(7.964550685635174e-10 : stdgo.GoFloat64),
(8.047402189070851e-10 : stdgo.GoFloat64),
(8.132396422944055e-10 : stdgo.GoFloat64),
(8.219657177122031e-10 : stdgo.GoFloat64),
(8.309318788590758e-10 : stdgo.GoFloat64),
(8.401527806789488e-10 : stdgo.GoFloat64),
(8.496445214056791e-10 : stdgo.GoFloat64),
(8.594246980742071e-10 : stdgo.GoFloat64),
(8.695127395874636e-10 : stdgo.GoFloat64),
(8.799300732498239e-10 : stdgo.GoFloat64),
(8.90700457834015e-10 : stdgo.GoFloat64),
(9.01850316648023e-10 : stdgo.GoFloat64),
(9.134091816243028e-10 : stdgo.GoFloat64),
(9.254100818978372e-10 : stdgo.GoFloat64),
(9.37890431984556e-10 : stdgo.GoFloat64),
(9.508922538259412e-10 : stdgo.GoFloat64),
(9.64463842123564e-10 : stdgo.GoFloat64),
(9.78660263939446e-10 : stdgo.GoFloat64),
(9.935448019859905e-10 : stdgo.GoFloat64),
(1.0091912860943353e-09 : stdgo.GoFloat64),
(1.0256859805934937e-09 : stdgo.GoFloat64),
(1.0431305819125214e-09 : stdgo.GoFloat64),
(1.0616465484503124e-09 : stdgo.GoFloat64),
(1.0813799855569073e-09 : stdgo.GoFloat64),
(1.1025096391392708e-09 : stdgo.GoFloat64),
(1.1252564435793033e-09 : stdgo.GoFloat64),
(1.149898620766976e-09 : stdgo.GoFloat64),
(1.176793218427008e-09 : stdgo.GoFloat64),
(1.2064089727203964e-09 : stdgo.GoFloat64),
(1.2393785997488749e-09 : stdgo.GoFloat64),
(1.2765849488616254e-09 : stdgo.GoFloat64),
(1.319313880365769e-09 : stdgo.GoFloat64),
(1.36954347862428e-09 : stdgo.GoFloat64),
(1.4305497897382224e-09 : stdgo.GoFloat64),
(1.5083649884672923e-09 : stdgo.GoFloat64),
(1.6160853766322703e-09 : stdgo.GoFloat64),
(1.7921247819074893e-09 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>);
var _fe : stdgo.GoArray<stdgo.GoFloat32> = (new stdgo.GoArray<stdgo.GoFloat32>(256, 256, ...[
(1 : stdgo.GoFloat64),
(0.9381436705589294 : stdgo.GoFloat64),
(0.900469958782196 : stdgo.GoFloat64),
(0.8717043399810791 : stdgo.GoFloat64),
(0.847785472869873 : stdgo.GoFloat64),
(0.8269932866096497 : stdgo.GoFloat64),
(0.8084216713905334 : stdgo.GoFloat64),
(0.7915276288986206 : stdgo.GoFloat64),
(0.7759568691253662 : stdgo.GoFloat64),
(0.7614634037017822 : stdgo.GoFloat64),
(0.7478685975074768 : stdgo.GoFloat64),
(0.7350381016731262 : stdgo.GoFloat64),
(0.7228676676750183 : stdgo.GoFloat64),
(0.7112747430801392 : stdgo.GoFloat64),
(0.7001926302909851 : stdgo.GoFloat64),
(0.6895664930343628 : stdgo.GoFloat64),
(0.6793505549430847 : stdgo.GoFloat64),
(0.669506311416626 : stdgo.GoFloat64),
(0.6600008606910706 : stdgo.GoFloat64),
(0.6508058309555054 : stdgo.GoFloat64),
(0.6418967247009277 : stdgo.GoFloat64),
(0.633251965045929 : stdgo.GoFloat64),
(0.62485271692276 : stdgo.GoFloat64),
(0.6166821718215942 : stdgo.GoFloat64),
(0.608725368976593 : stdgo.GoFloat64),
(0.6009689569473267 : stdgo.GoFloat64),
(0.5934008955955505 : stdgo.GoFloat64),
(0.5860103368759155 : stdgo.GoFloat64),
(0.5787873864173889 : stdgo.GoFloat64),
(0.5717230439186096 : stdgo.GoFloat64),
(0.5648092031478882 : stdgo.GoFloat64),
(0.5580382943153381 : stdgo.GoFloat64),
(0.5514034032821655 : stdgo.GoFloat64),
(0.5448982119560242 : stdgo.GoFloat64),
(0.5385168790817261 : stdgo.GoFloat64),
(0.5322538614273071 : stdgo.GoFloat64),
(0.526104211807251 : stdgo.GoFloat64),
(0.5200631618499756 : stdgo.GoFloat64),
(0.5141264200210571 : stdgo.GoFloat64),
(0.5082897543907166 : stdgo.GoFloat64),
(0.5025495290756226 : stdgo.GoFloat64),
(0.4969019889831543 : stdgo.GoFloat64),
(0.4913438558578491 : stdgo.GoFloat64),
(0.4858720004558563 : stdgo.GoFloat64),
(0.48048335313796997 : stdgo.GoFloat64),
(0.4751752018928528 : stdgo.GoFloat64),
(0.4699448347091675 : stdgo.GoFloat64),
(0.4647897481918335 : stdgo.GoFloat64),
(0.4597076177597046 : stdgo.GoFloat64),
(0.4546961486339569 : stdgo.GoFloat64),
(0.4497532546520233 : stdgo.GoFloat64),
(0.44487687945365906 : stdgo.GoFloat64),
(0.4400651156902313 : stdgo.GoFloat64),
(0.4353161156177521 : stdgo.GoFloat64),
(0.4306281507015228 : stdgo.GoFloat64),
(0.42599955201148987 : stdgo.GoFloat64),
(0.42142874002456665 : stdgo.GoFloat64),
(0.4169141948223114 : stdgo.GoFloat64),
(0.4124544560909271 : stdgo.GoFloat64),
(0.40804818272590637 : stdgo.GoFloat64),
(0.4036940038204193 : stdgo.GoFloat64),
(0.39939069747924805 : stdgo.GoFloat64),
(0.3951369822025299 : stdgo.GoFloat64),
(0.39093172550201416 : stdgo.GoFloat64),
(0.38677382469177246 : stdgo.GoFloat64),
(0.38266217708587646 : stdgo.GoFloat64),
(0.378595769405365 : stdgo.GoFloat64),
(0.37457355856895447 : stdgo.GoFloat64),
(0.37059465050697327 : stdgo.GoFloat64),
(0.366658091545105 : stdgo.GoFloat64),
(0.362762987613678 : stdgo.GoFloat64),
(0.358908474445343 : stdgo.GoFloat64),
(0.35509374737739563 : stdgo.GoFloat64),
(0.35131800174713135 : stdgo.GoFloat64),
(0.3475804924964905 : stdgo.GoFloat64),
(0.34388044476509094 : stdgo.GoFloat64),
(0.34021714329719543 : stdgo.GoFloat64),
(0.33658990263938904 : stdgo.GoFloat64),
(0.3329980671405792 : stdgo.GoFloat64),
(0.3294409513473511 : stdgo.GoFloat64),
(0.32591795921325684 : stdgo.GoFloat64),
(0.32242849469184875 : stdgo.GoFloat64),
(0.3189719021320343 : stdgo.GoFloat64),
(0.3155476748943329 : stdgo.GoFloat64),
(0.31215524673461914 : stdgo.GoFloat64),
(0.3087940812110901 : stdgo.GoFloat64),
(0.30546361207962036 : stdgo.GoFloat64),
(0.30216339230537415 : stdgo.GoFloat64),
(0.29889291524887085 : stdgo.GoFloat64),
(0.29565170407295227 : stdgo.GoFloat64),
(0.2924392819404602 : stdgo.GoFloat64),
(0.2892552316188812 : stdgo.GoFloat64),
(0.28609907627105713 : stdgo.GoFloat64),
(0.2829704284667969 : stdgo.GoFloat64),
(0.27986884117126465 : stdgo.GoFloat64),
(0.2767939269542694 : stdgo.GoFloat64),
(0.2737452983856201 : stdgo.GoFloat64),
(0.2707225978374481 : stdgo.GoFloat64),
(0.26772540807724 : stdgo.GoFloat64),
(0.26475343108177185 : stdgo.GoFloat64),
(0.2618062496185303 : stdgo.GoFloat64),
(0.258883535861969 : stdgo.GoFloat64),
(0.2559850215911865 : stdgo.GoFloat64),
(0.25311028957366943 : stdgo.GoFloat64),
(0.25025907158851624 : stdgo.GoFloat64),
(0.24743106961250305 : stdgo.GoFloat64),
(0.2446259707212448 : stdgo.GoFloat64),
(0.24184346199035645 : stdgo.GoFloat64),
(0.23908329010009766 : stdgo.GoFloat64),
(0.23634515702724457 : stdgo.GoFloat64),
(0.2336287796497345 : stdgo.GoFloat64),
(0.23093391954898834 : stdgo.GoFloat64),
(0.22826029360294342 : stdgo.GoFloat64),
(0.22560766339302063 : stdgo.GoFloat64),
(0.22297576069831848 : stdgo.GoFloat64),
(0.22036437690258026 : stdgo.GoFloat64),
(0.21777324378490448 : stdgo.GoFloat64),
(0.21520215272903442 : stdgo.GoFloat64),
(0.212650865316391 : stdgo.GoFloat64),
(0.21011915802955627 : stdgo.GoFloat64),
(0.20760682225227356 : stdgo.GoFloat64),
(0.20511364936828613 : stdgo.GoFloat64),
(0.20263944566249847 : stdgo.GoFloat64),
(0.20018397271633148 : stdgo.GoFloat64),
(0.19774706661701202 : stdgo.GoFloat64),
(0.1953285187482834 : stdgo.GoFloat64),
(0.19292815029621124 : stdgo.GoFloat64),
(0.19054576754570007 : stdgo.GoFloat64),
(0.18818120658397675 : stdgo.GoFloat64),
(0.18583425879478455 : stdgo.GoFloat64),
(0.18350479006767273 : stdgo.GoFloat64),
(0.18119260668754578 : stdgo.GoFloat64),
(0.17889754474163055 : stdgo.GoFloat64),
(0.17661945521831512 : stdgo.GoFloat64),
(0.17435817420482635 : stdgo.GoFloat64),
(0.1721135377883911 : stdgo.GoFloat64),
(0.16988539695739746 : stdgo.GoFloat64),
(0.16767361760139465 : stdgo.GoFloat64),
(0.16547803580760956 : stdgo.GoFloat64),
(0.16329853236675262 : stdgo.GoFloat64),
(0.16113494336605072 : stdgo.GoFloat64),
(0.1589871346950531 : stdgo.GoFloat64),
(0.15685498714447021 : stdgo.GoFloat64),
(0.15473836660385132 : stdgo.GoFloat64),
(0.15263713896274567 : stdgo.GoFloat64),
(0.1505511850118637 : stdgo.GoFloat64),
(0.1484803706407547 : stdgo.GoFloat64),
(0.14642459154129028 : stdgo.GoFloat64),
(0.1443837285041809 : stdgo.GoFloat64),
(0.14235764741897583 : stdgo.GoFloat64),
(0.1403462439775467 : stdgo.GoFloat64),
(0.13834942877292633 : stdgo.GoFloat64),
(0.136367067694664 : stdgo.GoFloat64),
(0.13439907133579254 : stdgo.GoFloat64),
(0.1324453204870224 : stdgo.GoFloat64),
(0.1305057406425476 : stdgo.GoFloat64),
(0.12858019769191742 : stdgo.GoFloat64),
(0.12666863203048706 : stdgo.GoFloat64),
(0.12477091699838638 : stdgo.GoFloat64),
(0.12288697808980942 : stdgo.GoFloat64),
(0.1210167184472084 : stdgo.GoFloat64),
(0.11916005611419678 : stdgo.GoFloat64),
(0.11731690168380737 : stdgo.GoFloat64),
(0.11548716574907303 : stdgo.GoFloat64),
(0.11367076635360718 : stdgo.GoFloat64),
(0.11186762899160385 : stdgo.GoFloat64),
(0.11007767915725708 : stdgo.GoFloat64),
(0.1083008274435997 : stdgo.GoFloat64),
(0.10653700679540634 : stdgo.GoFloat64),
(0.10478614270687103 : stdgo.GoFloat64),
(0.1030481606721878 : stdgo.GoFloat64),
(0.10132300108671188 : stdgo.GoFloat64),
(0.0996105819940567 : stdgo.GoFloat64),
(0.09791085124015808 : stdgo.GoFloat64),
(0.09622374176979065 : stdgo.GoFloat64),
(0.09454918652772903 : stdgo.GoFloat64),
(0.09288713335990906 : stdgo.GoFloat64),
(0.09123751521110535 : stdgo.GoFloat64),
(0.08960027992725372 : stdgo.GoFloat64),
(0.08797537535429001 : stdgo.GoFloat64),
(0.08636274188756943 : stdgo.GoFloat64),
(0.0847623273730278 : stdgo.GoFloat64),
(0.08317409455776215 : stdgo.GoFloat64),
(0.08159798383712769 : stdgo.GoFloat64),
(0.08003395050764084 : stdgo.GoFloat64),
(0.07848194986581802 : stdgo.GoFloat64),
(0.07694194465875626 : stdgo.GoFloat64),
(0.07541389018297195 : stdgo.GoFloat64),
(0.07389774918556213 : stdgo.GoFloat64),
(0.07239348441362381 : stdgo.GoFloat64),
(0.070901058614254 : stdgo.GoFloat64),
(0.06942043453454971 : stdgo.GoFloat64),
(0.06795158982276917 : stdgo.GoFloat64),
(0.06649449467658997 : stdgo.GoFloat64),
(0.06504911929368973 : stdgo.GoFloat64),
(0.06361543387174606 : stdgo.GoFloat64),
(0.06219341605901718 : stdgo.GoFloat64),
(0.06078304722905159 : stdgo.GoFloat64),
(0.0593843050301075 : stdgo.GoFloat64),
(0.05799717456102371 : stdgo.GoFloat64),
(0.05662164092063904 : stdgo.GoFloat64),
(0.05525768920779228 : stdgo.GoFloat64),
(0.05390531197190285 : stdgo.GoFloat64),
(0.05256449431180954 : stdgo.GoFloat64),
(0.05123523622751236 : stdgo.GoFloat64),
(0.04991753399372101 : stdgo.GoFloat64),
(0.04861138388514519 : stdgo.GoFloat64),
(0.047316793352365494 : stdgo.GoFloat64),
(0.04603376239538193 : stdgo.GoFloat64),
(0.044762298464775085 : stdgo.GoFloat64),
(0.04350241273641586 : stdgo.GoFloat64),
(0.04225412383675575 : stdgo.GoFloat64),
(0.04101744294166565 : stdgo.GoFloat64),
(0.039792392402887344 : stdgo.GoFloat64),
(0.03857899457216263 : stdgo.GoFloat64),
(0.03737728297710419 : stdgo.GoFloat64),
(0.03618728369474411 : stdgo.GoFloat64),
(0.03500903770327568 : stdgo.GoFloat64),
(0.03384258225560188 : stdgo.GoFloat64),
(0.0326879620552063 : stdgo.GoFloat64),
(0.031545232981443405 : stdgo.GoFloat64),
(0.030414443463087082 : stdgo.GoFloat64),
(0.0292956605553627 : stdgo.GoFloat64),
(0.028188949450850487 : stdgo.GoFloat64),
(0.027094384655356407 : stdgo.GoFloat64),
(0.02601204626262188 : stdgo.GoFloat64),
(0.024942025542259216 : stdgo.GoFloat64),
(0.023884421214461327 : stdgo.GoFloat64),
(0.022839335724711418 : stdgo.GoFloat64),
(0.021806888282299042 : stdgo.GoFloat64),
(0.020787203684449196 : stdgo.GoFloat64),
(0.019780423492193222 : stdgo.GoFloat64),
(0.018786700442433357 : stdgo.GoFloat64),
(0.017806200310587883 : stdgo.GoFloat64),
(0.016839107498526573 : stdgo.GoFloat64),
(0.015885621309280396 : stdgo.GoFloat64),
(0.014945968054234982 : stdgo.GoFloat64),
(0.01402039173990488 : stdgo.GoFloat64),
(0.013109165243804455 : stdgo.GoFloat64),
(0.012212592177093029 : stdgo.GoFloat64),
(0.011331013403832912 : stdgo.GoFloat64),
(0.010464809834957123 : stdgo.GoFloat64),
(0.009614413604140282 : stdgo.GoFloat64),
(0.008780314587056637 : stdgo.GoFloat64),
(0.007963077165186405 : stdgo.GoFloat64),
(0.007163353264331818 : stdgo.GoFloat64),
(0.0063819061033427715 : stdgo.GoFloat64),
(0.005619642324745655 : stdgo.GoFloat64),
(0.004877655766904354 : stdgo.GoFloat64),
(0.004157294984906912 : stdgo.GoFloat64),
(0.003460264764726162 : stdgo.GoFloat64),
(0.0027887988835573196 : stdgo.GoFloat64),
(0.0021459676790982485 : stdgo.GoFloat64),
(0.001536299823783338 : stdgo.GoFloat64),
(0.0009672692976891994 : stdgo.GoFloat64),
(0.0004541343660093844 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>);
var _kn : stdgo.GoArray<stdgo.GoUInt32> = (new stdgo.GoArray<stdgo.GoUInt32>(128, 128, ...[
(1991057938u32 : stdgo.GoUInt32),
(0u32 : stdgo.GoUInt32),
(1611602771u32 : stdgo.GoUInt32),
(1826899878u32 : stdgo.GoUInt32),
(1918584482u32 : stdgo.GoUInt32),
(1969227037u32 : stdgo.GoUInt32),
(2001281515u32 : stdgo.GoUInt32),
(2023368125u32 : stdgo.GoUInt32),
(2039498179u32 : stdgo.GoUInt32),
(2051788381u32 : stdgo.GoUInt32),
(2061460127u32 : stdgo.GoUInt32),
(2069267110u32 : stdgo.GoUInt32),
(2075699398u32 : stdgo.GoUInt32),
(2081089314u32 : stdgo.GoUInt32),
(2085670119u32 : stdgo.GoUInt32),
(2089610331u32 : stdgo.GoUInt32),
(2093034710u32 : stdgo.GoUInt32),
(2096037586u32 : stdgo.GoUInt32),
(2098691595u32 : stdgo.GoUInt32),
(2101053571u32 : stdgo.GoUInt32),
(2103168620u32 : stdgo.GoUInt32),
(2105072996u32 : stdgo.GoUInt32),
(2106796166u32 : stdgo.GoUInt32),
(2108362327u32 : stdgo.GoUInt32),
(2109791536u32 : stdgo.GoUInt32),
(2111100552u32 : stdgo.GoUInt32),
(2112303493u32 : stdgo.GoUInt32),
(2113412330u32 : stdgo.GoUInt32),
(2114437283u32 : stdgo.GoUInt32),
(2115387130u32 : stdgo.GoUInt32),
(2116269447u32 : stdgo.GoUInt32),
(2117090813u32 : stdgo.GoUInt32),
(2117856962u32 : stdgo.GoUInt32),
(2118572919u32 : stdgo.GoUInt32),
(2119243101u32 : stdgo.GoUInt32),
(2119871411u32 : stdgo.GoUInt32),
(2120461303u32 : stdgo.GoUInt32),
(2121015852u32 : stdgo.GoUInt32),
(2121537798u32 : stdgo.GoUInt32),
(2122029592u32 : stdgo.GoUInt32),
(2122493434u32 : stdgo.GoUInt32),
(2122931299u32 : stdgo.GoUInt32),
(2123344971u32 : stdgo.GoUInt32),
(2123736059u32 : stdgo.GoUInt32),
(2124106020u32 : stdgo.GoUInt32),
(2124456175u32 : stdgo.GoUInt32),
(2124787725u32 : stdgo.GoUInt32),
(2125101763u32 : stdgo.GoUInt32),
(2125399283u32 : stdgo.GoUInt32),
(2125681194u32 : stdgo.GoUInt32),
(2125948325u32 : stdgo.GoUInt32),
(2126201433u32 : stdgo.GoUInt32),
(2126441213u32 : stdgo.GoUInt32),
(2126668298u32 : stdgo.GoUInt32),
(2126883268u32 : stdgo.GoUInt32),
(2127086657u32 : stdgo.GoUInt32),
(2127278949u32 : stdgo.GoUInt32),
(2127460589u32 : stdgo.GoUInt32),
(2127631985u32 : stdgo.GoUInt32),
(2127793506u32 : stdgo.GoUInt32),
(2127945490u32 : stdgo.GoUInt32),
(2128088244u32 : stdgo.GoUInt32),
(2128222044u32 : stdgo.GoUInt32),
(2128347141u32 : stdgo.GoUInt32),
(2128463758u32 : stdgo.GoUInt32),
(2128572095u32 : stdgo.GoUInt32),
(2128672327u32 : stdgo.GoUInt32),
(2128764606u32 : stdgo.GoUInt32),
(2128849065u32 : stdgo.GoUInt32),
(2128925811u32 : stdgo.GoUInt32),
(2128994934u32 : stdgo.GoUInt32),
(2129056501u32 : stdgo.GoUInt32),
(2129110560u32 : stdgo.GoUInt32),
(2129157136u32 : stdgo.GoUInt32),
(2129196237u32 : stdgo.GoUInt32),
(2129227847u32 : stdgo.GoUInt32),
(2129251929u32 : stdgo.GoUInt32),
(2129268426u32 : stdgo.GoUInt32),
(2129277255u32 : stdgo.GoUInt32),
(2129278312u32 : stdgo.GoUInt32),
(2129271467u32 : stdgo.GoUInt32),
(2129256561u32 : stdgo.GoUInt32),
(2129233410u32 : stdgo.GoUInt32),
(2129201800u32 : stdgo.GoUInt32),
(2129161480u32 : stdgo.GoUInt32),
(2129112170u32 : stdgo.GoUInt32),
(2129053545u32 : stdgo.GoUInt32),
(2128985244u32 : stdgo.GoUInt32),
(2128906855u32 : stdgo.GoUInt32),
(2128817916u32 : stdgo.GoUInt32),
(2128717911u32 : stdgo.GoUInt32),
(2128606255u32 : stdgo.GoUInt32),
(2128482298u32 : stdgo.GoUInt32),
(2128345305u32 : stdgo.GoUInt32),
(2128194452u32 : stdgo.GoUInt32),
(2128028813u32 : stdgo.GoUInt32),
(2127847342u32 : stdgo.GoUInt32),
(2127648860u32 : stdgo.GoUInt32),
(2127432031u32 : stdgo.GoUInt32),
(2127195339u32 : stdgo.GoUInt32),
(2126937058u32 : stdgo.GoUInt32),
(2126655214u32 : stdgo.GoUInt32),
(2126347546u32 : stdgo.GoUInt32),
(2126011445u32 : stdgo.GoUInt32),
(2125643893u32 : stdgo.GoUInt32),
(2125241376u32 : stdgo.GoUInt32),
(2124799783u32 : stdgo.GoUInt32),
(2124314271u32 : stdgo.GoUInt32),
(2123779094u32 : stdgo.GoUInt32),
(2123187386u32 : stdgo.GoUInt32),
(2122530867u32 : stdgo.GoUInt32),
(2121799464u32 : stdgo.GoUInt32),
(2120980787u32 : stdgo.GoUInt32),
(2120059418u32 : stdgo.GoUInt32),
(2119015917u32 : stdgo.GoUInt32),
(2117825402u32 : stdgo.GoUInt32),
(2116455471u32 : stdgo.GoUInt32),
(2114863093u32 : stdgo.GoUInt32),
(2112989789u32 : stdgo.GoUInt32),
(2110753906u32 : stdgo.GoUInt32),
(2108037662u32 : stdgo.GoUInt32),
(2104664315u32 : stdgo.GoUInt32),
(2100355223u32 : stdgo.GoUInt32),
(2094642347u32 : stdgo.GoUInt32),
(2086670106u32 : stdgo.GoUInt32),
(2074676188u32 : stdgo.GoUInt32),
(2054300022u32 : stdgo.GoUInt32),
(2010539237u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>);
var _wn : stdgo.GoArray<stdgo.GoFloat32> = (new stdgo.GoArray<stdgo.GoFloat32>(128, 128, ...[
(1.7290404663583558e-09 : stdgo.GoFloat64),
(1.2680928529462676e-10 : stdgo.GoFloat64),
(1.689751810696194e-10 : stdgo.GoFloat64),
(1.9862687883343e-10 : stdgo.GoFloat64),
(2.223243117382978e-10 : stdgo.GoFloat64),
(2.4244936613904144e-10 : stdgo.GoFloat64),
(2.601613091623989e-10 : stdgo.GoFloat64),
(2.761198769629658e-10 : stdgo.GoFloat64),
(2.9073962681813725e-10 : stdgo.GoFloat64),
(3.042996965518796e-10 : stdgo.GoFloat64),
(3.169979556627567e-10 : stdgo.GoFloat64),
(3.289802041894774e-10 : stdgo.GoFloat64),
(3.4035738116777736e-10 : stdgo.GoFloat64),
(3.5121602848242617e-10 : stdgo.GoFloat64),
(3.61625090983253e-10 : stdgo.GoFloat64),
(3.7164057942185025e-10 : stdgo.GoFloat64),
(3.813085680537398e-10 : stdgo.GoFloat64),
(3.906675816178762e-10 : stdgo.GoFloat64),
(3.997501218933053e-10 : stdgo.GoFloat64),
(4.0858399996679395e-10 : stdgo.GoFloat64),
(4.1719308563337165e-10 : stdgo.GoFloat64),
(4.255982233303257e-10 : stdgo.GoFloat64),
(4.3381759295968436e-10 : stdgo.GoFloat64),
(4.4186720948857783e-10 : stdgo.GoFloat64),
(4.497613115272969e-10 : stdgo.GoFloat64),
(4.57512583373898e-10 : stdgo.GoFloat64),
(4.6513240481438345e-10 : stdgo.GoFloat64),
(4.726310454117311e-10 : stdgo.GoFloat64),
(4.800177477726209e-10 : stdgo.GoFloat64),
(4.873009773476156e-10 : stdgo.GoFloat64),
(4.944885056978876e-10 : stdgo.GoFloat64),
(5.015873272284921e-10 : stdgo.GoFloat64),
(5.086040477664255e-10 : stdgo.GoFloat64),
(5.155446070048697e-10 : stdgo.GoFloat64),
(5.224146670812502e-10 : stdgo.GoFloat64),
(5.292193350214802e-10 : stdgo.GoFloat64),
(5.359634958068682e-10 : stdgo.GoFloat64),
(5.426517013518151e-10 : stdgo.GoFloat64),
(5.492881705038144e-10 : stdgo.GoFloat64),
(5.558769555769061e-10 : stdgo.GoFloat64),
(5.624218868405251e-10 : stdgo.GoFloat64),
(5.689264614971989e-10 : stdgo.GoFloat64),
(5.75394121238304e-10 : stdgo.GoFloat64),
(5.818281967329142e-10 : stdgo.GoFloat64),
(5.882316855831959e-10 : stdgo.GoFloat64),
(5.946076964136182e-10 : stdgo.GoFloat64),
(6.009590047817426e-10 : stdgo.GoFloat64),
(6.072883862451306e-10 : stdgo.GoFloat64),
(6.135985053390414e-10 : stdgo.GoFloat64),
(6.19892026598734e-10 : stdgo.GoFloat64),
(6.261713370037114e-10 : stdgo.GoFloat64),
(6.324390455780815e-10 : stdgo.GoFloat64),
(6.386973727678935e-10 : stdgo.GoFloat64),
(6.449488165749528e-10 : stdgo.GoFloat64),
(6.511955974453087e-10 : stdgo.GoFloat64),
(6.574400468473129e-10 : stdgo.GoFloat64),
(6.636843297158634e-10 : stdgo.GoFloat64),
(6.699307220081607e-10 : stdgo.GoFloat64),
(6.761814441702541e-10 : stdgo.GoFloat64),
(6.824387166481927e-10 : stdgo.GoFloat64),
(6.887046488657234e-10 : stdgo.GoFloat64),
(6.949815167800466e-10 : stdgo.GoFloat64),
(7.012714853260604e-10 : stdgo.GoFloat64),
(7.075767749498141e-10 : stdgo.GoFloat64),
(7.13899661608508e-10 : stdgo.GoFloat64),
(7.202424212593428e-10 : stdgo.GoFloat64),
(7.266072743483676e-10 : stdgo.GoFloat64),
(7.329966078550854e-10 : stdgo.GoFloat64),
(7.394128087589991e-10 : stdgo.GoFloat64),
(7.458582640396116e-10 : stdgo.GoFloat64),
(7.523354716987285e-10 : stdgo.GoFloat64),
(7.588469852493063e-10 : stdgo.GoFloat64),
(7.653954137154528e-10 : stdgo.GoFloat64),
(7.719834771435785e-10 : stdgo.GoFloat64),
(7.786139510912449e-10 : stdgo.GoFloat64),
(7.852897221383159e-10 : stdgo.GoFloat64),
(7.920137878869582e-10 : stdgo.GoFloat64),
(7.987892014504894e-10 : stdgo.GoFloat64),
(8.056192379868321e-10 : stdgo.GoFloat64),
(8.125072836762115e-10 : stdgo.GoFloat64),
(8.194568912323064e-10 : stdgo.GoFloat64),
(8.264716688799467e-10 : stdgo.GoFloat64),
(8.3355555791087e-10 : stdgo.GoFloat64),
(8.407127216614185e-10 : stdgo.GoFloat64),
(8.479473234679347e-10 : stdgo.GoFloat64),
(8.552640262671218e-10 : stdgo.GoFloat64),
(8.626675485068347e-10 : stdgo.GoFloat64),
(8.701631637464402e-10 : stdgo.GoFloat64),
(8.777562010564566e-10 : stdgo.GoFloat64),
(8.854524335966119e-10 : stdgo.GoFloat64),
(8.932581896381464e-10 : stdgo.GoFloat64),
(9.011799639857543e-10 : stdgo.GoFloat64),
(9.092249730890956e-10 : stdgo.GoFloat64),
(9.174008219758889e-10 : stdgo.GoFloat64),
(9.25715837318819e-10 : stdgo.GoFloat64),
(9.341788453909317e-10 : stdgo.GoFloat64),
(9.42799727177146e-10 : stdgo.GoFloat64),
(9.515889187738935e-10 : stdgo.GoFloat64),
(9.605578554783278e-10 : stdgo.GoFloat64),
(9.697193048552322e-10 : stdgo.GoFloat64),
(9.790869226478094e-10 : stdgo.GoFloat64),
(9.886760299337993e-10 : stdgo.GoFloat64),
(9.985036131254788e-10 : stdgo.GoFloat64),
(1.008588212947359e-09 : stdgo.GoFloat64),
(1.0189509236369076e-09 : stdgo.GoFloat64),
(1.0296150598776421e-09 : stdgo.GoFloat64),
(1.040606933955246e-09 : stdgo.GoFloat64),
(1.0519566329136865e-09 : stdgo.GoFloat64),
(1.0636980185552147e-09 : stdgo.GoFloat64),
(1.0758701707302976e-09 : stdgo.GoFloat64),
(1.0885182755160372e-09 : stdgo.GoFloat64),
(1.101694735439196e-09 : stdgo.GoFloat64),
(1.115461056855338e-09 : stdgo.GoFloat64),
(1.1298901814171813e-09 : stdgo.GoFloat64),
(1.1450695946990663e-09 : stdgo.GoFloat64),
(1.1611052119775422e-09 : stdgo.GoFloat64),
(1.178127595480305e-09 : stdgo.GoFloat64),
(1.1962995039027646e-09 : stdgo.GoFloat64),
(1.2158286599728285e-09 : stdgo.GoFloat64),
(1.2369856250415978e-09 : stdgo.GoFloat64),
(1.2601323318151003e-09 : stdgo.GoFloat64),
(1.2857697129220469e-09 : stdgo.GoFloat64),
(1.3146201904845611e-09 : stdgo.GoFloat64),
(1.3477839955200466e-09 : stdgo.GoFloat64),
(1.3870635751089821e-09 : stdgo.GoFloat64),
(1.43574030442295e-09 : stdgo.GoFloat64),
(1.5008658760251592e-09 : stdgo.GoFloat64),
(1.6030947680434338e-09 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>);
var _fn : stdgo.GoArray<stdgo.GoFloat32> = (new stdgo.GoArray<stdgo.GoFloat32>(128, 128, ...[
(1 : stdgo.GoFloat64),
(0.963599681854248 : stdgo.GoFloat64),
(0.9362826943397522 : stdgo.GoFloat64),
(0.9130436182022095 : stdgo.GoFloat64),
(0.8922816514968872 : stdgo.GoFloat64),
(0.8732430338859558 : stdgo.GoFloat64),
(0.8555005788803101 : stdgo.GoFloat64),
(0.8387836217880249 : stdgo.GoFloat64),
(0.8229072093963623 : stdgo.GoFloat64),
(0.8077383041381836 : stdgo.GoFloat64),
(0.7931770086288452 : stdgo.GoFloat64),
(0.7791460752487183 : stdgo.GoFloat64),
(0.7655841708183289 : stdgo.GoFloat64),
(0.7524415850639343 : stdgo.GoFloat64),
(0.7396772503852844 : stdgo.GoFloat64),
(0.7272568941116333 : stdgo.GoFloat64),
(0.7151514887809753 : stdgo.GoFloat64),
(0.7033361196517944 : stdgo.GoFloat64),
(0.6917891502380371 : stdgo.GoFloat64),
(0.6804918646812439 : stdgo.GoFloat64),
(0.6694276928901672 : stdgo.GoFloat64),
(0.6585819721221924 : stdgo.GoFloat64),
(0.6479418277740479 : stdgo.GoFloat64),
(0.6374954581260681 : stdgo.GoFloat64),
(0.6272324919700623 : stdgo.GoFloat64),
(0.6171433925628662 : stdgo.GoFloat64),
(0.6072195172309875 : stdgo.GoFloat64),
(0.5974531769752502 : stdgo.GoFloat64),
(0.5878370404243469 : stdgo.GoFloat64),
(0.5783646702766418 : stdgo.GoFloat64),
(0.5690299868583679 : stdgo.GoFloat64),
(0.5598273873329163 : stdgo.GoFloat64),
(0.550751805305481 : stdgo.GoFloat64),
(0.5417983531951904 : stdgo.GoFloat64),
(0.5329626798629761 : stdgo.GoFloat64),
(0.5242405533790588 : stdgo.GoFloat64),
(0.5156282186508179 : stdgo.GoFloat64),
(0.5071220397949219 : stdgo.GoFloat64),
(0.49871864914894104 : stdgo.GoFloat64),
(0.4904148280620575 : stdgo.GoFloat64),
(0.48220765590667725 : stdgo.GoFloat64),
(0.47409430146217346 : stdgo.GoFloat64),
(0.466072142124176 : stdgo.GoFloat64),
(0.45813870429992676 : stdgo.GoFloat64),
(0.45029163360595703 : stdgo.GoFloat64),
(0.44252872467041016 : stdgo.GoFloat64),
(0.4348478317260742 : stdgo.GoFloat64),
(0.42724698781967163 : stdgo.GoFloat64),
(0.41972434520721436 : stdgo.GoFloat64),
(0.41227802634239197 : stdgo.GoFloat64),
(0.40490642189979553 : stdgo.GoFloat64),
(0.39760786294937134 : stdgo.GoFloat64),
(0.3903807997703552 : stdgo.GoFloat64),
(0.3832238018512726 : stdgo.GoFloat64),
(0.3761354684829712 : stdgo.GoFloat64),
(0.3691144585609436 : stdgo.GoFloat64),
(0.36215949058532715 : stdgo.GoFloat64),
(0.3552693724632263 : stdgo.GoFloat64),
(0.3484429717063904 : stdgo.GoFloat64),
(0.3416791558265686 : stdgo.GoFloat64),
(0.33497685194015503 : stdgo.GoFloat64),
(0.32833510637283325 : stdgo.GoFloat64),
(0.3217529058456421 : stdgo.GoFloat64),
(0.3152293860912323 : stdgo.GoFloat64),
(0.30876362323760986 : stdgo.GoFloat64),
(0.3023548424243927 : stdgo.GoFloat64),
(0.2960021495819092 : stdgo.GoFloat64),
(0.2897048592567444 : stdgo.GoFloat64),
(0.28346219658851624 : stdgo.GoFloat64),
(0.2772735059261322 : stdgo.GoFloat64),
(0.271138072013855 : stdgo.GoFloat64),
(0.2650552988052368 : stdgo.GoFloat64),
(0.25902456045150757 : stdgo.GoFloat64),
(0.25304529070854187 : stdgo.GoFloat64),
(0.24711695313453674 : stdgo.GoFloat64),
(0.24123899638652802 : stdgo.GoFloat64),
(0.23541094362735748 : stdgo.GoFloat64),
(0.22963231801986694 : stdgo.GoFloat64),
(0.22390270233154297 : stdgo.GoFloat64),
(0.21822164952754974 : stdgo.GoFloat64),
(0.21258877217769623 : stdgo.GoFloat64),
(0.20700371265411377 : stdgo.GoFloat64),
(0.20146611332893372 : stdgo.GoFloat64),
(0.1959756463766098 : stdgo.GoFloat64),
(0.19053204357624054 : stdgo.GoFloat64),
(0.18513499200344086 : stdgo.GoFloat64),
(0.17978426814079285 : stdgo.GoFloat64),
(0.1744796335697174 : stdgo.GoFloat64),
(0.16922089457511902 : stdgo.GoFloat64),
(0.16400785744190216 : stdgo.GoFloat64),
(0.1588403731584549 : stdgo.GoFloat64),
(0.15371830761432648 : stdgo.GoFloat64),
(0.14864157140254974 : stdgo.GoFloat64),
(0.14361007511615753 : stdgo.GoFloat64),
(0.13862377405166626 : stdgo.GoFloat64),
(0.13368265330791473 : stdgo.GoFloat64),
(0.12878671288490295 : stdgo.GoFloat64),
(0.12393598258495331 : stdgo.GoFloat64),
(0.11913054436445236 : stdgo.GoFloat64),
(0.11437050998210907 : stdgo.GoFloat64),
(0.10965602099895477 : stdgo.GoFloat64),
(0.1049872562289238 : stdgo.GoFloat64),
(0.10036443918943405 : stdgo.GoFloat64),
(0.09578784555196762 : stdgo.GoFloat64),
(0.09125780314207077 : stdgo.GoFloat64),
(0.08677466958761215 : stdgo.GoFloat64),
(0.08233889937400818 : stdgo.GoFloat64),
(0.07795098423957825 : stdgo.GoFloat64),
(0.07361150532960892 : stdgo.GoFloat64),
(0.06932111829519272 : stdgo.GoFloat64),
(0.06508058309555054 : stdgo.GoFloat64),
(0.06089077144861221 : stdgo.GoFloat64),
(0.05675266310572624 : stdgo.GoFloat64),
(0.05266740173101425 : stdgo.GoFloat64),
(0.048636294901371 : stdgo.GoFloat64),
(0.044660862535238266 : stdgo.GoFloat64),
(0.040742866694927216 : stdgo.GoFloat64),
(0.03688438981771469 : stdgo.GoFloat64),
(0.03308788686990738 : stdgo.GoFloat64),
(0.029356317594647408 : stdgo.GoFloat64),
(0.025693291798233986 : stdgo.GoFloat64),
(0.02210330404341221 : stdgo.GoFloat64),
(0.018592102453112602 : stdgo.GoFloat64),
(0.015167297795414925 : stdgo.GoFloat64),
(0.011839478276669979 : stdgo.GoFloat64),
(0.0086244847625494 : stdgo.GoFloat64),
(0.005548994988203049 : stdgo.GoFloat64),
(0.0026696291752159595 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.GoArray<stdgo.GoFloat32>);
var _randautoseed : stdgo.Ref<stdgo._internal.internal.godebug.Godebug.Setting> = stdgo._internal.internal.godebug.Godebug.new_(("randautoseed" : stdgo.GoString));
var _rngCooked : stdgo.GoArray<stdgo.GoInt64> = (new stdgo.GoArray<stdgo.GoInt64>(607, 607, ...[
(-4181792142133755926i64 : stdgo.GoInt64),
(-4576982950128230565i64 : stdgo.GoInt64),
(1395769623340756751i64 : stdgo.GoInt64),
(5333664234075297259i64 : stdgo.GoInt64),
(-6347679516498800754i64 : stdgo.GoInt64),
(9033628115061424579i64 : stdgo.GoInt64),
(7143218595135194537i64 : stdgo.GoInt64),
(4812947590706362721i64 : stdgo.GoInt64),
(7937252194349799378i64 : stdgo.GoInt64),
(5307299880338848416i64 : stdgo.GoInt64),
(8209348851763925077i64 : stdgo.GoInt64),
(-7107630437535961764i64 : stdgo.GoInt64),
(4593015457530856296i64 : stdgo.GoInt64),
(8140875735541888011i64 : stdgo.GoInt64),
(-5903942795589686782i64 : stdgo.GoInt64),
(-603556388664454774i64 : stdgo.GoInt64),
(-7496297993371156308i64 : stdgo.GoInt64),
(113108499721038619i64 : stdgo.GoInt64),
(4569519971459345583i64 : stdgo.GoInt64),
(-4160538177779461077i64 : stdgo.GoInt64),
(-6835753265595711384i64 : stdgo.GoInt64),
(-6507240692498089696i64 : stdgo.GoInt64),
(6559392774825876886i64 : stdgo.GoInt64),
(7650093201692370310i64 : stdgo.GoInt64),
(7684323884043752161i64 : stdgo.GoInt64),
(-8965504200858744418i64 : stdgo.GoInt64),
(-2629915517445760644i64 : stdgo.GoInt64),
(271327514973697897i64 : stdgo.GoInt64),
(-6433985589514657524i64 : stdgo.GoInt64),
(1065192797246149621i64 : stdgo.GoInt64),
(3344507881999356393i64 : stdgo.GoInt64),
(-4763574095074709175i64 : stdgo.GoInt64),
(7465081662728599889i64 : stdgo.GoInt64),
(1014950805555097187i64 : stdgo.GoInt64),
(-4773931307508785033i64 : stdgo.GoInt64),
(-5742262670416273165i64 : stdgo.GoInt64),
(2418672789110888383i64 : stdgo.GoInt64),
(5796562887576294778i64 : stdgo.GoInt64),
(4484266064449540171i64 : stdgo.GoInt64),
(3738982361971787048i64 : stdgo.GoInt64),
(-4699774852342421385i64 : stdgo.GoInt64),
(10530508058128498i64 : stdgo.GoInt64),
(-589538253572429690i64 : stdgo.GoInt64),
(-6598062107225984180i64 : stdgo.GoInt64),
(8660405965245884302i64 : stdgo.GoInt64),
(10162832508971942i64 : stdgo.GoInt64),
(-2682657355892958417i64 : stdgo.GoInt64),
(7031802312784620857i64 : stdgo.GoInt64),
(6240911277345944669i64 : stdgo.GoInt64),
(831864355460801054i64 : stdgo.GoInt64),
(-1218937899312622917i64 : stdgo.GoInt64),
(2116287251661052151i64 : stdgo.GoInt64),
(2202309800992166967i64 : stdgo.GoInt64),
(9161020366945053561i64 : stdgo.GoInt64),
(4069299552407763864i64 : stdgo.GoInt64),
(4936383537992622449i64 : stdgo.GoInt64),
(457351505131524928i64 : stdgo.GoInt64),
(-8881176990926596454i64 : stdgo.GoInt64),
(-6375600354038175299i64 : stdgo.GoInt64),
(-7155351920868399290i64 : stdgo.GoInt64),
(4368649989588021065i64 : stdgo.GoInt64),
(887231587095185257i64 : stdgo.GoInt64),
(-3659780529968199312i64 : stdgo.GoInt64),
(-2407146836602825512i64 : stdgo.GoInt64),
(5616972787034086048i64 : stdgo.GoInt64),
(-751562733459939242i64 : stdgo.GoInt64),
(1686575021641186857i64 : stdgo.GoInt64),
(-5177887698780513806i64 : stdgo.GoInt64),
(-4979215821652996885i64 : stdgo.GoInt64),
(-1375154703071198421i64 : stdgo.GoInt64),
(5632136521049761902i64 : stdgo.GoInt64),
(-8390088894796940536i64 : stdgo.GoInt64),
(-193645528485698615i64 : stdgo.GoInt64),
(-5979788902190688516i64 : stdgo.GoInt64),
(-4907000935050298721i64 : stdgo.GoInt64),
(-285522056888777828i64 : stdgo.GoInt64),
(-2776431630044341707i64 : stdgo.GoInt64),
(1679342092332374735i64 : stdgo.GoInt64),
(6050638460742422078i64 : stdgo.GoInt64),
(-2229851317345194226i64 : stdgo.GoInt64),
(-1582494184340482199i64 : stdgo.GoInt64),
(5881353426285907985i64 : stdgo.GoInt64),
(812786550756860885i64 : stdgo.GoInt64),
(4541845584483343330i64 : stdgo.GoInt64),
(-6497901820577766722i64 : stdgo.GoInt64),
(4980675660146853729i64 : stdgo.GoInt64),
(-4012602956251539747i64 : stdgo.GoInt64),
(-329088717864244987i64 : stdgo.GoInt64),
(-2896929232104691526i64 : stdgo.GoInt64),
(1495812843684243920i64 : stdgo.GoInt64),
(-2153620458055647789i64 : stdgo.GoInt64),
(7370257291860230865i64 : stdgo.GoInt64),
(-2466442761497833547i64 : stdgo.GoInt64),
(4706794511633873654i64 : stdgo.GoInt64),
(-1398851569026877145i64 : stdgo.GoInt64),
(8549875090542453214i64 : stdgo.GoInt64),
(-9189721207376179652i64 : stdgo.GoInt64),
(-7894453601103453165i64 : stdgo.GoInt64),
(7297902601803624459i64 : stdgo.GoInt64),
(1011190183918857495i64 : stdgo.GoInt64),
(-6985347000036920864i64 : stdgo.GoInt64),
(5147159997473910359i64 : stdgo.GoInt64),
(-8326859945294252826i64 : stdgo.GoInt64),
(2659470849286379941i64 : stdgo.GoInt64),
(6097729358393448602i64 : stdgo.GoInt64),
(-7491646050550022124i64 : stdgo.GoInt64),
(-5117116194870963097i64 : stdgo.GoInt64),
(-896216826133240300i64 : stdgo.GoInt64),
(-745860416168701406i64 : stdgo.GoInt64),
(5803876044675762232i64 : stdgo.GoInt64),
(-787954255994554146i64 : stdgo.GoInt64),
(-3234519180203704564i64 : stdgo.GoInt64),
(-4507534739750823898i64 : stdgo.GoInt64),
(-1657200065590290694i64 : stdgo.GoInt64),
(505808562678895611i64 : stdgo.GoInt64),
(-4153273856159712438i64 : stdgo.GoInt64),
(-8381261370078904295i64 : stdgo.GoInt64),
(572156825025677802i64 : stdgo.GoInt64),
(1791881013492340891i64 : stdgo.GoInt64),
(3393267094866038768i64 : stdgo.GoInt64),
(-5444650186382539299i64 : stdgo.GoInt64),
(2352769483186201278i64 : stdgo.GoInt64),
(-7930912453007408350i64 : stdgo.GoInt64),
(-325464993179687389i64 : stdgo.GoInt64),
(-3441562999710612272i64 : stdgo.GoInt64),
(-6489413242825283295i64 : stdgo.GoInt64),
(5092019688680754699i64 : stdgo.GoInt64),
(-227247482082248967i64 : stdgo.GoInt64),
(4234737173186232084i64 : stdgo.GoInt64),
(5027558287275472836i64 : stdgo.GoInt64),
(4635198586344772304i64 : stdgo.GoInt64),
(-536033143587636457i64 : stdgo.GoInt64),
(5907508150730407386i64 : stdgo.GoInt64),
(-8438615781380831356i64 : stdgo.GoInt64),
(972392927514829904i64 : stdgo.GoInt64),
(-3801314342046600696i64 : stdgo.GoInt64),
(-4064951393885491917i64 : stdgo.GoInt64),
(-174840358296132583i64 : stdgo.GoInt64),
(2407211146698877100i64 : stdgo.GoInt64),
(-1640089820333676239i64 : stdgo.GoInt64),
(3940796514530962282i64 : stdgo.GoInt64),
(-5882197405809569433i64 : stdgo.GoInt64),
(3095313889586102949i64 : stdgo.GoInt64),
(-1818050141166537098i64 : stdgo.GoInt64),
(5832080132947175283i64 : stdgo.GoInt64),
(7890064875145919662i64 : stdgo.GoInt64),
(8184139210799583195i64 : stdgo.GoInt64),
(-8073512175445549678i64 : stdgo.GoInt64),
(-7758774793014564506i64 : stdgo.GoInt64),
(-4581724029666783935i64 : stdgo.GoInt64),
(3516491885471466898i64 : stdgo.GoInt64),
(-8267083515063118116i64 : stdgo.GoInt64),
(6657089965014657519i64 : stdgo.GoInt64),
(5220884358887979358i64 : stdgo.GoInt64),
(1796677326474620641i64 : stdgo.GoInt64),
(5340761970648932916i64 : stdgo.GoInt64),
(1147977171614181568i64 : stdgo.GoInt64),
(5066037465548252321i64 : stdgo.GoInt64),
(2574765911837859848i64 : stdgo.GoInt64),
(1085848279845204775i64 : stdgo.GoInt64),
(-5873264506986385449i64 : stdgo.GoInt64),
(6116438694366558490i64 : stdgo.GoInt64),
(2107701075971293812i64 : stdgo.GoInt64),
(-7420077970933506541i64 : stdgo.GoInt64),
(2469478054175558874i64 : stdgo.GoInt64),
(-1855128755834809824i64 : stdgo.GoInt64),
(-5431463669011098282i64 : stdgo.GoInt64),
(-9038325065738319171i64 : stdgo.GoInt64),
(-6966276280341336160i64 : stdgo.GoInt64),
(7217693971077460129i64 : stdgo.GoInt64),
(-8314322083775271549i64 : stdgo.GoInt64),
(7196649268545224266i64 : stdgo.GoInt64),
(-3585711691453906209i64 : stdgo.GoInt64),
(-5267827091426810625i64 : stdgo.GoInt64),
(8057528650917418961i64 : stdgo.GoInt64),
(-5084103596553648165i64 : stdgo.GoInt64),
(-2601445448341207749i64 : stdgo.GoInt64),
(-7850010900052094367i64 : stdgo.GoInt64),
(6527366231383600011i64 : stdgo.GoInt64),
(3507654575162700890i64 : stdgo.GoInt64),
(9202058512774729859i64 : stdgo.GoInt64),
(1954818376891585542i64 : stdgo.GoInt64),
(-2582991129724600103i64 : stdgo.GoInt64),
(8299563319178235687i64 : stdgo.GoInt64),
(-5321504681635821435i64 : stdgo.GoInt64),
(7046310742295574065i64 : stdgo.GoInt64),
(-2376176645520785576i64 : stdgo.GoInt64),
(-7650733936335907755i64 : stdgo.GoInt64),
(8850422670118399721i64 : stdgo.GoInt64),
(3631909142291992901i64 : stdgo.GoInt64),
(5158881091950831288i64 : stdgo.GoInt64),
(-6340413719511654215i64 : stdgo.GoInt64),
(4763258931815816403i64 : stdgo.GoInt64),
(6280052734341785344i64 : stdgo.GoInt64),
(-4979582628649810958i64 : stdgo.GoInt64),
(2043464728020827976i64 : stdgo.GoInt64),
(-2678071570832690343i64 : stdgo.GoInt64),
(4562580375758598164i64 : stdgo.GoInt64),
(5495451168795427352i64 : stdgo.GoInt64),
(-7485059175264624713i64 : stdgo.GoInt64),
(553004618757816492i64 : stdgo.GoInt64),
(6895160632757959823i64 : stdgo.GoInt64),
(-989748114590090637i64 : stdgo.GoInt64),
(7139506338801360852i64 : stdgo.GoInt64),
(-672480814466784139i64 : stdgo.GoInt64),
(5535668688139305547i64 : stdgo.GoInt64),
(2430933853350256242i64 : stdgo.GoInt64),
(-3821430778991574732i64 : stdgo.GoInt64),
(-1063731997747047009i64 : stdgo.GoInt64),
(-3065878205254005442i64 : stdgo.GoInt64),
(7632066283658143750i64 : stdgo.GoInt64),
(6308328381617103346i64 : stdgo.GoInt64),
(3681878764086140361i64 : stdgo.GoInt64),
(3289686137190109749i64 : stdgo.GoInt64),
(6587997200611086848i64 : stdgo.GoInt64),
(244714774258135476i64 : stdgo.GoInt64),
(-5143583659437639708i64 : stdgo.GoInt64),
(8090302575944624335i64 : stdgo.GoInt64),
(2945117363431356361i64 : stdgo.GoInt64),
(-8359047641006034763i64 : stdgo.GoInt64),
(3009039260312620700i64 : stdgo.GoInt64),
(-793344576772241777i64 : stdgo.GoInt64),
(401084700045993341i64 : stdgo.GoInt64),
(-1968749590416080887i64 : stdgo.GoInt64),
(4707864159563588614i64 : stdgo.GoInt64),
(-3583123505891281857i64 : stdgo.GoInt64),
(-3240864324164777915i64 : stdgo.GoInt64),
(-5908273794572565703i64 : stdgo.GoInt64),
(-3719524458082857382i64 : stdgo.GoInt64),
(-5281400669679581926i64 : stdgo.GoInt64),
(8118566580304798074i64 : stdgo.GoInt64),
(3839261274019871296i64 : stdgo.GoInt64),
(7062410411742090847i64 : stdgo.GoInt64),
(-8481991033874568140i64 : stdgo.GoInt64),
(6027994129690250817i64 : stdgo.GoInt64),
(-6725542042704711878i64 : stdgo.GoInt64),
(-2971981702428546974i64 : stdgo.GoInt64),
(-7854441788951256975i64 : stdgo.GoInt64),
(8809096399316380241i64 : stdgo.GoInt64),
(6492004350391900708i64 : stdgo.GoInt64),
(2462145737463489636i64 : stdgo.GoInt64),
(-8818543617934476634i64 : stdgo.GoInt64),
(-5070345602623085213i64 : stdgo.GoInt64),
(-8961586321599299868i64 : stdgo.GoInt64),
(-3758656652254704451i64 : stdgo.GoInt64),
(-8630661632476012791i64 : stdgo.GoInt64),
(6764129236657751224i64 : stdgo.GoInt64),
(-709716318315418359i64 : stdgo.GoInt64),
(-3403028373052861600i64 : stdgo.GoInt64),
(-8838073512170985897i64 : stdgo.GoInt64),
(-3999237033416576341i64 : stdgo.GoInt64),
(-2920240395515973663i64 : stdgo.GoInt64),
(-2073249475545404416i64 : stdgo.GoInt64),
(368107899140673753i64 : stdgo.GoInt64),
(-6108185202296464250i64 : stdgo.GoInt64),
(-6307735683270494757i64 : stdgo.GoInt64),
(4782583894627718279i64 : stdgo.GoInt64),
(6718292300699989587i64 : stdgo.GoInt64),
(8387085186914375220i64 : stdgo.GoInt64),
(3387513132024756289i64 : stdgo.GoInt64),
(4654329375432538231i64 : stdgo.GoInt64),
(-292704475491394206i64 : stdgo.GoInt64),
(-3848998599978456535i64 : stdgo.GoInt64),
(7623042350483453954i64 : stdgo.GoInt64),
(7725442901813263321i64 : stdgo.GoInt64),
(9186225467561587250i64 : stdgo.GoInt64),
(-5132344747257272453i64 : stdgo.GoInt64),
(-6865740430362196008i64 : stdgo.GoInt64),
(2530936820058611833i64 : stdgo.GoInt64),
(1636551876240043639i64 : stdgo.GoInt64),
(-3658707362519810009i64 : stdgo.GoInt64),
(1452244145334316253i64 : stdgo.GoInt64),
(-7161729655835084979i64 : stdgo.GoInt64),
(-7943791770359481772i64 : stdgo.GoInt64),
(9108481583171221009i64 : stdgo.GoInt64),
(-3200093350120725999i64 : stdgo.GoInt64),
(5007630032676973346i64 : stdgo.GoInt64),
(2153168792952589781i64 : stdgo.GoInt64),
(6720334534964750538i64 : stdgo.GoInt64),
(-3181825545719981703i64 : stdgo.GoInt64),
(3433922409283786309i64 : stdgo.GoInt64),
(2285479922797300912i64 : stdgo.GoInt64),
(3110614940896576130i64 : stdgo.GoInt64),
(-2856812446131932915i64 : stdgo.GoInt64),
(-3804580617188639299i64 : stdgo.GoInt64),
(7163298419643543757i64 : stdgo.GoInt64),
(4891138053923696990i64 : stdgo.GoInt64),
(580618510277907015i64 : stdgo.GoInt64),
(1684034065251686769i64 : stdgo.GoInt64),
(4429514767357295841i64 : stdgo.GoInt64),
(-8893025458299325803i64 : stdgo.GoInt64),
(-8103734041042601133i64 : stdgo.GoInt64),
(7177515271653460134i64 : stdgo.GoInt64),
(4589042248470800257i64 : stdgo.GoInt64),
(-1530083407795771245i64 : stdgo.GoInt64),
(143607045258444228i64 : stdgo.GoInt64),
(246994305896273627i64 : stdgo.GoInt64),
(-8356954712051676521i64 : stdgo.GoInt64),
(6473547110565816071i64 : stdgo.GoInt64),
(3092379936208876896i64 : stdgo.GoInt64),
(2058427839513754051i64 : stdgo.GoInt64),
(-4089587328327907870i64 : stdgo.GoInt64),
(8785882556301281247i64 : stdgo.GoInt64),
(-3074039370013608197i64 : stdgo.GoInt64),
(-637529855400303673i64 : stdgo.GoInt64),
(6137678347805511274i64 : stdgo.GoInt64),
(-7152924852417805802i64 : stdgo.GoInt64),
(5708223427705576541i64 : stdgo.GoInt64),
(-3223714144396531304i64 : stdgo.GoInt64),
(4358391411789012426i64 : stdgo.GoInt64),
(325123008708389849i64 : stdgo.GoInt64),
(6837621693887290924i64 : stdgo.GoInt64),
(4843721905315627004i64 : stdgo.GoInt64),
(-3212720814705499393i64 : stdgo.GoInt64),
(-3825019837890901156i64 : stdgo.GoInt64),
(4602025990114250980i64 : stdgo.GoInt64),
(1044646352569048800i64 : stdgo.GoInt64),
(9106614159853161675i64 : stdgo.GoInt64),
(-8394115921626182539i64 : stdgo.GoInt64),
(-4304087667751778808i64 : stdgo.GoInt64),
(2681532557646850893i64 : stdgo.GoInt64),
(3681559472488511871i64 : stdgo.GoInt64),
(-3915372517896561773i64 : stdgo.GoInt64),
(-2889241648411946534i64 : stdgo.GoInt64),
(-6564663803938238204i64 : stdgo.GoInt64),
(-8060058171802589521i64 : stdgo.GoInt64),
(581945337509520675i64 : stdgo.GoInt64),
(3648778920718647903i64 : stdgo.GoInt64),
(-4799698790548231394i64 : stdgo.GoInt64),
(-7602572252857820065i64 : stdgo.GoInt64),
(220828013409515943i64 : stdgo.GoInt64),
(-1072987336855386047i64 : stdgo.GoInt64),
(4287360518296753003i64 : stdgo.GoInt64),
(-4633371852008891965i64 : stdgo.GoInt64),
(5513660857261085186i64 : stdgo.GoInt64),
(-2258542936462001533i64 : stdgo.GoInt64),
(-8744380348503999773i64 : stdgo.GoInt64),
(8746140185685648781i64 : stdgo.GoInt64),
(228500091334420247i64 : stdgo.GoInt64),
(1356187007457302238i64 : stdgo.GoInt64),
(3019253992034194581i64 : stdgo.GoInt64),
(3152601605678500003i64 : stdgo.GoInt64),
(-8793219284148773595i64 : stdgo.GoInt64),
(5559581553696971176i64 : stdgo.GoInt64),
(4916432985369275664i64 : stdgo.GoInt64),
(-8559797105120221417i64 : stdgo.GoInt64),
(-5802598197927043732i64 : stdgo.GoInt64),
(2868348622579915573i64 : stdgo.GoInt64),
(-7224052902810357288i64 : stdgo.GoInt64),
(-5894682518218493085i64 : stdgo.GoInt64),
(2587672709781371173i64 : stdgo.GoInt64),
(-7706116723325376475i64 : stdgo.GoInt64),
(3092343956317362483i64 : stdgo.GoInt64),
(-5561119517847711700i64 : stdgo.GoInt64),
(972445599196498113i64 : stdgo.GoInt64),
(-1558506600978816441i64 : stdgo.GoInt64),
(1708913533482282562i64 : stdgo.GoInt64),
(-2305554874185907314i64 : stdgo.GoInt64),
(-6005743014309462908i64 : stdgo.GoInt64),
(-6653329009633068701i64 : stdgo.GoInt64),
(-483583197311151195i64 : stdgo.GoInt64),
(2488075924621352812i64 : stdgo.GoInt64),
(-4529369641467339140i64 : stdgo.GoInt64),
(-4663743555056261452i64 : stdgo.GoInt64),
(2997203966153298104i64 : stdgo.GoInt64),
(1282559373026354493i64 : stdgo.GoInt64),
(240113143146674385i64 : stdgo.GoInt64),
(8665713329246516443i64 : stdgo.GoInt64),
(628141331766346752i64 : stdgo.GoInt64),
(-4651421219668005332i64 : stdgo.GoInt64),
(-7750560848702540400i64 : stdgo.GoInt64),
(7596648026010355826i64 : stdgo.GoInt64),
(-3132152619100351065i64 : stdgo.GoInt64),
(7834161864828164065i64 : stdgo.GoInt64),
(7103445518877254909i64 : stdgo.GoInt64),
(4390861237357459201i64 : stdgo.GoInt64),
(-4780718172614204074i64 : stdgo.GoInt64),
(-319889632007444440i64 : stdgo.GoInt64),
(622261699494173647i64 : stdgo.GoInt64),
(-3186110786557562560i64 : stdgo.GoInt64),
(-8718967088789066690i64 : stdgo.GoInt64),
(-1948156510637662747i64 : stdgo.GoInt64),
(-8212195255998774408i64 : stdgo.GoInt64),
(-7028621931231314745i64 : stdgo.GoInt64),
(2623071828615234808i64 : stdgo.GoInt64),
(-4066058308780939700i64 : stdgo.GoInt64),
(-5484966924888173764i64 : stdgo.GoInt64),
(-6683604512778046238i64 : stdgo.GoInt64),
(-6756087640505506466i64 : stdgo.GoInt64),
(5256026990536851868i64 : stdgo.GoInt64),
(7841086888628396109i64 : stdgo.GoInt64),
(6640857538655893162i64 : stdgo.GoInt64),
(-8021284697816458310i64 : stdgo.GoInt64),
(-7109857044414059830i64 : stdgo.GoInt64),
(-1689021141511844405i64 : stdgo.GoInt64),
(-4298087301956291063i64 : stdgo.GoInt64),
(-4077748265377282003i64 : stdgo.GoInt64),
(-998231156719803476i64 : stdgo.GoInt64),
(2719520354384050532i64 : stdgo.GoInt64),
(9132346697815513771i64 : stdgo.GoInt64),
(4332154495710163773i64 : stdgo.GoInt64),
(-2085582442760428892i64 : stdgo.GoInt64),
(6994721091344268833i64 : stdgo.GoInt64),
(-2556143461985726874i64 : stdgo.GoInt64),
(-8567931991128098309i64 : stdgo.GoInt64),
(59934747298466858i64 : stdgo.GoInt64),
(-3098398008776739403i64 : stdgo.GoInt64),
(-265597256199410390i64 : stdgo.GoInt64),
(2332206071942466437i64 : stdgo.GoInt64),
(-7522315324568406181i64 : stdgo.GoInt64),
(3154897383618636503i64 : stdgo.GoInt64),
(-7585605855467168281i64 : stdgo.GoInt64),
(-6762850759087199275i64 : stdgo.GoInt64),
(197309393502684135i64 : stdgo.GoInt64),
(-8579694182469508493i64 : stdgo.GoInt64),
(2543179307861934850i64 : stdgo.GoInt64),
(4350769010207485119i64 : stdgo.GoInt64),
(-4468719947444108136i64 : stdgo.GoInt64),
(-7207776534213261296i64 : stdgo.GoInt64),
(-1224312577878317200i64 : stdgo.GoInt64),
(4287946071480840813i64 : stdgo.GoInt64),
(8362686366770308971i64 : stdgo.GoInt64),
(6486469209321732151i64 : stdgo.GoInt64),
(-5605644191012979782i64 : stdgo.GoInt64),
(-1669018511020473564i64 : stdgo.GoInt64),
(4450022655153542367i64 : stdgo.GoInt64),
(-7618176296641240059i64 : stdgo.GoInt64),
(-3896357471549267421i64 : stdgo.GoInt64),
(-4596796223304447488i64 : stdgo.GoInt64),
(-6531150016257070659i64 : stdgo.GoInt64),
(-8982326463137525940i64 : stdgo.GoInt64),
(-4125325062227681798i64 : stdgo.GoInt64),
(-1306489741394045544i64 : stdgo.GoInt64),
(-8338554946557245229i64 : stdgo.GoInt64),
(5329160409530630596i64 : stdgo.GoInt64),
(7790979528857726136i64 : stdgo.GoInt64),
(4955070238059373407i64 : stdgo.GoInt64),
(-4304834761432101506i64 : stdgo.GoInt64),
(-6215295852904371179i64 : stdgo.GoInt64),
(3007769226071157901i64 : stdgo.GoInt64),
(-6753025801236972788i64 : stdgo.GoInt64),
(8928702772696731736i64 : stdgo.GoInt64),
(7856187920214445904i64 : stdgo.GoInt64),
(-4748497451462800923i64 : stdgo.GoInt64),
(7900176660600710914i64 : stdgo.GoInt64),
(-7082800908938549136i64 : stdgo.GoInt64),
(-6797926979589575837i64 : stdgo.GoInt64),
(-6737316883512927978i64 : stdgo.GoInt64),
(4186670094382025798i64 : stdgo.GoInt64),
(1883939007446035042i64 : stdgo.GoInt64),
(-414705992779907823i64 : stdgo.GoInt64),
(3734134241178479257i64 : stdgo.GoInt64),
(4065968871360089196i64 : stdgo.GoInt64),
(6953124200385847784i64 : stdgo.GoInt64),
(-7917685222115876751i64 : stdgo.GoInt64),
(-7585632937840318161i64 : stdgo.GoInt64),
(-5567246375906782599i64 : stdgo.GoInt64),
(-5256612402221608788i64 : stdgo.GoInt64),
(3106378204088556331i64 : stdgo.GoInt64),
(-2894472214076325998i64 : stdgo.GoInt64),
(4565385105440252958i64 : stdgo.GoInt64),
(1979884289539493806i64 : stdgo.GoInt64),
(-6891578849933910383i64 : stdgo.GoInt64),
(3783206694208922581i64 : stdgo.GoInt64),
(8464961209802336085i64 : stdgo.GoInt64),
(2843963751609577687i64 : stdgo.GoInt64),
(3030678195484896323i64 : stdgo.GoInt64),
(-4429654462759003204i64 : stdgo.GoInt64),
(4459239494808162889i64 : stdgo.GoInt64),
(402587895800087237i64 : stdgo.GoInt64),
(8057891408711167515i64 : stdgo.GoInt64),
(4541888170938985079i64 : stdgo.GoInt64),
(1042662272908816815i64 : stdgo.GoInt64),
(-3666068979732206850i64 : stdgo.GoInt64),
(2647678726283249984i64 : stdgo.GoInt64),
(2144477441549833761i64 : stdgo.GoInt64),
(-3417019821499388721i64 : stdgo.GoInt64),
(-2105601033380872185i64 : stdgo.GoInt64),
(5916597177708541638i64 : stdgo.GoInt64),
(-8760774321402454447i64 : stdgo.GoInt64),
(8833658097025758785i64 : stdgo.GoInt64),
(5970273481425315300i64 : stdgo.GoInt64),
(563813119381731307i64 : stdgo.GoInt64),
(-6455022486202078793i64 : stdgo.GoInt64),
(1598828206250873866i64 : stdgo.GoInt64),
(-4016978389451217698i64 : stdgo.GoInt64),
(-2988328551145513985i64 : stdgo.GoInt64),
(-6071154634840136312i64 : stdgo.GoInt64),
(8469693267274066490i64 : stdgo.GoInt64),
(125672920241807416i64 : stdgo.GoInt64),
(-3912292412830714870i64 : stdgo.GoInt64),
(-2559617104544284221i64 : stdgo.GoInt64),
(-486523741806024092i64 : stdgo.GoInt64),
(-4735332261862713930i64 : stdgo.GoInt64),
(5923302823487327109i64 : stdgo.GoInt64),
(-9082480245771672572i64 : stdgo.GoInt64),
(-1808429243461201518i64 : stdgo.GoInt64),
(7990420780896957397i64 : stdgo.GoInt64),
(4317817392807076702i64 : stdgo.GoInt64),
(3625184369705367340i64 : stdgo.GoInt64),
(-6482649271566653105i64 : stdgo.GoInt64),
(-3480272027152017464i64 : stdgo.GoInt64),
(-3225473396345736649i64 : stdgo.GoInt64),
(-368878695502291645i64 : stdgo.GoInt64),
(-3981164001421868007i64 : stdgo.GoInt64),
(-8522033136963788610i64 : stdgo.GoInt64),
(7609280429197514109i64 : stdgo.GoInt64),
(3020985755112334161i64 : stdgo.GoInt64),
(-2572049329799262942i64 : stdgo.GoInt64),
(2635195723621160615i64 : stdgo.GoInt64),
(5144520864246028816i64 : stdgo.GoInt64),
(-8188285521126945980i64 : stdgo.GoInt64),
(1567242097116389047i64 : stdgo.GoInt64),
(8172389260191636581i64 : stdgo.GoInt64),
(-2885551685425483535i64 : stdgo.GoInt64),
(-7060359469858316883i64 : stdgo.GoInt64),
(-6480181133964513127i64 : stdgo.GoInt64),
(-7317004403633452381i64 : stdgo.GoInt64),
(6011544915663598137i64 : stdgo.GoInt64),
(5932255307352610768i64 : stdgo.GoInt64),
(2241128460406315459i64 : stdgo.GoInt64),
(-8327867140638080220i64 : stdgo.GoInt64),
(3094483003111372717i64 : stdgo.GoInt64),
(4583857460292963101i64 : stdgo.GoInt64),
(9079887171656594975i64 : stdgo.GoInt64),
(-384082854924064405i64 : stdgo.GoInt64),
(-3460631649611717935i64 : stdgo.GoInt64),
(4225072055348026230i64 : stdgo.GoInt64),
(-7385151438465742745i64 : stdgo.GoInt64),
(3801620336801580414i64 : stdgo.GoInt64),
(-399845416774701952i64 : stdgo.GoInt64),
(-7446754431269675473i64 : stdgo.GoInt64),
(7899055018877642622i64 : stdgo.GoInt64),
(5421679761463003041i64 : stdgo.GoInt64),
(5521102963086275121i64 : stdgo.GoInt64),
(-4975092593295409910i64 : stdgo.GoInt64),
(8735487530905098534i64 : stdgo.GoInt64),
(-7462844945281082830i64 : stdgo.GoInt64),
(-2080886987197029914i64 : stdgo.GoInt64),
(-1000715163927557685i64 : stdgo.GoInt64),
(-4253840471931071485i64 : stdgo.GoInt64),
(-5828896094657903328i64 : stdgo.GoInt64),
(6424174453260338141i64 : stdgo.GoInt64),
(359248545074932887i64 : stdgo.GoInt64),
(-5949720754023045210i64 : stdgo.GoInt64),
(-2426265837057637212i64 : stdgo.GoInt64),
(3030918217665093212i64 : stdgo.GoInt64),
(-9077771202237461772i64 : stdgo.GoInt64),
(-3186796180789149575i64 : stdgo.GoInt64),
(740416251634527158i64 : stdgo.GoInt64),
(-2142944401404840226i64 : stdgo.GoInt64),
(6951781370868335478i64 : stdgo.GoInt64),
(399922722363687927i64 : stdgo.GoInt64),
(-8928469722407522623i64 : stdgo.GoInt64),
(-1378421100515597285i64 : stdgo.GoInt64),
(-8343051178220066766i64 : stdgo.GoInt64),
(-3030716356046100229i64 : stdgo.GoInt64),
(-8811767350470065420i64 : stdgo.GoInt64),
(9026808440365124461i64 : stdgo.GoInt64),
(6440783557497587732i64 : stdgo.GoInt64),
(4615674634722404292i64 : stdgo.GoInt64),
(539897290441580544i64 : stdgo.GoInt64),
(2096238225866883852i64 : stdgo.GoInt64),
(8751955639408182687i64 : stdgo.GoInt64),
(-7316147128802486205i64 : stdgo.GoInt64),
(7381039757301768559i64 : stdgo.GoInt64),
(6157238513393239656i64 : stdgo.GoInt64),
(-1473377804940618233i64 : stdgo.GoInt64),
(8629571604380892756i64 : stdgo.GoInt64),
(5280433031239081479i64 : stdgo.GoInt64),
(7101611890139813254i64 : stdgo.GoInt64),
(2479018537985767835i64 : stdgo.GoInt64),
(7169176924412769570i64 : stdgo.GoInt64),
(-1281305539061572506i64 : stdgo.GoInt64),
(-7865612307799218120i64 : stdgo.GoInt64),
(2278447439451174845i64 : stdgo.GoInt64),
(3625338785743880657i64 : stdgo.GoInt64),
(6477479539006708521i64 : stdgo.GoInt64),
(8976185375579272206i64 : stdgo.GoInt64),
(-3712000482142939688i64 : stdgo.GoInt64),
(1326024180520890843i64 : stdgo.GoInt64),
(7537449876596048829i64 : stdgo.GoInt64),
(5464680203499696154i64 : stdgo.GoInt64),
(3189671183162196045i64 : stdgo.GoInt64),
(6346751753565857109i64 : stdgo.GoInt64),
(-8982212049534145501i64 : stdgo.GoInt64),
(-6127578587196093755i64 : stdgo.GoInt64),
(-245039190118465649i64 : stdgo.GoInt64),
(-6320577374581628592i64 : stdgo.GoInt64),
(7208698530190629697i64 : stdgo.GoInt64),
(7276901792339343736i64 : stdgo.GoInt64),
(-7490986807540332668i64 : stdgo.GoInt64),
(4133292154170828382i64 : stdgo.GoInt64),
(2918308698224194548i64 : stdgo.GoInt64),
(-7703910638917631350i64 : stdgo.GoInt64),
(-3929437324238184044i64 : stdgo.GoInt64),
(-4300543082831323144i64 : stdgo.GoInt64),
(-6344160503358350167i64 : stdgo.GoInt64),
(5896236396443472108i64 : stdgo.GoInt64),
(-758328221503023383i64 : stdgo.GoInt64),
(-1894351639983151068i64 : stdgo.GoInt64),
(-307900319840287220i64 : stdgo.GoInt64),
(-6278469401177312761i64 : stdgo.GoInt64),
(-2171292963361310674i64 : stdgo.GoInt64),
(8382142935188824023i64 : stdgo.GoInt64),
(9103922860780351547i64 : stdgo.GoInt64),
(4152330101494654406i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)?.__copy__();
@:keep class Source_static_extension {
    static public function seed(t:Source, _seed:stdgo.GoInt64):Void t.seed(_seed);
    static public function int63(t:Source):stdgo.GoInt64 return t.int63();
}
typedef Source = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function int63():stdgo.GoInt64;
    /**
        
        
        
    **/
    public dynamic function seed(_seed:stdgo.GoInt64):Void;
};
@:keep class Source64_static_extension {
    static public function uint64(t:Source64):stdgo.GoUInt64 return t.uint64();
}
typedef Source64 = stdgo.StructType & {
    > Source,
    /**
        
        
        
    **/
    public dynamic function uint64():stdgo.GoUInt64;
};
@:structInit @:using(stdgo._internal.math.rand.Rand.Rand_static_extension) class Rand {
    public var _src : stdgo._internal.math.rand.Rand.Source = (null : stdgo._internal.math.rand.Rand.Source);
    public var _s64 : stdgo._internal.math.rand.Rand.Source64 = (null : stdgo._internal.math.rand.Rand.Source64);
    public var _readVal : stdgo.GoInt64 = 0;
    public var _readPos : stdgo.GoInt8 = 0;
    public function new(?_src:stdgo._internal.math.rand.Rand.Source, ?_s64:stdgo._internal.math.rand.Rand.Source64, ?_readVal:stdgo.GoInt64, ?_readPos:stdgo.GoInt8) {
        if (_src != null) this._src = _src;
        if (_s64 != null) this._s64 = _s64;
        if (_readVal != null) this._readVal = _readVal;
        if (_readPos != null) this._readPos = _readPos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rand(_src, _s64, _readVal, _readPos);
    }
}
@:structInit @:private @:using(stdgo._internal.math.rand.Rand.T_fastSource_static_extension) class T_fastSource {
    public var _mu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public function new(?_mu:stdgo._internal.sync.Sync.Mutex) {
        if (_mu != null) this._mu = _mu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fastSource(_mu);
    }
}
@:structInit @:private @:using(stdgo._internal.math.rand.Rand.T_lockedSource_static_extension) class T_lockedSource {
    public var _lk : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public var _s : stdgo.Ref<stdgo._internal.math.rand.Rand.T_rngSource> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_rngSource>);
    public function new(?_lk:stdgo._internal.sync.Sync.Mutex, ?_s:stdgo.Ref<stdgo._internal.math.rand.Rand.T_rngSource>) {
        if (_lk != null) this._lk = _lk;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lockedSource(_lk, _s);
    }
}
@:structInit @:private @:using(stdgo._internal.math.rand.Rand.T_rngSource_static_extension) class T_rngSource {
    public var _tap : stdgo.GoInt = 0;
    public var _feed : stdgo.GoInt = 0;
    public var _vec : stdgo.GoArray<stdgo.GoInt64> = new stdgo.GoArray<stdgo.GoInt64>(607, 607, ...[for (i in 0 ... 607) (0 : stdgo.GoInt64)]);
    public function new(?_tap:stdgo.GoInt, ?_feed:stdgo.GoInt, ?_vec:stdgo.GoArray<stdgo.GoInt64>) {
        if (_tap != null) this._tap = _tap;
        if (_feed != null) this._feed = _feed;
        if (_vec != null) this._vec = _vec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rngSource(_tap, _feed, _vec);
    }
}
@:structInit @:using(stdgo._internal.math.rand.Rand.Zipf_static_extension) class Zipf {
    public var _r : stdgo.Ref<stdgo._internal.math.rand.Rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>);
    public var _imax : stdgo.GoFloat64 = 0;
    public var _v : stdgo.GoFloat64 = 0;
    public var _q : stdgo.GoFloat64 = 0;
    public var _s : stdgo.GoFloat64 = 0;
    public var _oneminusQ : stdgo.GoFloat64 = 0;
    public var _oneminusQinv : stdgo.GoFloat64 = 0;
    public var _hxm : stdgo.GoFloat64 = 0;
    public var _hx0minusHxm : stdgo.GoFloat64 = 0;
    public function new(?_r:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, ?_imax:stdgo.GoFloat64, ?_v:stdgo.GoFloat64, ?_q:stdgo.GoFloat64, ?_s:stdgo.GoFloat64, ?_oneminusQ:stdgo.GoFloat64, ?_oneminusQinv:stdgo.GoFloat64, ?_hxm:stdgo.GoFloat64, ?_hx0minusHxm:stdgo.GoFloat64) {
        if (_r != null) this._r = _r;
        if (_imax != null) this._imax = _imax;
        if (_v != null) this._v = _v;
        if (_q != null) this._q = _q;
        if (_s != null) this._s = _s;
        if (_oneminusQ != null) this._oneminusQ = _oneminusQ;
        if (_oneminusQinv != null) this._oneminusQinv = _oneminusQinv;
        if (_hxm != null) this._hxm = _hxm;
        if (_hx0minusHxm != null) this._hx0minusHxm = _hx0minusHxm;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Zipf(_r, _imax, _v, _q, _s, _oneminusQ, _oneminusQinv, _hxm, _hx0minusHxm);
    }
}
function int31nForTest(_r:stdgo.Ref<Rand>, _n:stdgo.GoInt32):stdgo.GoInt32 {
        return _r._int31n(_n);
    }
function getNormalDistributionParameters():{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoArray<stdgo.GoUInt32>; var _2 : stdgo.GoArray<stdgo.GoFloat32>; var _3 : stdgo.GoArray<stdgo.GoFloat32>; } {
        return { _0 : (3.442619855899 : stdgo.GoFloat64), _1 : _kn?.__copy__(), _2 : _wn?.__copy__(), _3 : _fn?.__copy__() };
    }
function getExponentialDistributionParameters():{ var _0 : stdgo.GoFloat64; var _1 : stdgo.GoArray<stdgo.GoUInt32>; var _2 : stdgo.GoArray<stdgo.GoFloat32>; var _3 : stdgo.GoArray<stdgo.GoFloat32>; } {
        return { _0 : (7.69711747013105 : stdgo.GoFloat64), _1 : _ke?.__copy__(), _2 : _we?.__copy__(), _3 : _fe?.__copy__() };
    }
function _absInt32(_i:stdgo.GoInt32):stdgo.GoUInt32 {
        if ((_i < (0 : stdgo.GoInt32) : Bool)) {
            return (-_i : stdgo.GoUInt32);
        };
        return (_i : stdgo.GoUInt32);
    }
function newSource(_seed:stdgo.GoInt64):Source {
        return stdgo.Go.asInterface(_newSource(_seed));
    }
function _newSource(_seed:stdgo.GoInt64):stdgo.Ref<T_rngSource> {
        var _rng:T_rngSource = ({} : stdgo._internal.math.rand.Rand.T_rngSource);
        _rng.seed(_seed);
        return (stdgo.Go.setRef(_rng) : stdgo.Ref<stdgo._internal.math.rand.Rand.T_rngSource>);
    }
function new_(_src:Source):stdgo.Ref<Rand> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : Source64)) : Source64), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.math.rand.Rand.Source64), _1 : false };
        }, _s64 = __tmp__._0, __8 = __tmp__._1;
        return (stdgo.Go.setRef(({ _src : _src, _s64 : _s64 } : stdgo._internal.math.rand.Rand.Rand)) : stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>);
    }
function _read(_p:stdgo.Slice<stdgo.GoByte>, _src:Source, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _pos = (_readPos.value : stdgo.GoInt8);
        var _val = (_readVal.value : stdgo.GoInt64);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<T_rngSource>)) : stdgo.Ref<T_rngSource>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_rngSource>), _1 : false };
        }, _rng = __tmp__._0, __8 = __tmp__._1;
        {
            _n = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (_p.length) : Bool), _n++, {
                if (_pos == ((0 : stdgo.GoInt8))) {
                    if (_rng != null && ((_rng : Dynamic).__nil__ == null || !(_rng : Dynamic).__nil__)) {
                        _val = _rng.int63();
                    } else {
                        _val = _src.int63();
                    };
                    _pos = (7 : stdgo.GoInt8);
                };
                _p[(_n : stdgo.GoInt)] = (_val : stdgo.GoByte);
                _val = (_val >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
                _pos--;
            });
        };
        _readPos.value = _pos;
        _readVal.value = _val;
        return { _0 : _n, _1 : _err };
    }
function _globalRand():stdgo.Ref<Rand> {
        {
            var _r = _globalRandGenerator.load(({} : stdgo._internal.math.rand.Rand.Rand));
            if (_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__)) {
                return _r;
            };
        };
        var _r:stdgo.Ref<Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>);
        if (_randautoseed.value() == (("0" : stdgo.GoString))) {
            _randautoseed.incNonDefault();
            _r = new_(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand.T_lockedSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand.T_lockedSource>)));
            _r.seed((1i64 : stdgo.GoInt64));
        } else {
            _r = (stdgo.Go.setRef(({ _src : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.math.rand.Rand.T_fastSource() : stdgo._internal.math.rand.Rand.T_fastSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand.T_fastSource>)), _s64 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.math.rand.Rand.T_fastSource() : stdgo._internal.math.rand.Rand.T_fastSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand.T_fastSource>)) } : stdgo._internal.math.rand.Rand.Rand)) : stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>);
        };
        if (!_globalRandGenerator.compareAndSwap(({} : stdgo._internal.math.rand.Rand.Rand), null, _r)) {
            return _globalRandGenerator.load(({} : stdgo._internal.math.rand.Rand.Rand));
        };
        return _r;
    }
function _fastrand64():stdgo.GoUInt64 return haxe.Int64.make(Std.random(1) > 0 ? -Std.random(2147483647) - 1 : Std.random(2147483647), Std.random(1) > 0 ? -Std.random(2147483647) - 1 : Std.random(2147483647));
function seed(_seed:stdgo.GoInt64):Void {
        var _orig = _globalRandGenerator.load(({} : stdgo._internal.math.rand.Rand.Rand));
        if (_orig != null && ((_orig : Dynamic).__nil__ == null || !(_orig : Dynamic).__nil__)) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_orig._src) : stdgo.Ref<T_lockedSource>)) : stdgo.Ref<T_lockedSource>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_lockedSource>), _1 : false };
                }, __14 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _orig.seed(_seed);
                    return;
                };
            };
        };
        var _r = new_(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand.T_lockedSource)) : stdgo.Ref<stdgo._internal.math.rand.Rand.T_lockedSource>)));
        _r.seed(_seed);
        if (!_globalRandGenerator.compareAndSwap(({} : stdgo._internal.math.rand.Rand.Rand), _orig, _r)) {
            seed(_seed);
        };
    }
function int63():stdgo.GoInt64 {
        return _globalRand().int63();
    }
function uint32():stdgo.GoUInt32 {
        return _globalRand().uint32();
    }
function uint64():stdgo.GoUInt64 {
        return _globalRand().uint64();
    }
function int31():stdgo.GoInt32 {
        return _globalRand().int31();
    }
function int_():stdgo.GoInt {
        return _globalRand().int_();
    }
function int63n(_n:stdgo.GoInt64):stdgo.GoInt64 {
        return _globalRand().int63n(_n);
    }
function int31n(_n:stdgo.GoInt32):stdgo.GoInt32 {
        return _globalRand().int31n(_n);
    }
function intn(_n:stdgo.GoInt):stdgo.GoInt return Std.random(_n);
function float64():stdgo.GoFloat64 {
        return _globalRand().float64();
    }
function float32():stdgo.GoFloat32 {
        return _globalRand().float32();
    }
function perm(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        return _globalRand().perm(_n);
    }
function shuffle(_n:stdgo.GoInt, _swap:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Void):Void {
        _globalRand().shuffle(_n, _swap);
    }
function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _globalRand().read(_p);
    }
function normFloat64():stdgo.GoFloat64 {
        return _globalRand().normFloat64();
    }
function expFloat64():stdgo.GoFloat64 {
        return _globalRand().expFloat64();
    }
function _seedrand(_x:stdgo.GoInt32):stdgo.GoInt32 {
        {};
        var _hi = (_x / (44488 : stdgo.GoInt32) : stdgo.GoInt32);
        var _lo = (_x % (44488 : stdgo.GoInt32) : stdgo.GoInt32);
        _x = (((48271 : stdgo.GoInt32) * _lo : stdgo.GoInt32) - ((3399 : stdgo.GoInt32) * _hi : stdgo.GoInt32) : stdgo.GoInt32);
        if ((_x < (0 : stdgo.GoInt32) : Bool)) {
            _x = (_x + ((2147483647 : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        return _x;
    }
function newZipf(_r:stdgo.Ref<Rand>, _s:stdgo.GoFloat64, _v:stdgo.GoFloat64, _imax:stdgo.GoUInt64):stdgo.Ref<Zipf> {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand.Zipf)) : stdgo.Ref<stdgo._internal.math.rand.Rand.Zipf>);
        if (((_s <= (1 : stdgo.GoFloat64) : Bool) || (_v < (1 : stdgo.GoFloat64) : Bool) : Bool)) {
            return null;
        };
        _z._r = _r;
        _z._imax = (_imax : stdgo.GoFloat64);
        _z._v = _v;
        _z._q = _s;
        _z._oneminusQ = ((1 : stdgo.GoFloat64) - _z._q : stdgo.GoFloat64);
        _z._oneminusQinv = ((1 : stdgo.GoFloat64) / _z._oneminusQ : stdgo.GoFloat64);
        _z._hxm = _z._h((_z._imax + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64));
        _z._hx0minusHxm = ((_z._h((0.5 : stdgo.GoFloat64)) - stdgo._internal.math.Math.exp((stdgo._internal.math.Math.log(_z._v) * (-_z._q) : stdgo.GoFloat64)) : stdgo.GoFloat64) - _z._hxm : stdgo.GoFloat64);
        _z._s = ((1 : stdgo.GoFloat64) - _z._hinv((_z._h((1.5 : stdgo.GoFloat64)) - stdgo._internal.math.Math.exp((-_z._q * stdgo._internal.math.Math.log((_z._v + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        return _z;
    }
class Rand_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function shuffle(_n:stdgo.GoInt, _swap:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Void):Void __self__.value.shuffle(_n, _swap);
    @:keep
    public dynamic function perm(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> return __self__.value.perm(_n);
    @:keep
    public dynamic function float32():stdgo.GoFloat32 return __self__.value.float32();
    @:keep
    public dynamic function float64():stdgo.GoFloat64 return __self__.value.float64();
    @:keep
    public dynamic function intn(_n:stdgo.GoInt):stdgo.GoInt return __self__.value.intn(_n);
    @:keep
    public dynamic function _int31n(_n:stdgo.GoInt32):stdgo.GoInt32 return __self__.value._int31n(_n);
    @:keep
    public dynamic function int31n(_n:stdgo.GoInt32):stdgo.GoInt32 return __self__.value.int31n(_n);
    @:keep
    public dynamic function int63n(_n:stdgo.GoInt64):stdgo.GoInt64 return __self__.value.int63n(_n);
    @:keep
    public dynamic function int_():stdgo.GoInt return __self__.value.int_();
    @:keep
    public dynamic function int31():stdgo.GoInt32 return __self__.value.int31();
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function uint32():stdgo.GoUInt32 return __self__.value.uint32();
    @:keep
    public dynamic function int63():stdgo.GoInt64 return __self__.value.int63();
    @:keep
    public dynamic function seed(_seed:stdgo.GoInt64):Void __self__.value.seed(_seed);
    @:keep
    public dynamic function normFloat64():stdgo.GoFloat64 return __self__.value.normFloat64();
    @:keep
    public dynamic function expFloat64():stdgo.GoFloat64 return __self__.value.expFloat64();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Rand>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.rand.Rand.Rand_asInterface) class Rand_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<Rand>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            final __type__ = _r._src;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<T_lockedSource>))) {
                var _src:stdgo.Ref<stdgo._internal.math.rand.Rand.T_lockedSource> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_lockedSource>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_lockedSource>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_lockedSource>) : __type__.__underlying__().value;
                return _src._read(_p, stdgo.Go.pointer(_r._readVal), stdgo.Go.pointer(_r._readPos));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<T_fastSource>))) {
                var _src:stdgo.Ref<stdgo._internal.math.rand.Rand.T_fastSource> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_fastSource>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_fastSource>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_fastSource>) : __type__.__underlying__().value;
                return _src._read(_p, stdgo.Go.pointer(_r._readVal), stdgo.Go.pointer(_r._readPos));
            };
        };
        return _read(_p, _r._src, stdgo.Go.pointer(_r._readVal), stdgo.Go.pointer(_r._readPos));
    }
    @:keep
    static public function shuffle( _r:stdgo.Ref<Rand>, _n:stdgo.GoInt, _swap:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Void):Void {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Shuffle" : stdgo.GoString));
        };
        var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        stdgo.Go.cfor((_i > (2147483646 : stdgo.GoInt) : Bool), _i--, {
            var _j = (_r.int63n(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt);
            _swap(_i, _j);
        });
        stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
            var _j = (_r._int31n(((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32)) : stdgo.GoInt);
            _swap(_i, _j);
        });
    }
    @:keep
    static public function perm( _r:stdgo.Ref<Rand>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        var _m = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _j = (_r.intn((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                _m[(_i : stdgo.GoInt)] = _m[(_j : stdgo.GoInt)];
                _m[(_j : stdgo.GoInt)] = _i;
            });
        };
        return _m;
    }
    @:keep
    static public function float32( _r:stdgo.Ref<Rand>):stdgo.GoFloat32 {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _r:stdgo.Ref<Rand> = _r;
            @:label("again") var _f = (_r.float64() : stdgo.GoFloat32);
            if (_f == (1 : stdgo.GoFloat64)) {
                @:goto "again";
            };
            return _f;
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function float64( _r:stdgo.Ref<Rand>):stdgo.GoFloat64 {
        stdgo._internal.internal.Macro.controlFlow({
            @:recv var _r:stdgo.Ref<Rand> = _r;
            @:label("again") var _f = ((_r.int63() : stdgo.GoFloat64) / (9.223372036854776e+18 : stdgo.GoFloat64) : stdgo.GoFloat64);
            if (_f == (1 : stdgo.GoFloat64)) {
                @:goto "again";
            };
            return _f;
        });
        throw "controlFlow did not return";
    }
    @:keep
    static public function intn( _r:stdgo.Ref<Rand>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Intn" : stdgo.GoString));
        };
        if ((_n <= (2147483647 : stdgo.GoInt) : Bool)) {
            return (_r.int31n((_n : stdgo.GoInt32)) : stdgo.GoInt);
        };
        return (_r.int63n((_n : stdgo.GoInt64)) : stdgo.GoInt);
    }
    @:keep
    static public function _int31n( _r:stdgo.Ref<Rand>, _n:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        var _v = (_r.uint32() : stdgo.GoUInt32);
        var _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _low = (_prod : stdgo.GoUInt32);
        if ((_low < (_n : stdgo.GoUInt32) : Bool)) {
            var _thresh = ((-_n : stdgo.GoUInt32) % (_n : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_low < _thresh : Bool)) {
                _v = _r.uint32();
                _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
                _low = (_prod : stdgo.GoUInt32);
            };
        };
        return ((_prod >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32);
    }
    @:keep
    static public function int31n( _r:stdgo.Ref<Rand>, _n:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        if ((_n <= (0 : stdgo.GoInt32) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Int31n" : stdgo.GoString));
        };
        if ((_n & ((_n - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
            return (_r.int31() & ((_n - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
        };
        var _max = (((2147483647u32 : stdgo.GoUInt32) - ((-2147483648u32 : stdgo.GoUInt32) % (_n : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt32);
        var _v = (_r.int31() : stdgo.GoInt32);
        while ((_v > _max : Bool)) {
            _v = _r.int31();
        };
        return (_v % _n : stdgo.GoInt32);
    }
    @:keep
    static public function int63n( _r:stdgo.Ref<Rand>, _n:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        if ((_n <= (0i64 : stdgo.GoInt64) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument to Int63n" : stdgo.GoString));
        };
        if ((_n & ((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
            return (_r.int63() & ((_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        var _max = (((9223372036854775807i64 : stdgo.GoUInt64) - ((-9223372036854775808i64 : stdgo.GoUInt64) % (_n : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        var _v = (_r.int63() : stdgo.GoInt64);
        while ((_v > _max : Bool)) {
            _v = _r.int63();
        };
        return (_v % _n : stdgo.GoInt64);
    }
    @:keep
    static public function int_( _r:stdgo.Ref<Rand>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        var _u = (_r.int63() : stdgo.GoUInt);
        return (((_u << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
    }
    @:keep
    static public function int31( _r:stdgo.Ref<Rand>):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        return ((_r.int63() >> (32i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt32);
    }
    @:keep
    static public function uint64( _r:stdgo.Ref<Rand>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        if (_r._s64 != null) {
            return _r._s64.uint64();
        };
        return (((_r.int63() : stdgo.GoUInt64) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_r.int63() : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    static public function uint32( _r:stdgo.Ref<Rand>):stdgo.GoUInt32 {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        return ((_r.int63() >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt32);
    }
    @:keep
    static public function int63( _r:stdgo.Ref<Rand>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        return _r._src.int63();
    }
    @:keep
    static public function seed( _r:stdgo.Ref<Rand>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r._src) : stdgo.Ref<T_lockedSource>)) : stdgo.Ref<T_lockedSource>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand.T_lockedSource>), _1 : false };
            }, _lk = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _lk._seedPos(_seed, stdgo.Go.pointer(_r._readPos));
                return;
            };
        };
        _r._src.seed(_seed);
        _r._readPos = (0 : stdgo.GoInt8);
    }
    @:keep
    static public function normFloat64( _r:stdgo.Ref<Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        while (true) {
            var _j = (_r.uint32() : stdgo.GoInt32);
            var _i = (_j & (127 : stdgo.GoInt32) : stdgo.GoInt32);
            var _x = ((_j : stdgo.GoFloat64) * (_wn[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64);
            if ((_absInt32(_j) < _kn[(_i : stdgo.GoInt)] : Bool)) {
                return _x;
            };
            if (_i == ((0 : stdgo.GoInt32))) {
                while (true) {
                    _x = (-stdgo._internal.math.Math.log(_r.float64()) * (0.29047645161474317 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    var _y = (-stdgo._internal.math.Math.log(_r.float64()) : stdgo.GoFloat64);
                    if (((_y + _y : stdgo.GoFloat64) >= (_x * _x : stdgo.GoFloat64) : Bool)) {
                        break;
                    };
                };
                if ((_j > (0 : stdgo.GoInt32) : Bool)) {
                    return ((3.442619855899 : stdgo.GoFloat64) + _x : stdgo.GoFloat64);
                };
                return ((-3.442619855899 : stdgo.GoFloat64) - _x : stdgo.GoFloat64);
            };
            if (((_fn[(_i : stdgo.GoInt)] + ((_r.float64() : stdgo.GoFloat32) * ((_fn[((_i - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] - _fn[(_i : stdgo.GoInt)] : stdgo.GoFloat32)) : stdgo.GoFloat32) : stdgo.GoFloat32) < (stdgo._internal.math.Math.exp((((-0.5 : stdgo.GoFloat64) * _x : stdgo.GoFloat64) * _x : stdgo.GoFloat64)) : stdgo.GoFloat32) : Bool)) {
                return _x;
            };
        };
    }
    @:keep
    static public function expFloat64( _r:stdgo.Ref<Rand>):stdgo.GoFloat64 {
        @:recv var _r:stdgo.Ref<Rand> = _r;
        while (true) {
            var _j = (_r.uint32() : stdgo.GoUInt32);
            var _i = (_j & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            var _x = ((_j : stdgo.GoFloat64) * (_we[(_i : stdgo.GoInt)] : stdgo.GoFloat64) : stdgo.GoFloat64);
            if ((_j < _ke[(_i : stdgo.GoInt)] : Bool)) {
                return _x;
            };
            if (_i == ((0u32 : stdgo.GoUInt32))) {
                return ((7.69711747013105 : stdgo.GoFloat64) - stdgo._internal.math.Math.log(_r.float64()) : stdgo.GoFloat64);
            };
            if (((_fe[(_i : stdgo.GoInt)] + ((_r.float64() : stdgo.GoFloat32) * ((_fe[((_i - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] - _fe[(_i : stdgo.GoInt)] : stdgo.GoFloat32)) : stdgo.GoFloat32) : stdgo.GoFloat32) < (stdgo._internal.math.Math.exp(-_x) : stdgo.GoFloat32) : Bool)) {
                return _x;
            };
        };
    }
}
class T_fastSource_asInterface {
    @:keep
    public dynamic function _read(_p:stdgo.Slice<stdgo.GoByte>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_p, _readVal, _readPos);
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function seed(_0:stdgo.GoInt64):Void __self__.value.seed(_0);
    @:keep
    public dynamic function int63():stdgo.GoInt64 return __self__.value.int63();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_fastSource>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.rand.Rand.T_fastSource_asInterface) class T_fastSource_static_extension {
    @:keep
    static public function _read( _fs:stdgo.Ref<T_fastSource>, _p:stdgo.Slice<stdgo.GoByte>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fs:stdgo.Ref<T_fastSource> = _fs;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _fs._mu.lock();
        {
            var __tmp__ = stdgo._internal.math.rand.Rand._read(_p, stdgo.Go.asInterface(_fs), _readVal, _readPos);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _fs._mu.unlock();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function uint64( _:stdgo.Ref<T_fastSource>):stdgo.GoUInt64 {
        @:recv var _:stdgo.Ref<T_fastSource> = _;
        return _fastrand64();
    }
    @:keep
    static public function seed( _:stdgo.Ref<T_fastSource>, _0:stdgo.GoInt64):Void {
        @:recv var _:stdgo.Ref<T_fastSource> = _;
        throw stdgo.Go.toInterface(("internal error: call to fastSource.Seed" : stdgo.GoString));
    }
    @:keep
    static public function int63( _:stdgo.Ref<T_fastSource>):stdgo.GoInt64 {
        @:recv var _:stdgo.Ref<T_fastSource> = _;
        return ((_fastrand64() & (9223372036854775807i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
    }
}
class T_lockedSource_asInterface {
    @:keep
    public dynamic function _read(_p:stdgo.Slice<stdgo.GoByte>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._read(_p, _readVal, _readPos);
    @:keep
    public dynamic function _seed(_seed:stdgo.GoInt64):Void __self__.value._seed(_seed);
    @:keep
    public dynamic function _seedPos(_seed:stdgo.GoInt64, _readPos:stdgo.Pointer<stdgo.GoInt8>):Void __self__.value._seedPos(_seed, _readPos);
    @:keep
    public dynamic function seed(_seed:stdgo.GoInt64):Void __self__.value.seed(_seed);
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function int63():stdgo.GoInt64 return __self__.value.int63();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_lockedSource>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.rand.Rand.T_lockedSource_asInterface) class T_lockedSource_static_extension {
    @:keep
    static public function _read( _r:stdgo.Ref<T_lockedSource>, _p:stdgo.Slice<stdgo.GoByte>, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_lockedSource> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _r._lk.lock();
        {
            var __tmp__ = stdgo._internal.math.rand.Rand._read(_p, stdgo.Go.asInterface(_r._s), _readVal, _readPos);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._lk.unlock();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _seed( _r:stdgo.Ref<T_lockedSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<T_lockedSource> = _r;
        if (_r._s == null || (_r._s : Dynamic).__nil__) {
            _r._s = _newSource(_seed);
        } else {
            _r._s.seed(_seed);
        };
    }
    @:keep
    static public function _seedPos( _r:stdgo.Ref<T_lockedSource>, _seed:stdgo.GoInt64, _readPos:stdgo.Pointer<stdgo.GoInt8>):Void {
        @:recv var _r:stdgo.Ref<T_lockedSource> = _r;
        _r._lk.lock();
        _r._seed(_seed);
        _readPos.value = (0 : stdgo.GoInt8);
        _r._lk.unlock();
    }
    @:keep
    static public function seed( _r:stdgo.Ref<T_lockedSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _r:stdgo.Ref<T_lockedSource> = _r;
        _r._lk.lock();
        _r._seed(_seed);
        _r._lk.unlock();
    }
    @:keep
    static public function uint64( _r:stdgo.Ref<T_lockedSource>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<T_lockedSource> = _r;
        var _n = (0 : stdgo.GoUInt64);
        _r._lk.lock();
        _n = _r._s.uint64();
        _r._lk.unlock();
        return _n;
    }
    @:keep
    static public function int63( _r:stdgo.Ref<T_lockedSource>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<T_lockedSource> = _r;
        var _n = (0 : stdgo.GoInt64);
        _r._lk.lock();
        _n = _r._s.int63();
        _r._lk.unlock();
        return _n;
    }
}
class T_rngSource_asInterface {
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function int63():stdgo.GoInt64 return __self__.value.int63();
    @:keep
    public dynamic function seed(_seed:stdgo.GoInt64):Void __self__.value.seed(_seed);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_rngSource>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.rand.Rand.T_rngSource_asInterface) class T_rngSource_static_extension {
    @:keep
    static public function uint64( _rng:stdgo.Ref<T_rngSource>):stdgo.GoUInt64 {
        @:recv var _rng:stdgo.Ref<T_rngSource> = _rng;
        _rng._tap--;
        if ((_rng._tap < (0 : stdgo.GoInt) : Bool)) {
            _rng._tap = (_rng._tap + ((607 : stdgo.GoInt)) : stdgo.GoInt);
        };
        _rng._feed--;
        if ((_rng._feed < (0 : stdgo.GoInt) : Bool)) {
            _rng._feed = (_rng._feed + ((607 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _x = (_rng._vec[(_rng._feed : stdgo.GoInt)] + _rng._vec[(_rng._tap : stdgo.GoInt)] : stdgo.GoInt64);
        _rng._vec[(_rng._feed : stdgo.GoInt)] = _x;
        return (_x : stdgo.GoUInt64);
    }
    @:keep
    static public function int63( _rng:stdgo.Ref<T_rngSource>):stdgo.GoInt64 {
        @:recv var _rng:stdgo.Ref<T_rngSource> = _rng;
        return ((_rng.uint64() & (9223372036854775807i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function seed( _rng:stdgo.Ref<T_rngSource>, _seed:stdgo.GoInt64):Void {
        @:recv var _rng:stdgo.Ref<T_rngSource> = _rng;
        _rng._tap = (0 : stdgo.GoInt);
        _rng._feed = (334 : stdgo.GoInt);
        _seed = (_seed % (2147483647i64 : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_seed < (0i64 : stdgo.GoInt64) : Bool)) {
            _seed = (_seed + ((2147483647i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        if (_seed == ((0i64 : stdgo.GoInt64))) {
            _seed = (89482311i64 : stdgo.GoInt64);
        };
        var _x = (_seed : stdgo.GoInt32);
        {
            var _i = (-20 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (607 : stdgo.GoInt) : Bool), _i++, {
                _x = _seedrand(_x);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _u:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                    _u = ((_x : stdgo.GoInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoInt64);
                    _x = _seedrand(_x);
                    _u = (_u ^ (((_x : stdgo.GoInt64) << (20i64 : stdgo.GoUInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                    _x = _seedrand(_x);
                    _u = (_u ^ ((_x : stdgo.GoInt64)) : stdgo.GoInt64);
                    _u = (_u ^ (_rngCooked[(_i : stdgo.GoInt)]) : stdgo.GoInt64);
                    _rng._vec[(_i : stdgo.GoInt)] = _u;
                };
            });
        };
    }
}
class Zipf_asInterface {
    @:keep
    public dynamic function uint64():stdgo.GoUInt64 return __self__.value.uint64();
    @:keep
    public dynamic function _hinv(_x:stdgo.GoFloat64):stdgo.GoFloat64 return __self__.value._hinv(_x);
    @:keep
    public dynamic function _h(_x:stdgo.GoFloat64):stdgo.GoFloat64 return __self__.value._h(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Zipf>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.math.rand.Rand.Zipf_asInterface) class Zipf_static_extension {
    @:keep
    static public function uint64( _z:stdgo.Ref<Zipf>):stdgo.GoUInt64 {
        @:recv var _z:stdgo.Ref<Zipf> = _z;
        if (_z == null || (_z : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(("rand: nil Zipf" : stdgo.GoString));
        };
        var _k = (0 : stdgo.GoFloat64);
        while (true) {
            var _r = (_z._r.float64() : stdgo.GoFloat64);
            var _ur = (_z._hxm + (_r * _z._hx0minusHxm : stdgo.GoFloat64) : stdgo.GoFloat64);
            var _x = (_z._hinv(_ur) : stdgo.GoFloat64);
            _k = stdgo._internal.math.Math.floor((_x + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64));
            if (((_k - _x : stdgo.GoFloat64) <= _z._s : Bool)) {
                break;
            };
            if ((_ur >= (_z._h((_k + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) - stdgo._internal.math.Math.exp((-stdgo._internal.math.Math.log((_k + _z._v : stdgo.GoFloat64)) * _z._q : stdgo.GoFloat64)) : stdgo.GoFloat64) : Bool)) {
                break;
            };
        };
        return (_k : stdgo.GoUInt64);
    }
    @:keep
    static public function _hinv( _z:stdgo.Ref<Zipf>, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        @:recv var _z:stdgo.Ref<Zipf> = _z;
        return (stdgo._internal.math.Math.exp((_z._oneminusQinv * stdgo._internal.math.Math.log((_z._oneminusQ * _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) - _z._v : stdgo.GoFloat64);
    }
    @:keep
    static public function _h( _z:stdgo.Ref<Zipf>, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        @:recv var _z:stdgo.Ref<Zipf> = _z;
        return (stdgo._internal.math.Math.exp((_z._oneminusQ * stdgo._internal.math.Math.log((_z._v + _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) * _z._oneminusQinv : stdgo.GoFloat64);
    }
}
