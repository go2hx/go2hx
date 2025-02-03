package stdgo.internal.poll;
private function set_acceptFunc(v:stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _2 : stdgo.Error; }):stdgo.GoInt -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_Sockaddr.Sockaddr; var _2 : stdgo.Error; } {
        stdgo._internal.internal.poll.Poll_acceptFunc.acceptFunc = v;
        return v;
    }
