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
function testIssue34919(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _acc in (new stdgo.Slice<stdgo._internal.math.big.Big_T__struct_63.T__struct_63>(6, 6, ...[({ _name : ("Float32" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Void {
            @:check2r _x.float32();
        } } : stdgo._internal.math.big.Big_T__struct_63.T__struct_63), ({ _name : ("Float64" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Void {
            @:check2r _x.float64();
        } } : stdgo._internal.math.big.Big_T__struct_63.T__struct_63), ({ _name : ("Inv" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Void {
            @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).inv(_x);
        } } : stdgo._internal.math.big.Big_T__struct_63.T__struct_63), ({ _name : ("Sign" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Void {
            @:check2r _x.sign();
        } } : stdgo._internal.math.big.Big_T__struct_63.T__struct_63), ({ _name : ("IsInt" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Void {
            @:check2r _x.isInt();
        } } : stdgo._internal.math.big.Big_T__struct_63.T__struct_63), ({ _name : ("Num" : stdgo.GoString), _f : function(_x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Void {
            @:check2r _x.num();
        } } : stdgo._internal.math.big.Big_T__struct_63.T__struct_63)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : stdgo._internal.math.big.Big_T__struct_63.T__struct_63)])) : stdgo.Slice<stdgo._internal.math.big.Big_T__struct_63.T__struct_63>)) {
            var _r = (stdgo.Go.setRef((new stdgo._internal.math.big.Big_Rat.Rat(({ _abs : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(991u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat) } : stdgo._internal.math.big.Big_Int_.Int_), ({ _abs : (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((0 : stdgo.GoInt).toBasic(), (1 : stdgo.GoInt)).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat) } : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
            _acc._f(_r);
            {
                var _d = (((@:checkr _r ?? throw "null pointer dereference")._b._abs.__slice__(0, (1 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat)[(0 : stdgo.GoInt)] : stdgo._internal.math.big.Big_Word.Word);
                if (_d != ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
                    @:check2r _t.errorf(("%s modified denominator: got %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_acc._name), stdgo.Go.toInterface(_d));
                };
            };
        };
    }
