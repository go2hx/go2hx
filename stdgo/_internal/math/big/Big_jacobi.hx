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
function jacobi(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.GoInt {
        if ((((@:checkr _y ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) || (((@:checkr _y ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == (0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("big: invalid 2nd argument to Int.Jacobi: need odd integer but got %s" : stdgo.GoString), stdgo.Go.toInterface((@:check2r _y.string() : stdgo.GoString))));
        };
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __2:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _c = __2, _b = __1, _a = __0;
        @:check2 _a.set(_x);
        @:check2 _b.set(_y);
        var _j = (1 : stdgo.GoInt);
        if (_b._neg) {
            if (_a._neg) {
                _j = (-1 : stdgo.GoInt);
            };
            _b._neg = false;
        };
        while (true) {
            if (@:check2 _b.cmp(stdgo._internal.math.big.Big__intOne._intOne) == ((0 : stdgo.GoInt))) {
                return _j;
            };
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                return (0 : stdgo.GoInt);
            };
            @:check2 _a.mod((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                return (0 : stdgo.GoInt);
            };
            var _s = (_a._abs._trailingZeroBits() : stdgo.GoUInt);
            if ((_s & (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                var _bmod8 = (_b._abs[(0 : stdgo.GoInt)] & (7u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
                if (((_bmod8 == (3u32 : stdgo._internal.math.big.Big_Word.Word)) || (_bmod8 == (5u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
                    _j = -_j;
                };
            };
            @:check2 _c.rsh((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _s);
            if ((((_b._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == (3u32 : stdgo._internal.math.big.Big_Word.Word)) && ((_c._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == (3u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
                _j = -_j;
            };
            @:check2 _a.set((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
            @:check2 _b.set((stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
        };
    }
