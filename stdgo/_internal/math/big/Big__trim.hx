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
function _trim(_x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>):Void {
        var _i = ((@:checkr _x ?? throw "null pointer dereference")._mant.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr _x ?? throw "null pointer dereference")._mant[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _i--;
        };
        (@:checkr _x ?? throw "null pointer dereference")._mant = ((@:checkr _x ?? throw "null pointer dereference")._mant.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
        if (_i == ((0 : stdgo.GoInt))) {
            (@:checkr _x ?? throw "null pointer dereference")._exp = (0 : stdgo.GoInt);
        };
    }
