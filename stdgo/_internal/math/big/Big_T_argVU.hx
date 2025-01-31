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
@:structInit @:using(stdgo._internal.math.big.Big_T_argVU_static_extension.T_argVU_static_extension) class T_argVU {
    public var _d : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word> = (null : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
    public var _l : stdgo.GoUInt = 0;
    public var _xp : stdgo.GoUInt = 0;
    public var _zp : stdgo.GoUInt = 0;
    public var _s : stdgo.GoUInt = 0;
    public var _r : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word> = (null : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
    public var _c : stdgo._internal.math.big.Big_Word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
    public var _m : stdgo.GoString = "";
    public function new(?_d:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, ?_l:stdgo.GoUInt, ?_xp:stdgo.GoUInt, ?_zp:stdgo.GoUInt, ?_s:stdgo.GoUInt, ?_r:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>, ?_c:stdgo._internal.math.big.Big_Word.Word, ?_m:stdgo.GoString) {
        if (_d != null) this._d = _d;
        if (_l != null) this._l = _l;
        if (_xp != null) this._xp = _xp;
        if (_zp != null) this._zp = _zp;
        if (_s != null) this._s = _s;
        if (_r != null) this._r = _r;
        if (_c != null) this._c = _c;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_argVU(_d, _l, _xp, _zp, _s, _r, _c, _m);
    }
}
