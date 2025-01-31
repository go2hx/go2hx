package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.internal.intern.Intern.Value_asInterface) class Value_static_extension {
    @:keep
    @:tdfield
    static public function get( _v:stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value>):stdgo.AnyInterface {
        @:recv var _v:stdgo.Ref<stdgo._internal.internal.intern.Intern_Value.Value> = _v;
        return (@:checkr _v ?? throw "null pointer dereference")._cmpVal;
    }
}
