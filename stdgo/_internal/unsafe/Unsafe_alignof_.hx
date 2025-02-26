package stdgo._internal.unsafe;

function alignof_(x:AnyInterface):GoUIntptr {
	return new GoUIntptr(x.type.align());
}