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
@:keep @:allow(stdgo._internal.math.big.Big.Accuracy_asInterface) class Accuracy_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.math.big.Big_Accuracy.Accuracy):stdgo.GoString {
        @:recv var _i:stdgo._internal.math.big.Big_Accuracy.Accuracy = _i;
        _i = (_i - ((-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy)) : stdgo._internal.math.big.Big_Accuracy.Accuracy);
        if (((_i < (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy) : Bool) || (_i >= ((3 : stdgo.GoInt) : stdgo._internal.math.big.Big_Accuracy.Accuracy) : Bool) : Bool)) {
            return ((("Accuracy(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt(((_i + (-1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) : stdgo._internal.math.big.Big_Accuracy.Accuracy) : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (("BelowExactAbove" : stdgo.GoString).__slice__(stdgo._internal.math.big.Big___Accuracy_index.__Accuracy_index[(_i : stdgo.GoInt)], stdgo._internal.math.big.Big___Accuracy_index.__Accuracy_index[((_i + (1 : stdgo._internal.math.big.Big_Accuracy.Accuracy) : stdgo._internal.math.big.Big_Accuracy.Accuracy) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
    }
}
