package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
var _feistelBox : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt32>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt32>>(8, 8, ...[for (i in 0 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt32>(64, 64).__setNumber32__()]);
