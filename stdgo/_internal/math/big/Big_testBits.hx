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
function testBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_T_nat.T_nat>(6, 6, ...[null, (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(5, 5, ...[(0u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word), (2u32 : stdgo._internal.math.big.Big_Word.Word), (3u32 : stdgo._internal.math.big.Big_Word.Word), (4u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(5, 5, ...[(4u32 : stdgo._internal.math.big.Big_Word.Word), (3u32 : stdgo._internal.math.big.Big_Word.Word), (2u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat), (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(8, 8, ...[(4u32 : stdgo._internal.math.big.Big_Word.Word), (3u32 : stdgo._internal.math.big.Big_Word.Word), (2u32 : stdgo._internal.math.big.Big_Word.Word), (1u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word), (0u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat)]) : stdgo.Slice<stdgo._internal.math.big.Big_T_nat.T_nat>)) {
            var _z:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            _z._neg = true;
            var _got = @:check2 _z.setBits(_test);
            var _want = (stdgo._internal.math.big.Big__norm._norm(_test) : stdgo._internal.math.big.Big_T_nat.T_nat);
            if ((@:checkr _got ?? throw "null pointer dereference")._abs._cmp(_want) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("SetBits(%v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _got ?? throw "null pointer dereference")._abs)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
            if ((@:checkr _got ?? throw "null pointer dereference")._neg) {
                @:check2r _t.errorf(("SetBits(%v): got negative result" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            };
            var _bits = (@:check2 _z.bits() : stdgo._internal.math.big.Big_T_nat.T_nat);
            if (_bits._cmp(_want) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("%v.Bits() = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z._abs)), stdgo.Go.toInterface(stdgo.Go.asInterface(_bits)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
