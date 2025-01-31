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
function testIssue820(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        var _y = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        var _z = @:check2r _y.quo(_x, _y);
        var _q = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        if (@:check2r _z.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _y = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _x = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _z = @:check2r _y.quo(_x, _y);
        _q = stdgo._internal.math.big.Big_newRat.newRat((2i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        if (@:check2r _z.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
        _x = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64));
        _z = @:check2r _x.quo(_x, _x);
        _q = stdgo._internal.math.big.Big_newRat.newRat((3i64 : stdgo.GoInt64), (3i64 : stdgo.GoInt64));
        if (@:check2r _z.cmp(_q) != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_q)));
        };
    }
