package stdgo.runtime.pprof;
class Profile_static_extension {
    static public function writeTo(_p:Profile, _w:stdgo._internal.io.Io_Writer.Writer, _debug:StdTypes.Int):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
        final _debug = (_debug : stdgo.GoInt);
        return stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.writeTo(_p, _w, _debug);
    }
    static public function remove(_p:Profile, _value:stdgo.AnyInterface):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
        final _value = (_value : stdgo.AnyInterface);
        stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.remove(_p, _value);
    }
    static public function add(_p:Profile, _value:stdgo.AnyInterface, _skip:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
        final _value = (_value : stdgo.AnyInterface);
        final _skip = (_skip : stdgo.GoInt);
        stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.add(_p, _value, _skip);
    }
    static public function count(_p:Profile):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
        return stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.count(_p);
    }
    static public function name(_p:Profile):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
        return stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.name(_p);
    }
}
