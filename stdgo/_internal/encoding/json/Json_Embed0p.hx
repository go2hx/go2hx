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
@:structInit @:using(stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension) class Embed0p {
    @:embedded
    public var point : stdgo._internal.image.Image_Point.Point = ({} : stdgo._internal.image.Image_Point.Point);
    public function new(?point:stdgo._internal.image.Image_Point.Point) {
        if (point != null) this.point = point;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var add(get, never) : stdgo._internal.image.Image_Point.Point -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_add():stdgo._internal.image.Image_Point.Point -> stdgo._internal.image.Image_Point.Point return @:check31 (this.point ?? throw "null pointer dereference").add;
    public var div(get, never) : stdgo.GoInt -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_div():stdgo.GoInt -> stdgo._internal.image.Image_Point.Point return @:check31 (this.point ?? throw "null pointer dereference").div;
    public var eq(get, never) : stdgo._internal.image.Image_Point.Point -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_eq():stdgo._internal.image.Image_Point.Point -> Bool return @:check31 (this.point ?? throw "null pointer dereference").eq;
    public var in_(get, never) : stdgo._internal.image.Image_Rectangle.Rectangle -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_in_():stdgo._internal.image.Image_Rectangle.Rectangle -> Bool return @:check31 (this.point ?? throw "null pointer dereference").in_;
    public var mod(get, never) : stdgo._internal.image.Image_Rectangle.Rectangle -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_mod():stdgo._internal.image.Image_Rectangle.Rectangle -> stdgo._internal.image.Image_Point.Point return @:check31 (this.point ?? throw "null pointer dereference").mod;
    public var mul(get, never) : stdgo.GoInt -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_mul():stdgo.GoInt -> stdgo._internal.image.Image_Point.Point return @:check31 (this.point ?? throw "null pointer dereference").mul;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.point ?? throw "null pointer dereference").string;
    public var sub(get, never) : stdgo._internal.image.Image_Point.Point -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_sub():stdgo._internal.image.Image_Point.Point -> stdgo._internal.image.Image_Point.Point return @:check31 (this.point ?? throw "null pointer dereference").sub;
    public function __copy__() {
        return new Embed0p(point);
    }
}
