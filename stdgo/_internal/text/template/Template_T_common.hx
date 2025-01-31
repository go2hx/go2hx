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
@:structInit @:using(stdgo._internal.text.template.Template_T_common_static_extension.T_common_static_extension) class T_common {
    public var _tmpl : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>);
    public var _muTmpl : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _option : stdgo._internal.text.template.Template_T_option.T_option = ({} : stdgo._internal.text.template.Template_T_option.T_option);
    public var _muFuncs : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _parseFuncs : stdgo._internal.text.template.Template_FuncMap.FuncMap = (null : stdgo._internal.text.template.Template_FuncMap.FuncMap);
    public var _execFuncs : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>);
    public function new(?_tmpl:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>>, ?_muTmpl:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_option:stdgo._internal.text.template.Template_T_option.T_option, ?_muFuncs:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_parseFuncs:stdgo._internal.text.template.Template_FuncMap.FuncMap, ?_execFuncs:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>) {
        if (_tmpl != null) this._tmpl = _tmpl;
        if (_muTmpl != null) this._muTmpl = _muTmpl;
        if (_option != null) this._option = _option;
        if (_muFuncs != null) this._muFuncs = _muFuncs;
        if (_parseFuncs != null) this._parseFuncs = _parseFuncs;
        if (_execFuncs != null) this._execFuncs = _execFuncs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_common(_tmpl, _muTmpl, _option, _muFuncs, _parseFuncs, _execFuncs);
    }
}
