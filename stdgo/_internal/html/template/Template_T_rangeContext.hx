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
@:structInit @:using(stdgo._internal.html.template.Template_T_rangeContext_static_extension.T_rangeContext_static_extension) class T_rangeContext {
    public var _outer : stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext> = (null : stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>);
    public var _breaks : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context> = (null : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>);
    public var _continues : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context> = (null : stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>);
    public function new(?_outer:stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>, ?_breaks:stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>, ?_continues:stdgo.Slice<stdgo._internal.html.template.Template_T_context.T_context>) {
        if (_outer != null) this._outer = _outer;
        if (_breaks != null) this._breaks = _breaks;
        if (_continues != null) this._continues = _continues;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rangeContext(_outer, _breaks, _continues);
    }
}
