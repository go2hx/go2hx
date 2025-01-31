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
@:structInit @:using(stdgo._internal.html.template.Template_T_nameSpace_static_extension.T_nameSpace_static_extension) class T_nameSpace {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _set : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>);
    public var _escaped : Bool = false;
    public var _esc : stdgo._internal.html.template.Template_T_escaper.T_escaper = ({} : stdgo._internal.html.template.Template_T_escaper.T_escaper);
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_set:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>>, ?_escaped:Bool, ?_esc:stdgo._internal.html.template.Template_T_escaper.T_escaper) {
        if (_mu != null) this._mu = _mu;
        if (_set != null) this._set = _set;
        if (_escaped != null) this._escaped = _escaped;
        if (_esc != null) this._esc = _esc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_nameSpace(_mu, _set, _escaped, _esc);
    }
}
