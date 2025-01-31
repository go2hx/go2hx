package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
function benchmarkQuoRem(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(("153980389784927331788354528594524332344709972855165340650588877572729725338415474372475094155672066328274535240275856844648695200875763869073572078279316458648124537905600131008790701752441155668003033945258023841165089852359980273279085783159654751552359397986180318708491098942831252291841441726305535546071" : stdgo.GoString), (0 : stdgo.GoInt)), _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(("7746362281539803897849273317883545285945243323447099728551653406505888775727297253384154743724750941556720663282745352402758568446486952008757638690735720782793164586481245379056001310087907017524411556680030339452580238411650898523599802732790857831596547515523593979861803187084910989428312522918414417263055355460715745539358014631136245887418412633787074173796862711588221766398229333338511838891484974940633857861775630560092874987828057333663969469797013996401149696897591265769095952887917296740109742927689053276850469671231961384715398038978492733178835452859452433234470997285516534065058887757272972533841547437247509415567206632827453524027585684464869520087576386907357207827931645864812453790560013100879070175244115566800303394525802384116508985235998027327908578315965475155235939798618031870849109894283125229184144172630553554607112725169432413343763989564437170644270643461665184965150423819594083121075825" : stdgo.GoString), (0 : stdgo.GoInt)), _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
        var _q = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _q.quoRem(_y, _x, _r);
                _i++;
            };
        };
    }
