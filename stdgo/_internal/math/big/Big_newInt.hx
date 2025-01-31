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
function newInt(_x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        var _u = (_x : stdgo.GoUInt64);
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _u = -_u;
        };
        var _abs:stdgo.Slice<stdgo._internal.math.big.Big_Word.Word> = (null : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        if (_x == ((0i64 : stdgo.GoInt64))) {} else if ((true && ((_u >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (0i64 : stdgo.GoUInt64)) : Bool)) {
            _abs = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(2, 2, ...[(_u : stdgo._internal.math.big.Big_Word.Word), ((_u >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        } else {
            _abs = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(_u : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        };
        return (stdgo.Go.setRef(({ _neg : (_x < (0i64 : stdgo.GoInt64) : Bool), _abs : _abs } : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    }
