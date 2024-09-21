package _internal.vendor.golang_dot_org.x.net.idna;
function checkJoiners(_enable:Bool):_internal.vendor.golang_dot_org.x.net.idna.Idna_Option.Option {
        return function(_o:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_options.T_options>):Void {
            _o._trie = _internal.vendor.golang_dot_org.x.net.idna.Idna__trie._trie;
            _o._checkJoiners = _enable;
        };
    }
