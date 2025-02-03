package stdgo.runtime;
class Frames_static_extension {
    static public function next(_ci:Frames):stdgo.Tuple<Frame, Bool> {
        final _ci = (_ci : stdgo.Ref<stdgo._internal.runtime.Runtime_Frames.Frames>);
        return {
            final obj = stdgo._internal.runtime.Runtime_Frames_static_extension.Frames_static_extension.next(_ci);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
