package stdgo.expvar;
class Map__static_extension {
    static public function do_(_v:Map_, _f:stdgo._internal.expvar.Expvar_KeyValue.KeyValue -> Void):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        final _f = _f;
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.do_(_v, _f);
    }
    static public function delete(_v:Map_, _key:String):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        final _key = (_key : stdgo.GoString);
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.delete(_v, _key);
    }
    static public function addFloat(_v:Map_, _key:String, _delta:StdTypes.Float):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        final _key = (_key : stdgo.GoString);
        final _delta = (_delta : stdgo.GoFloat64);
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.addFloat(_v, _key, _delta);
    }
    static public function add(_v:Map_, _key:String, _delta:haxe.Int64):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        final _key = (_key : stdgo.GoString);
        final _delta = (_delta : stdgo.GoInt64);
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.add(_v, _key, _delta);
    }
    static public function set(_v:Map_, _key:String, _av:Var):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        final _key = (_key : stdgo.GoString);
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.set(_v, _key, _av);
    }
    static public function get(_v:Map_, _key:String):Var {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.get(_v, _key);
    }
    static public function _addKey(_v:Map_, _key:String):Void {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        final _key = (_key : stdgo.GoString);
        stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension._addKey(_v, _key);
    }
    static public function init(_v:Map_):Map_ {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        return stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.init(_v);
    }
    static public function string(_v:Map_):String {
        final _v = (_v : stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_>);
        return stdgo._internal.expvar.Expvar_Map__static_extension.Map__static_extension.string(_v);
    }
}
