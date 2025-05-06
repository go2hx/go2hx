package stdgo._internal.go.types;
function newChecker(_conf:stdgo.Ref<stdgo._internal.go.types.Types_config.Config>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>):stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> {
        //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L228"
        if (({
            final value = _conf;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _conf = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_config.Config)) : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L233"
        if (({
            final value = _info;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _info = (stdgo.Go.setRef(({} : stdgo._internal.go.types.Types_info.Info)) : stdgo.Ref<stdgo._internal.go.types.Types_info.Info>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L243"
        return (stdgo.Go.setRef(({ _conf : _conf, _ctxt : (@:checkr _conf ?? throw "null pointer dereference").context, _fset : _fset, _pkg : _pkg, info : _info, _objMap : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_object.Object", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_object.Object", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>) : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>), _impMap : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_t_importkey.T_importKey, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_t_importkey.T_importKey", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_dir", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.types.Types_t_importkey.T_importKey, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : stdgo.GoMap<stdgo._internal.go.types.Types_t_importkey.T_importKey, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) } : stdgo._internal.go.types.Types_checker.Checker)) : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
    }
