package stdgo._internal.unsafe;

function slice(_ptr:Dynamic,_len:stdgo.GoInt):Dynamic
	return new stdgo.Slice<GoInt>(0,0);