package _internal.vendor.golang_dot_org.x.net.idna;
function validateLabels(_enable:Bool):_internal.vendor.golang_dot_org.x.net.idna.Idna_Option.Option {
        return function(_o:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_options.T_options>):Void {
            if (((_o._mapping == null) && _enable : Bool)) {
                _o._mapping = _internal.vendor.golang_dot_org.x.net.idna.Idna__normalize._normalize;
            };
            _o._trie = _internal.vendor.golang_dot_org.x.net.idna.Idna__trie._trie;
            _o._checkJoiners = _enable;
            _o._checkHyphens = _enable;
            if (_enable) {
                _o._fromPuny = _internal.vendor.golang_dot_org.x.net.idna.Idna__validateFromPunycode._validateFromPunycode;
            } else {
                _o._fromPuny = null;
            };
        };
    }
