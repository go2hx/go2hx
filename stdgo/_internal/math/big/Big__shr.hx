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
function _shr(_x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _s:stdgo.GoUInt):Void {
        var _r = (0 : stdgo.GoInt);
        var _n:stdgo._internal.math.big.Big_Word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        while ((((_n >> _s : stdgo._internal.math.big.Big_Word.Word) == (0u32 : stdgo._internal.math.big.Big_Word.Word)) && (_r < ((@:checkr _x ?? throw "null pointer dereference")._mant.length) : Bool) : Bool)) {
            var _ch = ((@:checkr _x ?? throw "null pointer dereference")._mant[(_r : stdgo.GoInt)] : stdgo._internal.math.big.Big_Word.Word);
            _r++;
            _n = (((_n * (10u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) + _ch : stdgo._internal.math.big.Big_Word.Word) - (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        };
        if (_n == ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
            (@:checkr _x ?? throw "null pointer dereference")._mant = ((@:checkr _x ?? throw "null pointer dereference")._mant.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            return;
        };
        while ((_n >> _s : stdgo._internal.math.big.Big_Word.Word) == ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
            _r++;
            _n = (_n * ((10u32 : stdgo._internal.math.big.Big_Word.Word)) : stdgo._internal.math.big.Big_Word.Word);
        };
        (@:checkr _x ?? throw "null pointer dereference")._exp = ((@:checkr _x ?? throw "null pointer dereference")._exp + (((1 : stdgo.GoInt) - _r : stdgo.GoInt)) : stdgo.GoInt);
        var _w = (0 : stdgo.GoInt);
        var _mask = (((1u32 : stdgo._internal.math.big.Big_Word.Word) << _s : stdgo._internal.math.big.Big_Word.Word) - (1u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        while ((_r < ((@:checkr _x ?? throw "null pointer dereference")._mant.length) : Bool)) {
            var _ch = ((@:checkr _x ?? throw "null pointer dereference")._mant[(_r : stdgo.GoInt)] : stdgo._internal.math.big.Big_Word.Word);
            _r++;
            var _d = (_n >> _s : stdgo._internal.math.big.Big_Word.Word);
            _n = (_n & (_mask) : stdgo._internal.math.big.Big_Word.Word);
            (@:checkr _x ?? throw "null pointer dereference")._mant[(_w : stdgo.GoInt)] = ((_d + (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) : stdgo.GoUInt8);
            _w++;
            _n = (((_n * (10u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) + _ch : stdgo._internal.math.big.Big_Word.Word) - (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        };
        while (((_n > (0u32 : stdgo._internal.math.big.Big_Word.Word) : Bool) && (_w < ((@:checkr _x ?? throw "null pointer dereference")._mant.length) : Bool) : Bool)) {
            var _d = (_n >> _s : stdgo._internal.math.big.Big_Word.Word);
            _n = (_n & (_mask) : stdgo._internal.math.big.Big_Word.Word);
            (@:checkr _x ?? throw "null pointer dereference")._mant[(_w : stdgo.GoInt)] = ((_d + (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) : stdgo.GoUInt8);
            _w++;
            _n = (_n * (10u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        };
        (@:checkr _x ?? throw "null pointer dereference")._mant = ((@:checkr _x ?? throw "null pointer dereference")._mant.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>);
        while ((_n > (0u32 : stdgo._internal.math.big.Big_Word.Word) : Bool)) {
            var _d = (_n >> _s : stdgo._internal.math.big.Big_Word.Word);
            _n = (_n & (_mask) : stdgo._internal.math.big.Big_Word.Word);
            (@:checkr _x ?? throw "null pointer dereference")._mant = ((@:checkr _x ?? throw "null pointer dereference")._mant.__append__(((_d + (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) : stdgo.GoUInt8)));
            _n = (_n * (10u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        };
        stdgo._internal.math.big.Big__trim._trim(_x);
    }
