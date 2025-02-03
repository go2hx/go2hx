package stdgo.runtime;
class StackRecord_static_extension {
    static public function stack(_r:StackRecord):Array<stdgo.GoUIntptr> {
        final _r = (_r : stdgo.Ref<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>);
        return [for (i in stdgo._internal.runtime.Runtime_StackRecord_static_extension.StackRecord_static_extension.stack(_r)) i];
    }
}
