package stdgo._internal.plugin;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.plugin.Plugin.Plugin_asInterface) class Plugin_static_extension {
    @:keep
    @:tdfield
    static public function lookup( _p:stdgo.Ref<stdgo._internal.plugin.Plugin_Plugin.Plugin>, _symName:stdgo.GoString):{ var _0 : stdgo._internal.plugin.Plugin_Symbol.Symbol; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.plugin.Plugin_Plugin.Plugin> = _p;
        return stdgo._internal.plugin.Plugin__lookup._lookup(_p, _symName?.__copy__());
    }
}
