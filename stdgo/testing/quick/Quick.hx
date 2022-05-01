package stdgo.testing.quick;

import stdgo.StdGoTypes;

function check(_f:AnyInterface, _config:Config)
	return null;

function checkEqual(_f:AnyInterface, _g:AnyInterface, _config:Config):Error
	return null;

@:named
@:structInit
class Config {
	public var maxCount:GoInt = 0;
	public var maxCountScale:GoFloat64 = 0;
	public var rand:Ref<stdgo.math.rand.Rand.Rand> = null;
	public var values:(Slice<stdgo.reflect.Reflect.Value>, Ref<stdgo.math.rand.Rand.Rand>) -> Void;
}
