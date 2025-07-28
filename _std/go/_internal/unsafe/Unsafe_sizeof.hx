package go._internal.unsafe;


function sizeof(x:AnyInterface):GoUIntptr {
	return x.type.size();
}