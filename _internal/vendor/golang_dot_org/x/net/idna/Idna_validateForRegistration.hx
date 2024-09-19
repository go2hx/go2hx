package _internal.vendor.golang_dot_org.x.net.idna;
function validateForRegistration():_internal.vendor.golang_dot_org.x.net.idna.Idna_Option.Option {
        return function(_o:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_options.T_options>):Void {
            _o._mapping = _internal.vendor.golang_dot_org.x.net.idna.Idna__validateRegistration._validateRegistration;
            _internal.vendor.golang_dot_org.x.net.idna.Idna_strictDomainName.strictDomainName(true)(_o);
            _internal.vendor.golang_dot_org.x.net.idna.Idna_validateLabels.validateLabels(true)(_o);
            _internal.vendor.golang_dot_org.x.net.idna.Idna_verifyDNSLength.verifyDNSLength(true)(_o);
            _internal.vendor.golang_dot_org.x.net.idna.Idna_bidiRule.bidiRule()(_o);
        };
    }
