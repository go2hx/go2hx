package _internal.vendor.golang_dot_org.x.net.idna;
function new_(_o:haxe.Rest<_internal.vendor.golang_dot_org.x.net.idna.Idna_Option.Option>):stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile> {
        var _o = new stdgo.Slice<_internal.vendor.golang_dot_org.x.net.idna.Idna_Option.Option>(_o.length, 0, ..._o);
        var _p = (stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile() : _internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>);
        _internal.vendor.golang_dot_org.x.net.idna.Idna__apply._apply((stdgo.Go.setRef(_p._options) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_options.T_options>), _o);
        return _p;
    }
