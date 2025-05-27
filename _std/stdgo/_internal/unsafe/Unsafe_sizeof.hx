package stdgo._internal.unsafe;


function sizeof(x:AnyInterface):GoUIntptr {
	return x.type.size();
}