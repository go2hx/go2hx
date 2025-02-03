package stdgo.internal.poll;
private function set_consume(v:(stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void):(stdgo.Ref<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>>, stdgo.GoInt64) -> Void {
        stdgo._internal.internal.poll.Poll_consume.consume = v;
        return v;
    }
