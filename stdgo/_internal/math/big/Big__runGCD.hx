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
function _runGCD(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _aSize:stdgo.GoUInt, _bSize:stdgo.GoUInt):Void {
        if ((stdgo._internal.math.big.Big__isRaceBuilder._isRaceBuilder && (((_aSize > (1000u32 : stdgo.GoUInt) : Bool) || (_bSize > (1000u32 : stdgo.GoUInt) : Bool) : Bool)) : Bool)) {
            @:check2r _b.skip(stdgo.Go.toInterface(("skipping on race builder" : stdgo.GoString)));
        };
        @:check2r _b.run(("WithoutXY" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            stdgo._internal.math.big.Big__runGCDExt._runGCDExt(_b, _aSize, _bSize, false);
        });
        @:check2r _b.run(("WithXY" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            stdgo._internal.math.big.Big__runGCDExt._runGCDExt(_b, _aSize, _bSize, true);
        });
    }
