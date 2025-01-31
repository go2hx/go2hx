package stdgo._internal.html.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.text.template.parse.Parse;
import stdgo._internal.html.Html;
import stdgo._internal.text.template.Template;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.html.template.Template___attr_index.__attr_index, __tmp__1 = stdgo._internal.html.template.Template__attrTypeMap._attrTypeMap, __tmp__2 = stdgo._internal.html.template.Template__errorType._errorType, __tmp__3 = stdgo._internal.html.template.Template__fmtStringerType._fmtStringerType, __tmp__4 = stdgo._internal.html.template.Template__cssReplacementTable._cssReplacementTable, __tmp__5 = stdgo._internal.html.template.Template__expressionBytes._expressionBytes, __tmp__6 = stdgo._internal.html.template.Template__mozBindingBytes._mozBindingBytes, __tmp__7 = stdgo._internal.html.template.Template___delim_index.__delim_index, __tmp__8 = stdgo._internal.html.template.Template___element_index.__element_index, __tmp__9 = stdgo._internal.html.template.Template__debugAllowActionJSTmpl._debugAllowActionJSTmpl, __tmp__10 = stdgo._internal.html.template.Template__predefinedEscapers._predefinedEscapers, __tmp__11 = stdgo._internal.html.template.Template__equivEscapers._equivEscapers, __tmp__12 = stdgo._internal.html.template.Template__redundantFuncs._redundantFuncs, __tmp__13 = stdgo._internal.html.template.Template__delimEnds._delimEnds, __tmp__14 = stdgo._internal.html.template.Template__specialScriptTagRE._specialScriptTagRE, __tmp__15 = stdgo._internal.html.template.Template__specialScriptTagReplacement._specialScriptTagReplacement, __tmp__16 = stdgo._internal.html.template.Template__doctypeBytes._doctypeBytes, __tmp__17 = stdgo._internal.html.template.Template__htmlReplacementTable._htmlReplacementTable, __tmp__18 = stdgo._internal.html.template.Template__htmlNormReplacementTable._htmlNormReplacementTable, __tmp__19 = stdgo._internal.html.template.Template__htmlNospaceReplacementTable._htmlNospaceReplacementTable, __tmp__20 = stdgo._internal.html.template.Template__htmlNospaceNormReplacementTable._htmlNospaceNormReplacementTable, __tmp__21 = stdgo._internal.html.template.Template__regexpPrecederKeywords._regexpPrecederKeywords, __tmp__22 = stdgo._internal.html.template.Template__jsonMarshalType._jsonMarshalType, __tmp__23 = stdgo._internal.html.template.Template__lowUnicodeReplacementTable._lowUnicodeReplacementTable, __tmp__24 = stdgo._internal.html.template.Template__jsStrReplacementTable._jsStrReplacementTable, __tmp__25 = stdgo._internal.html.template.Template__jsStrNormReplacementTable._jsStrNormReplacementTable, __tmp__26 = stdgo._internal.html.template.Template__jsRegexpReplacementTable._jsRegexpReplacementTable, __tmp__27 = stdgo._internal.html.template.Template___jsCtx_index.__jsCtx_index, __tmp__28 = stdgo._internal.html.template.Template___state_index.__state_index, __tmp__29 = stdgo._internal.html.template.Template__escapeOK._escapeOK, __tmp__30 = stdgo._internal.html.template.Template__commentStart._commentStart, __tmp__31 = stdgo._internal.html.template.Template__commentEnd._commentEnd, __tmp__32 = stdgo._internal.html.template.Template__elementContentType._elementContentType, __tmp__33 = stdgo._internal.html.template.Template__attrStartStates._attrStartStates, __tmp__34 = stdgo._internal.html.template.Template__specialTagEndMarkers._specialTagEndMarkers, __tmp__35 = stdgo._internal.html.template.Template__specialTagEndPrefix._specialTagEndPrefix, __tmp__36 = stdgo._internal.html.template.Template__tagEndSeparators._tagEndSeparators, __tmp__37 = stdgo._internal.html.template.Template__blockCommentEnd._blockCommentEnd, __tmp__38 = stdgo._internal.html.template.Template__elementNameMap._elementNameMap, __tmp__39 = stdgo._internal.html.template.Template__transitionFunc._transitionFunc, __tmp__40 = stdgo._internal.html.template.Template__funcMap._funcMap, __tmp__41 = stdgo._internal.html.template.Template___urlPart_index.__urlPart_index;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
