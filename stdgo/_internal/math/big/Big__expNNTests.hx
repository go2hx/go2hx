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
var _expNNTests : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_39.T__struct_39> = (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_39.T__struct_39>(19, 19, ...[
({ _x : ("0" : stdgo.GoString), _y : ("0" : stdgo.GoString), _m : ("0" : stdgo.GoString), _out : ("1" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("0" : stdgo.GoString), _y : ("0" : stdgo.GoString), _m : ("1" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("1" : stdgo.GoString), _y : ("1" : stdgo.GoString), _m : ("1" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("2" : stdgo.GoString), _y : ("1" : stdgo.GoString), _m : ("1" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("2" : stdgo.GoString), _y : ("2" : stdgo.GoString), _m : ("1" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("10" : stdgo.GoString), _y : ("100000000000" : stdgo.GoString), _m : ("1" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("0x8000000000000000" : stdgo.GoString), _y : ("2" : stdgo.GoString), _m : stdgo.Go.str()?.__copy__(), _out : ("0x40000000000000000000000000000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("0x8000000000000000" : stdgo.GoString), _y : ("2" : stdgo.GoString), _m : ("6719" : stdgo.GoString), _out : ("4944" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("0x8000000000000000" : stdgo.GoString), _y : ("3" : stdgo.GoString), _m : ("6719" : stdgo.GoString), _out : ("5447" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("0x8000000000000000" : stdgo.GoString), _y : ("1000" : stdgo.GoString), _m : ("6719" : stdgo.GoString), _out : ("1603" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("0x8000000000000000" : stdgo.GoString), _y : ("1000000" : stdgo.GoString), _m : ("6719" : stdgo.GoString), _out : ("3199" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("2938462938472983472983659726349017249287491026512746239764525612965293865296239471239874193284792387498274256129746192347" : stdgo.GoString), _y : ("298472983472983471903246121093472394872319615612417471234712061" : stdgo.GoString), _m : ("29834729834729834729347290846729561262544958723956495615629569234729836259263598127342374289365912465901365498236492183464" : stdgo.GoString), _out : ("23537740700184054162508175125554701713153216681790245129157191391322321508055833908509185839069455749219131480588829346291" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("11521922904531591643048817447554701904414021819823889996244743037378330903763518501116638828335352811871131385129455853417360623007349090150042001944696604737499160174391019030572483602867266711107136838523916077674888297896995042968746762200926853379" : stdgo.GoString), _y : ("426343618817810911523" : stdgo.GoString), _m : ("444747819283133684179" : stdgo.GoString), _out : ("42" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("375" : stdgo.GoString), _y : ("249" : stdgo.GoString), _m : ("388" : stdgo.GoString), _out : ("175" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("375" : stdgo.GoString), _y : ("18446744073709551801" : stdgo.GoString), _m : ("388" : stdgo.GoString), _out : ("175" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("0" : stdgo.GoString), _y : ("0x40000000000000" : stdgo.GoString), _m : ("0x200" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("0xeffffff900002f00" : stdgo.GoString), _y : ("0x40000000000000" : stdgo.GoString), _m : ("0x200" : stdgo.GoString), _out : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("5" : stdgo.GoString), _y : ("1435700818" : stdgo.GoString), _m : ("72" : stdgo.GoString), _out : ("49" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39),
({ _x : ("0xffff" : stdgo.GoString), _y : ("0x300030003000300030003000300030003000302a3000300030003000300030003000300030003000300030003000300030003030623066307f3030783062303430383064303630343036" : stdgo.GoString), _m : ("0x300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString), _out : ("0xa3f94c08b0b90e87af637cacc9383f7ea032352b8961fc036a52b659b6c9b33491b335ffd74c927f64ddd62cfca0001" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39)].concat([for (i in 19 ... (19 > 19 ? 19 : 19 : stdgo.GoInt).toBasic()) ({ _x : ("" : stdgo.GoString), _y : ("" : stdgo.GoString), _m : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_T__struct_39.T__struct_39)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_39.T__struct_39>);
