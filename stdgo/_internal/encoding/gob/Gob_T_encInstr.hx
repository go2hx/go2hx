package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_encInstr_static_extension.T_encInstr_static_extension) class T_encInstr {
    public var _op : stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp = (null : stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp);
    public var _field : stdgo.GoInt = 0;
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _indir : stdgo.GoInt = 0;
    public function new(?_op:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp, ?_field:stdgo.GoInt, ?_index:stdgo.Slice<stdgo.GoInt>, ?_indir:stdgo.GoInt) {
        if (_op != null) this._op = _op;
        if (_field != null) this._field = _field;
        if (_index != null) this._index = _index;
        if (_indir != null) this._indir = _indir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encInstr(_op, _field, _index, _indir);
    }
}
