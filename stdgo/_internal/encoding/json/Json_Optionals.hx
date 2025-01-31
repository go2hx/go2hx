package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.Math;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.math.big.Big;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.testing.Testing;
import stdgo._internal.log.Log;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.net.Net;
import stdgo._internal.net.http.httptest.Httptest;
import stdgo._internal.net.http.Http;
@:structInit @:using(stdgo._internal.encoding.json.Json_Optionals_static_extension.Optionals_static_extension) class Optionals {
    @:tag("`json:\"sr\"`")
    public var sr : stdgo.GoString = "";
    @:tag("`json:\"so,omitempty\"`")
    public var so : stdgo.GoString = "";
    @:tag("`json:\"-\"`")
    public var sw : stdgo.GoString = "";
    @:tag("`json:\"omitempty\"`")
    public var ir : stdgo.GoInt = 0;
    @:tag("`json:\"io,omitempty\"`")
    public var io : stdgo.GoInt = 0;
    @:tag("`json:\"slr,random\"`")
    public var slr : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    @:tag("`json:\"slo,omitempty\"`")
    public var slo : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    @:tag("`json:\"mr\"`")
    public var mr : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
    @:tag("`json:\",omitempty\"`")
    public var mo : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
    @:tag("`json:\"fr\"`")
    public var fr : stdgo.GoFloat64 = 0;
    @:tag("`json:\"fo,omitempty\"`")
    public var fo : stdgo.GoFloat64 = 0;
    @:tag("`json:\"br\"`")
    public var br : Bool = false;
    @:tag("`json:\"bo,omitempty\"`")
    public var bo : Bool = false;
    @:tag("`json:\"ur\"`")
    public var ur : stdgo.GoUInt = 0;
    @:tag("`json:\"uo,omitempty\"`")
    public var uo : stdgo.GoUInt = 0;
    @:tag("`json:\"str\"`")
    public var str : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue = ({} : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue);
    @:tag("`json:\"sto,omitempty\"`")
    public var sto : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue = ({} : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue);
    public function new(?sr:stdgo.GoString, ?so:stdgo.GoString, ?sw:stdgo.GoString, ?ir:stdgo.GoInt, ?io:stdgo.GoInt, ?slr:stdgo.Slice<stdgo.GoString>, ?slo:stdgo.Slice<stdgo.GoString>, ?mr:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?mo:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?fr:stdgo.GoFloat64, ?fo:stdgo.GoFloat64, ?br:Bool, ?bo:Bool, ?ur:stdgo.GoUInt, ?uo:stdgo.GoUInt, ?str:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue, ?sto:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue) {
        if (sr != null) this.sr = sr;
        if (so != null) this.so = so;
        if (sw != null) this.sw = sw;
        if (ir != null) this.ir = ir;
        if (io != null) this.io = io;
        if (slr != null) this.slr = slr;
        if (slo != null) this.slo = slo;
        if (mr != null) this.mr = mr;
        if (mo != null) this.mo = mo;
        if (fr != null) this.fr = fr;
        if (fo != null) this.fo = fo;
        if (br != null) this.br = br;
        if (bo != null) this.bo = bo;
        if (ur != null) this.ur = ur;
        if (uo != null) this.uo = uo;
        if (str != null) this.str = str;
        if (sto != null) this.sto = sto;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Optionals(
sr,
so,
sw,
ir,
io,
slr,
slo,
mr,
mo,
fr,
fo,
br,
bo,
ur,
uo,
str,
sto);
    }
}
