package _internal.vendor.golang_dot_org.x.net.idna;
function mapForLookup():_internal.vendor.golang_dot_org.x.net.idna.Idna_Option.Option {
        return function(_o:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_options.T_options>):Void {
            _o._mapping = _internal.vendor.golang_dot_org.x.net.idna.Idna__validateAndMap._validateAndMap;
            _internal.vendor.golang_dot_org.x.net.idna.Idna_strictDomainName.strictDomainName(true)(_o);
            _internal.vendor.golang_dot_org.x.net.idna.Idna_validateLabels.validateLabels(true)(_o);
        };
    }
