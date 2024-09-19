package stdgo._internal.crypto.des;
var _feistelBox : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt32>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt32>>(8, 8, ...[for (i in 0 ... 8) new stdgo.GoArray<stdgo.GoUInt32>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt32)])]);
