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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.log.slog.Slog__groupPool._groupPool, __tmp__1 = stdgo._internal.log.slog.Slog__hex._hex, __tmp__2 = stdgo._internal.log.slog.Slog__safeSet._safeSet, __tmp__3 = stdgo._internal.log.slog.Slog__kindStrings._kindStrings;
            @:check2 stdgo._internal.log.slog.Slog__defaultLogger._defaultLogger.store(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.log.slog.Slog_new_.new_(stdgo.Go.asInterface(stdgo._internal.log.slog.Slog__newDefaultHandler._newDefaultHandler(stdgo._internal.log.internal.Internal_defaultOutput.defaultOutput))))));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
