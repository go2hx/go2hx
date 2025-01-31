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
function testIssue2379(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _q = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        @:check2r _x.setFrac(stdgo._internal.math.big.Big_newInt.newInt((3i64 : stdgo.GoInt64)), stdgo._internal.math.big.Big_newInt.newInt((2i64 : stdgo.GoInt64)));
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("1) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        @:check2r _x.setFrac(stdgo._internal.math.big.Big_newInt.newInt((3i64 : stdgo.GoInt64)), @:check2r _x.num());
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("2) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        @:check2r _x.setFrac(@:check2r _x.denom(), stdgo._internal.math.big.Big_newInt.newInt((2i64 : stdgo.GoInt64)));
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("3) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        @:check2r _x.setFrac(@:check2r _x.denom(), @:check2r _x.num());
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("4) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _q = stdgo._internal.math.big.Big_newRat.newRat((1i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        var _n = stdgo._internal.math.big.Big_newInt.newInt((7i64 : stdgo.GoInt64));
        @:check2r _x.setFrac(_n, _n);
        if (@:check2r _x.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("5) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
    }
