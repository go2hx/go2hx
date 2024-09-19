package _internal.vendor.golang_dot_org.x.net.idna;
function strictDomainName(_use:Bool):_internal.vendor.golang_dot_org.x.net.idna.Idna_Option.Option {
        return function(_o:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_options.T_options>):Void {
            _o._useSTD3Rules = _use;
        };
    }
