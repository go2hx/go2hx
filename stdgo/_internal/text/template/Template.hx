package stdgo._internal.text.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.net.url.Url;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.internal.fmtsort.Fmtsort;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.text.template.Template__maxExecDepth._maxExecDepth, __tmp__1 = stdgo._internal.text.template.Template__missingVal._missingVal, __tmp__2 = stdgo._internal.text.template.Template__missingValReflectType._missingValReflectType, __tmp__3 = stdgo._internal.text.template.Template__walkBreak._walkBreak, __tmp__4 = stdgo._internal.text.template.Template__walkContinue._walkContinue, __tmp__5 = stdgo._internal.text.template.Template__errorType._errorType, __tmp__6 = stdgo._internal.text.template.Template__fmtStringerType._fmtStringerType, __tmp__7 = stdgo._internal.text.template.Template__reflectValueType._reflectValueType, __tmp__8 = stdgo._internal.text.template.Template__errBadComparisonType._errBadComparisonType, __tmp__9 = stdgo._internal.text.template.Template__errBadComparison._errBadComparison, __tmp__10 = stdgo._internal.text.template.Template__errNoComparison._errNoComparison, __tmp__11 = stdgo._internal.text.template.Template__htmlQuot._htmlQuot, __tmp__12 = stdgo._internal.text.template.Template__htmlApos._htmlApos, __tmp__13 = stdgo._internal.text.template.Template__htmlAmp._htmlAmp, __tmp__14 = stdgo._internal.text.template.Template__htmlLt._htmlLt, __tmp__15 = stdgo._internal.text.template.Template__htmlGt._htmlGt, __tmp__16 = stdgo._internal.text.template.Template__htmlNull._htmlNull, __tmp__17 = stdgo._internal.text.template.Template__jsLowUni._jsLowUni, __tmp__18 = stdgo._internal.text.template.Template__hex._hex, __tmp__19 = stdgo._internal.text.template.Template__jsBackslash._jsBackslash, __tmp__20 = stdgo._internal.text.template.Template__jsApos._jsApos, __tmp__21 = stdgo._internal.text.template.Template__jsQuot._jsQuot, __tmp__22 = stdgo._internal.text.template.Template__jsLt._jsLt, __tmp__23 = stdgo._internal.text.template.Template__jsGt._jsGt, __tmp__24 = stdgo._internal.text.template.Template__jsAmp._jsAmp, __tmp__25 = stdgo._internal.text.template.Template__jsEq._jsEq, __tmp__26 = stdgo._internal.text.template.Template__debug._debug, __tmp__27 = stdgo._internal.text.template.Template__siVal._siVal, __tmp__28 = stdgo._internal.text.template.Template__tVal._tVal, __tmp__29 = stdgo._internal.text.template.Template__tSliceOfNil._tSliceOfNil, __tmp__30 = stdgo._internal.text.template.Template__iVal._iVal, __tmp__31 = stdgo._internal.text.template.Template__myError._myError, __tmp__32 = stdgo._internal.text.template.Template__bigInt._bigInt, __tmp__33 = stdgo._internal.text.template.Template__bigUint._bigUint, __tmp__34 = stdgo._internal.text.template.Template__execTests._execTests, __tmp__35 = stdgo._internal.text.template.Template__delimPairs._delimPairs, __tmp__36 = stdgo._internal.text.template.Template__cmpTests._cmpTests, __tmp__37 = stdgo._internal.text.template.Template__alwaysError._alwaysError, __tmp__38 = stdgo._internal.text.template.Template__multiParseTests._multiParseTests, __tmp__39 = stdgo._internal.text.template.Template__multiExecTests._multiExecTests, __tmp__40 = stdgo._internal.text.template.Template__templateFileExecTests._templateFileExecTests;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
