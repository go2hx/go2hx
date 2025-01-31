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
var _ratBinTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_61.T__struct_61> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_61.T__struct_61>(18, 18, ...[
({ _x : ("0" : stdgo.GoString), _y : ("0" : stdgo.GoString), _sum : ("0" : stdgo.GoString), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("0" : stdgo.GoString), _y : ("1" : stdgo.GoString), _sum : ("1" : stdgo.GoString), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("-1" : stdgo.GoString), _y : ("0" : stdgo.GoString), _sum : ("-1" : stdgo.GoString), _prod : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("-1" : stdgo.GoString), _y : ("1" : stdgo.GoString), _sum : ("0" : stdgo.GoString), _prod : ("-1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("1" : stdgo.GoString), _y : ("1" : stdgo.GoString), _sum : ("2" : stdgo.GoString), _prod : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("1/2" : stdgo.GoString), _y : ("1/2" : stdgo.GoString), _sum : ("1" : stdgo.GoString), _prod : ("1/4" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("1/4" : stdgo.GoString), _y : ("1/3" : stdgo.GoString), _sum : ("7/12" : stdgo.GoString), _prod : ("1/12" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("2/5" : stdgo.GoString), _y : ("-14/3" : stdgo.GoString), _sum : ("-64/15" : stdgo.GoString), _prod : ("-28/15" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("4707/49292519774798173060" : stdgo.GoString), _y : ("-3367/70976135186689855734" : stdgo.GoString), _sum : ("84058377121001851123459/1749296273614329067191168098769082663020" : stdgo.GoString), _prod : ("-1760941/388732505247628681598037355282018369560" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("-61204110018146728334/3" : stdgo.GoString), _y : ("-31052192278051565633/2" : stdgo.GoString), _sum : ("-215564796870448153567/6" : stdgo.GoString), _prod : ("950260896245257153059642991192710872711/3" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("-854857841473707320655/4237645934602118692642972629634714039" : stdgo.GoString), _y : ("-18/31750379913563777419" : stdgo.GoString), _sum : ("-27/133467566250814981" : stdgo.GoString), _prod : ("15387441146526731771790/134546868362786310073779084329032722548987800600710485341" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("618575745270541348005638912139/19198433543745179392300736" : stdgo.GoString), _y : ("-19948846211000086/637313996471" : stdgo.GoString), _sum : ("27674141753240653/30123979153216" : stdgo.GoString), _prod : ("-6169936206128396568797607742807090270137721977/6117715203873571641674006593837351328" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("-3/26206484091896184128" : stdgo.GoString), _y : ("5/2848423294177090248" : stdgo.GoString), _sum : ("15310893822118706237/9330894968229805033368778458685147968" : stdgo.GoString), _prod : ("-5/24882386581946146755650075889827061248" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("26946729/330400702820" : stdgo.GoString), _y : ("41563965/225583428284" : stdgo.GoString), _sum : ("1238218672302860271/4658307703098666660055" : stdgo.GoString), _prod : ("224002580204097/14906584649915733312176" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("-8259900599013409474/7" : stdgo.GoString), _y : ("-84829337473700364773/56707961321161574960" : stdgo.GoString), _sum : ("-468402123685491748914621885145127724451/396955729248131024720" : stdgo.GoString), _prod : ("350340947706464153265156004876107029701/198477864624065512360" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("575775209696864/1320203974639986246357" : stdgo.GoString), _y : ("29/712593081308" : stdgo.GoString), _sum : ("410331716733912717985762465/940768218243776489278275419794956" : stdgo.GoString), _prod : ("808/45524274987585732633" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("1786597389946320496771/2066653520653241" : stdgo.GoString), _y : ("6269770/1992362624741777" : stdgo.GoString), _sum : ("3559549865190272133656109052308126637/4117523232840525481453983149257" : stdgo.GoString), _prod : ("8967230/3296219033" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61),
({ _x : ("-36459180403360509753/32150500941194292113930" : stdgo.GoString), _y : ("9381566963714/9633539" : stdgo.GoString), _sum : ("301622077145533298008420642898530153/309723104686531919656937098270" : stdgo.GoString), _prod : ("-3784609207827/3426986245" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _y : ("" : stdgo.GoString), _sum : ("" : stdgo.GoString), _prod : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_61.T__struct_61)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_61.T__struct_61>);
