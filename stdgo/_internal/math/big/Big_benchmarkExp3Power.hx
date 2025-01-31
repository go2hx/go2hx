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
function benchmarkExp3Power(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        for (__8 => _y in (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(10, 10, ...[(16u32 : stdgo._internal.math.big.Big_Word.Word), (64u32 : stdgo._internal.math.big.Big_Word.Word), (256u32 : stdgo._internal.math.big.Big_Word.Word), (1024u32 : stdgo._internal.math.big.Big_Word.Word), (4096u32 : stdgo._internal.math.big.Big_Word.Word), (16384u32 : stdgo._internal.math.big.Big_Word.Word), (65536u32 : stdgo._internal.math.big.Big_Word.Word), (262144u32 : stdgo._internal.math.big.Big_Word.Word), (1048576u32 : stdgo._internal.math.big.Big_Word.Word), (4194304u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>)) {
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#x" : stdgo.GoString), stdgo.Go.toInterface(_y))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        _z._expWW((3u32 : stdgo._internal.math.big.Big_Word.Word), _y);
                        _i++;
                    };
                };
            });
        };
    }
