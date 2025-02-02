package stdgo._internal.crypto.md5;
function _blockGeneric(_dig:stdgo.Ref<stdgo._internal.crypto.md5.Md5_T_digest.T_digest>, _p:stdgo.Slice<stdgo.GoUInt8>):Void {
        var __0 = ((@:checkr _dig ?? throw "null pointer dereference")._s[(0 : stdgo.GoInt)] : stdgo.GoUInt32), __1 = ((@:checkr _dig ?? throw "null pointer dereference")._s[(1 : stdgo.GoInt)] : stdgo.GoUInt32), __2 = ((@:checkr _dig ?? throw "null pointer dereference")._s[(2 : stdgo.GoInt)] : stdgo.GoUInt32), __3 = ((@:checkr _dig ?? throw "null pointer dereference")._s[(3 : stdgo.GoInt)] : stdgo.GoUInt32);
var _d = __3, _c = __2, _b = __1, _a = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= ((_p.length) - (64 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var _q = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
_q = (_q.__slice__(0, (64 : stdgo.GoInt), (64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var __0 = (_a : stdgo.GoUInt32), __1 = (_b : stdgo.GoUInt32), __2 = (_c : stdgo.GoUInt32), __3 = (_d : stdgo.GoUInt32);
var _dd = __3, _cc = __2, _bb = __1, _aa = __0;
var _x0 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _x1 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _x2 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _x3 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _x4 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _x5 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _x6 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _x7 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _x8 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _x9 = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((36 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _xa = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((40 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _xb = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((44 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _xc = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _xd = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((52 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _xe = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((56 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
var _xf = (stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint32((_q.__slice__((60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_c ^ _d : stdgo.GoUInt32)) & _b : stdgo.GoUInt32)) ^ _d : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x0 : stdgo.GoUInt32) + (-680876936u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (7 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_b ^ _c : stdgo.GoUInt32)) & _a : stdgo.GoUInt32)) ^ _c : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x1 : stdgo.GoUInt32) + (-389564586u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (12 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_a ^ _b : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) ^ _b : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _x2 : stdgo.GoUInt32) + (606105819u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (17 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_d ^ _a : stdgo.GoUInt32)) & _c : stdgo.GoUInt32)) ^ _a : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x3 : stdgo.GoUInt32) + (-1044525330u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (22 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_c ^ _d : stdgo.GoUInt32)) & _b : stdgo.GoUInt32)) ^ _d : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x4 : stdgo.GoUInt32) + (-176418897u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (7 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_b ^ _c : stdgo.GoUInt32)) & _a : stdgo.GoUInt32)) ^ _c : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x5 : stdgo.GoUInt32) + (1200080426u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (12 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_a ^ _b : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) ^ _b : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _x6 : stdgo.GoUInt32) + (-1473231341u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (17 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_d ^ _a : stdgo.GoUInt32)) & _c : stdgo.GoUInt32)) ^ _a : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x7 : stdgo.GoUInt32) + (-45705983u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (22 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_c ^ _d : stdgo.GoUInt32)) & _b : stdgo.GoUInt32)) ^ _d : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x8 : stdgo.GoUInt32) + (1770035416u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (7 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_b ^ _c : stdgo.GoUInt32)) & _a : stdgo.GoUInt32)) ^ _c : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x9 : stdgo.GoUInt32) + (-1958414417u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (12 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_a ^ _b : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) ^ _b : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _xa : stdgo.GoUInt32) + (-42063u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (17 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_d ^ _a : stdgo.GoUInt32)) & _c : stdgo.GoUInt32)) ^ _a : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _xb : stdgo.GoUInt32) + (-1990404162u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (22 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_c ^ _d : stdgo.GoUInt32)) & _b : stdgo.GoUInt32)) ^ _d : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _xc : stdgo.GoUInt32) + (1804603682u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (7 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_b ^ _c : stdgo.GoUInt32)) & _a : stdgo.GoUInt32)) ^ _c : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _xd : stdgo.GoUInt32) + (-40341101u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (12 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_a ^ _b : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) ^ _b : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _xe : stdgo.GoUInt32) + (-1502002290u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (17 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_d ^ _a : stdgo.GoUInt32)) & _c : stdgo.GoUInt32)) ^ _a : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _xf : stdgo.GoUInt32) + (1236535329u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (22 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_b ^ _c : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) ^ _c : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x1 : stdgo.GoUInt32) + (-165796510u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (5 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_a ^ _b : stdgo.GoUInt32)) & _c : stdgo.GoUInt32)) ^ _b : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x6 : stdgo.GoUInt32) + (-1069501632u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (9 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_d ^ _a : stdgo.GoUInt32)) & _b : stdgo.GoUInt32)) ^ _a : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _xb : stdgo.GoUInt32) + (643717713u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (14 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_c ^ _d : stdgo.GoUInt32)) & _a : stdgo.GoUInt32)) ^ _d : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x0 : stdgo.GoUInt32) + (-373897302u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (20 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_b ^ _c : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) ^ _c : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x5 : stdgo.GoUInt32) + (-701558691u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (5 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_a ^ _b : stdgo.GoUInt32)) & _c : stdgo.GoUInt32)) ^ _b : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _xa : stdgo.GoUInt32) + (38016083u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (9 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_d ^ _a : stdgo.GoUInt32)) & _b : stdgo.GoUInt32)) ^ _a : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _xf : stdgo.GoUInt32) + (-660478335u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (14 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_c ^ _d : stdgo.GoUInt32)) & _a : stdgo.GoUInt32)) ^ _d : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x4 : stdgo.GoUInt32) + (-405537848u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (20 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_b ^ _c : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) ^ _c : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x9 : stdgo.GoUInt32) + (568446438u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (5 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_a ^ _b : stdgo.GoUInt32)) & _c : stdgo.GoUInt32)) ^ _b : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _xe : stdgo.GoUInt32) + (-1019803690u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (9 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_d ^ _a : stdgo.GoUInt32)) & _b : stdgo.GoUInt32)) ^ _a : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _x3 : stdgo.GoUInt32) + (-187363961u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (14 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_c ^ _d : stdgo.GoUInt32)) & _a : stdgo.GoUInt32)) ^ _d : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x8 : stdgo.GoUInt32) + (1163531501u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (20 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_b ^ _c : stdgo.GoUInt32)) & _d : stdgo.GoUInt32)) ^ _c : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _xd : stdgo.GoUInt32) + (-1444681467u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (5 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_a ^ _b : stdgo.GoUInt32)) & _c : stdgo.GoUInt32)) ^ _b : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x2 : stdgo.GoUInt32) + (-51403784u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (9 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_d ^ _a : stdgo.GoUInt32)) & _b : stdgo.GoUInt32)) ^ _a : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _x7 : stdgo.GoUInt32) + (1735328473u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (14 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((((((_c ^ _d : stdgo.GoUInt32)) & _a : stdgo.GoUInt32)) ^ _d : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _xc : stdgo.GoUInt32) + (-1926607734u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (20 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_b ^ _c : stdgo.GoUInt32) ^ _d : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x5 : stdgo.GoUInt32) + (-378558u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (4 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_a ^ _b : stdgo.GoUInt32) ^ _c : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x8 : stdgo.GoUInt32) + (-2022574463u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (11 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_d ^ _a : stdgo.GoUInt32) ^ _b : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _xb : stdgo.GoUInt32) + (1839030562u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (16 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_c ^ _d : stdgo.GoUInt32) ^ _a : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _xe : stdgo.GoUInt32) + (-35309556u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (23 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_b ^ _c : stdgo.GoUInt32) ^ _d : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x1 : stdgo.GoUInt32) + (-1530992060u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (4 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_a ^ _b : stdgo.GoUInt32) ^ _c : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x4 : stdgo.GoUInt32) + (1272893353u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (11 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_d ^ _a : stdgo.GoUInt32) ^ _b : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _x7 : stdgo.GoUInt32) + (-155497632u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (16 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_c ^ _d : stdgo.GoUInt32) ^ _a : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _xa : stdgo.GoUInt32) + (-1094730640u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (23 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_b ^ _c : stdgo.GoUInt32) ^ _d : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _xd : stdgo.GoUInt32) + (681279174u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (4 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_a ^ _b : stdgo.GoUInt32) ^ _c : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x0 : stdgo.GoUInt32) + (-358537222u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (11 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_d ^ _a : stdgo.GoUInt32) ^ _b : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _x3 : stdgo.GoUInt32) + (-722521979u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (16 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_c ^ _d : stdgo.GoUInt32) ^ _a : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x6 : stdgo.GoUInt32) + (76029189u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (23 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_b ^ _c : stdgo.GoUInt32) ^ _d : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x9 : stdgo.GoUInt32) + (-640364487u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (4 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_a ^ _b : stdgo.GoUInt32) ^ _c : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _xc : stdgo.GoUInt32) + (-421815835u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (11 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_d ^ _a : stdgo.GoUInt32) ^ _b : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _xf : stdgo.GoUInt32) + (530742520u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (16 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32(((((((_c ^ _d : stdgo.GoUInt32) ^ _a : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x2 : stdgo.GoUInt32) + (-995338651u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (23 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_c ^ ((_b | (-1 ^ _d) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x0 : stdgo.GoUInt32) + (-198630844u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (6 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_b ^ ((_a | (-1 ^ _c) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x7 : stdgo.GoUInt32) + (1126891415u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (10 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_a ^ ((_d | (-1 ^ _b) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _xe : stdgo.GoUInt32) + (-1416354905u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (15 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_d ^ ((_c | (-1 ^ _a) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x5 : stdgo.GoUInt32) + (-57434055u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (21 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_c ^ ((_b | (-1 ^ _d) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _xc : stdgo.GoUInt32) + (1700485571u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (6 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_b ^ ((_a | (-1 ^ _c) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _x3 : stdgo.GoUInt32) + (-1894986606u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (10 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_a ^ ((_d | (-1 ^ _b) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _xa : stdgo.GoUInt32) + (-1051523u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (15 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_d ^ ((_c | (-1 ^ _a) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x1 : stdgo.GoUInt32) + (-2054922799u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (21 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_c ^ ((_b | (-1 ^ _d) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x8 : stdgo.GoUInt32) + (1873313359u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (6 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_b ^ ((_a | (-1 ^ _c) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _xf : stdgo.GoUInt32) + (-30611744u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (10 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_a ^ ((_d | (-1 ^ _b) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _x6 : stdgo.GoUInt32) + (-1560198380u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (15 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_d ^ ((_c | (-1 ^ _a) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _xd : stdgo.GoUInt32) + (1309151649u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (21 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_b + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_c ^ ((_b | (-1 ^ _d) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _a : stdgo.GoUInt32) + _x4 : stdgo.GoUInt32) + (-145523070u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (6 : stdgo.GoInt)) : stdgo.GoUInt32);
_d = (_a + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_b ^ ((_a | (-1 ^ _c) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _d : stdgo.GoUInt32) + _xb : stdgo.GoUInt32) + (-1120210379u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (10 : stdgo.GoInt)) : stdgo.GoUInt32);
_c = (_d + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_a ^ ((_d | (-1 ^ _b) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _c : stdgo.GoUInt32) + _x2 : stdgo.GoUInt32) + (718787259u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (15 : stdgo.GoInt)) : stdgo.GoUInt32);
_b = (_c + stdgo._internal.math.bits.Bits_rotateLeft32.rotateLeft32((((((_d ^ ((_c | (-1 ^ _a) : stdgo.GoUInt32)) : stdgo.GoUInt32)) + _b : stdgo.GoUInt32) + _x9 : stdgo.GoUInt32) + (-343485551u32 : stdgo.GoUInt32) : stdgo.GoUInt32), (21 : stdgo.GoInt)) : stdgo.GoUInt32);
_a = (_a + (_aa) : stdgo.GoUInt32);
_b = (_b + (_bb) : stdgo.GoUInt32);
_c = (_c + (_cc) : stdgo.GoUInt32);
_d = (_d + (_dd) : stdgo.GoUInt32);
                _i = (_i + ((64 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        {
            final __tmp__0 = _a;
            final __tmp__1 = _b;
            final __tmp__2 = _c;
            final __tmp__3 = _d;
            final __tmp__4 = (@:checkr _dig ?? throw "null pointer dereference")._s;
            final __tmp__5 = (0 : stdgo.GoInt);
            final __tmp__6 = (@:checkr _dig ?? throw "null pointer dereference")._s;
            final __tmp__7 = (1 : stdgo.GoInt);
            final __tmp__8 = (@:checkr _dig ?? throw "null pointer dereference")._s;
            final __tmp__9 = (2 : stdgo.GoInt);
            final __tmp__10 = (@:checkr _dig ?? throw "null pointer dereference")._s;
            final __tmp__11 = (3 : stdgo.GoInt);
            __tmp__4[__tmp__5] = __tmp__0;
            __tmp__6[__tmp__7] = __tmp__1;
            __tmp__8[__tmp__9] = __tmp__2;
            __tmp__10[__tmp__11] = __tmp__3;
        };
    }
