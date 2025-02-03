package stdgo.plugin;
class Plugin_static_extension {
    static public function lookup(_p:Plugin_, _symName:String):stdgo.Tuple<Symbol, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.plugin.Plugin_Plugin.Plugin>);
        final _symName = (_symName : stdgo.GoString);
        return {
            final obj = stdgo._internal.plugin.Plugin_Plugin_static_extension.Plugin_static_extension.lookup(_p, _symName);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
