package stdgo._internal.plugin;
import stdgo._internal.errors.Errors;
function open(_path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.plugin.Plugin_Plugin.Plugin>; var _1 : stdgo.Error; } {
        return stdgo._internal.plugin.Plugin__open._open(_path?.__copy__());
    }
