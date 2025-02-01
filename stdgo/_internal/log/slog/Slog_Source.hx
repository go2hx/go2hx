package stdgo._internal.log.slog;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.log.Log;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.math.Math;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.slices.Slices;
import stdgo._internal.log.slog.internal.Internal;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
@:structInit @:using(stdgo._internal.log.slog.Slog_Source_static_extension.Source_static_extension) class Source {
    @:tag("`json:\"function\"`")
    public var function_ : stdgo.GoString = "";
    @:tag("`json:\"file\"`")
    public var file : stdgo.GoString = "";
    @:tag("`json:\"line\"`")
    public var line : stdgo.GoInt = 0;
    public function new(?function_:stdgo.GoString, ?file:stdgo.GoString, ?line:stdgo.GoInt) {
        if (function_ != null) this.function_ = function_;
        if (file != null) this.file = file;
        if (line != null) this.line = line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Source(function_, file, line);
    }
}
