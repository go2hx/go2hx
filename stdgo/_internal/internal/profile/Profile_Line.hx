package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import _internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
@:structInit @:using(stdgo._internal.internal.profile.Profile_Line_static_extension.Line_static_extension) class Line {
    public var function_ : stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function> = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>);
    public var line : stdgo.GoInt64 = 0;
    public var _functionIDX : stdgo.GoUInt64 = 0;
    public function new(?function_:stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>, ?line:stdgo.GoInt64, ?_functionIDX:stdgo.GoUInt64) {
        if (function_ != null) this.function_ = function_;
        if (line != null) this.line = line;
        if (_functionIDX != null) this._functionIDX = _functionIDX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Line(function_, line, _functionIDX);
    }
}
