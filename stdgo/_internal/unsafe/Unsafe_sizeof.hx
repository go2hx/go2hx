package stdgo._internal.unsafe;


function sizeof(x:stdgo.AnyInterface):stdgo.GoUIntptr {
	return x.type.size();
}